//============================================================================
// TPU Top-Level Module
// File: rtl/tpu_top.v
//
// Complete TPU-style Matrix Multiplication Accelerator integrating:
// - N x N Systolic Array of PEs
// - Input Buffer & Skewing Units (weights and activations)
// - Central Control FSM
// - Post-Processing Activation Unit
// - Host Command Interface
//============================================================================

`include "tpu_params.v"

module tpu_top #(
    parameter N          = `PE_ARRAY_N,
    parameter WEIGHT_W   = `WEIGHT_WIDTH,
    parameter ACTIV_W    = `ACTIVATION_WIDTH,
    parameter ACCUM_W    = `ACCUM_WIDTH,
    parameter OUTPUT_W   = `OUTPUT_WIDTH,
    parameter SCALE_W    = `QUANT_SCALE_WIDTH,
    parameter SHIFT_W    = `QUANT_SHIFT_WIDTH
) (
    input  wire                 clk,
    input  wire                 rst_n,
    
    //==========================================================================
    // Host Command Interface
    //==========================================================================
    input  wire [2:0]           cmd_opcode,     // Command opcode
    input  wire                 cmd_valid,      // Command valid
    output wire                 cmd_ready,      // Ready for command
    input  wire [31:0]          cmd_arg,        // Command argument
    
    //==========================================================================
    // Weight Data Interface (for loading weight matrix)
    //==========================================================================
    input  wire                 weight_load_en,
    input  wire [7:0]           weight_addr,    // Address in weight buffer (8 bits for compatibility)
    input  wire [WEIGHT_W-1:0]  weight_data,    // Weight data to load
    
    //==========================================================================
    // Activation Data Interface (for loading activation matrix)
    //==========================================================================
    input  wire                 activ_load_en,
    input  wire [7:0]           activ_addr,     // Address in activation buffer (8 bits for compatibility)
    input  wire [ACTIV_W-1:0]   activ_data,     // Activation data to load
    
    //==========================================================================
    // Quantization Parameter Interface
    //==========================================================================
    input  wire [SCALE_W-1:0]   quant_scale,    // Scale factor for quantization
    input  wire [SHIFT_W-1:0]   quant_shift,    // Shift amount for quantization
    input  wire [7:0]           leaky_slope,    // LeakyReLU slope parameter
    
    //==========================================================================
    // Output Data Interface (read results)
    //==========================================================================
    output wire                 out_valid,      // Output data valid
    output wire [7:0]           out_addr,       // Output address/index
    output wire [N*OUTPUT_W-1:0] out_data,      // Output data (flattened N lanes)
    
    //==========================================================================
    // Status & Interrupts
    //==========================================================================
    output wire                 busy,           // Accelerator busy
    output wire                 done,           // Operation complete
    output wire                 interrupt       // Interrupt signal
);

    //--------------------------------------------------------------------------
    // Internal wires for module interconnect
    //--------------------------------------------------------------------------
    wire [2:0]          fsm_state;
    wire                sa_enable;
    wire                sa_load_weight;
    wire                sa_clear_accum;
    wire                buf_load_en;
    wire [7:0]          buf_addr;
    wire [1:0]          act_type;
    wire                act_enable;
    wire                skew_enable;
    wire                drain_enable;
    
    // Systolic array interfaces (flattened)
    wire [N*WEIGHT_W-1:0] weight_to_sa;
    wire [N*ACTIV_W-1:0]  activ_to_sa;
    wire [N*N*ACCUM_W-1:0] accum_from_sa;
    
    // Activation unit interface (flattened)
    wire [N*OUTPUT_W-1:0] activated_out;
    wire                act_done;
    
    // Buffer outputs (flattened)
    wire [N*WEIGHT_W-1:0] weight_buffer_out;
    wire [N*ACTIV_W-1:0]  activ_buffer_out;
    
    //--------------------------------------------------------------------------
    // Control FSM Instance
    //--------------------------------------------------------------------------
    control_fsm #(
        .N(N),
        .WEIGHT_W(WEIGHT_W),
        .ACTIV_W(ACTIV_W),
        .ACCUM_W(ACCUM_W)
    ) u_control_fsm (
        .clk(clk),
        .rst_n(rst_n),
        
        // Host commands
        .cmd_opcode(cmd_opcode),
        .cmd_valid(cmd_valid),
        .cmd_ready(cmd_ready),
        .cmd_arg(cmd_arg),
        
        // Status
        .fsm_state(fsm_state),
        .busy(busy),
        .done_pulse(done),
        .interrupt(interrupt),
        
        // Systolic array control
        .sa_enable(sa_enable),
        .sa_load_weight(sa_load_weight),
        .sa_clear_accum(sa_clear_accum),
        
        // Buffer control
        .buf_load_en(buf_load_en),
        .buf_addr(buf_addr),
        
        // Activation unit control
        .act_type(act_type),
        .act_enable(act_enable),
        
        // Data path control
        .skew_enable(skew_enable),
        .drain_enable(drain_enable)
    );
    
    //--------------------------------------------------------------------------
    // Weight Buffer with Skewing
    //--------------------------------------------------------------------------
    input_buffer #(
        .N(N),
        .DATA_W(WEIGHT_W),
        .BUFFER_DEPTH(`WEIGHT_BUFFER_DEPTH)
    ) u_weight_buffer (
        .clk(clk),
        .rst_n(rst_n),
        .enable(sa_enable),
        .load_en(weight_load_en || (buf_load_en && cmd_opcode == 3'b001)),
        .load_addr(weight_addr),
        .load_data(weight_data),
        .buffer_out(weight_buffer_out)
    );
    
    //--------------------------------------------------------------------------
    // Activation Buffer with Skewing
    //--------------------------------------------------------------------------
    input_buffer #(
        .N(N),
        .DATA_W(ACTIV_W),
        .BUFFER_DEPTH(`ACTIV_BUFFER_DEPTH)
    ) u_activ_buffer (
        .clk(clk),
        .rst_n(rst_n),
        .enable(sa_enable),
        .load_en(activ_load_en || (buf_load_en && cmd_opcode == 3'b010)),
        .load_addr(activ_addr),
        .load_data(activ_data),
        .buffer_out(activ_buffer_out)
    );
    
    //--------------------------------------------------------------------------
    // Skew units for diagonal data delivery
    //--------------------------------------------------------------------------
    buffer_skew #(
        .N(N),
        .DATA_W(WEIGHT_W)
    ) u_weight_skew (
        .clk(clk),
        .rst_n(rst_n),
        .enable(skew_enable),
        .data_in(weight_buffer_out),
        .data_out(weight_to_sa)
    );
    
    //--------------------------------------------------------------------------
    // Skew units for diagonal data delivery
    //--------------------------------------------------------------------------
    buffer_skew #(
        .N(N),
        .DATA_W(ACTIV_W)
    ) u_activ_skew (
        .clk(clk),
        .rst_n(rst_n),
        .enable(skew_enable),
        .data_in(activ_buffer_out),
        .data_out(activ_to_sa)
    );
    
    //--------------------------------------------------------------------------
    // Systolic Array
    //--------------------------------------------------------------------------
    systolic_array #(
        .N(N),
        .WEIGHT_W(WEIGHT_W),
        .ACTIV_W(ACTIV_W),
        .ACCUM_W(ACCUM_W),
        .OUTPUT_W(OUTPUT_W)
    ) u_systolic_array (
        .clk(clk),
        .rst_n(rst_n),
        
        // Control
        .enable(sa_enable),
        .load_weight(sa_load_weight),
        .clear_accum(sa_clear_accum),
        .signed_mode(cmd_arg[18]),  // Signed mode bit in cmd_arg
        
        // Data inputs
        .weight_in(weight_to_sa),
        .act_in(activ_to_sa),
        
        // Accumulator outputs (to activation unit)
        .accum_out(accum_from_sa)
    );
    
    //--------------------------------------------------------------------------
    // Post-Processing Activation Unit
    //--------------------------------------------------------------------------
    // For simplicity, we process one row of outputs at a time (e.g. column 0)
    // row_accum is flattened to 1D vector N*ACCUM_W bits.
    wire [N*ACCUM_W-1:0] row_accum;
    
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : row_select
            // Extract accum_out of PE(i, 0)
            assign row_accum[i*ACCUM_W +: ACCUM_W] = accum_from_sa[(i*N)*ACCUM_W +: ACCUM_W];
        end
    endgenerate
    
    activation_unit #(
        .N(N),
        .ACCUM_W(ACCUM_W),
        .OUTPUT_W(OUTPUT_W),
        .SCALE_W(SCALE_W),
        .SHIFT_W(SHIFT_W)
    ) u_activation_unit (
        .clk(clk),
        .rst_n(rst_n),
        .enable(act_enable),
        
        // Inputs from systolic array (one row)
        .accum_in(row_accum),
        
        // Control
        .act_type(act_type),
        .quant_scale(quant_scale),
        .quant_shift(quant_shift),
        .leaky_slope(leaky_slope),
        .signed_out(cmd_arg[18]),
        
        // Outputs
        .activated_out(activated_out),
        .done(act_done)
    );
    
    //--------------------------------------------------------------------------
    // Output Register & Valid Signal
    //--------------------------------------------------------------------------
    reg out_valid_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_valid_reg <= 1'b0;
        end else begin
            out_valid_reg <= act_done;
        end
    end
    assign out_valid = out_valid_reg;
    assign out_addr = buf_addr;
    assign out_data = activated_out;

endmodule
