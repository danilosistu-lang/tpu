//============================================================================
// Central Control & FSM Engine for TPU Accelerator
// File: rtl/control_fsm.v
//
// Responsibilities:
// - Command decoding from host interface
// - Stream setup for weight/activation loading
// - Execution trigger and data-shifting state management
// - Execution-done interrupt generation
// - Clock gating control for power optimization
//============================================================================

`include "tpu_params.v"

module control_fsm #(
    parameter N          = `PE_ARRAY_N,
    parameter WEIGHT_W   = `WEIGHT_WIDTH,
    parameter ACTIV_W    = `ACTIVATION_WIDTH,
    parameter ACCUM_W    = `ACCUM_WIDTH
) (
    input  wire                 clk,
    input  wire                 rst_n,
    
    // Host command interface
    input  wire [2:0]           cmd_opcode,     // Command from host
    input  wire                 cmd_valid,      // Command valid
    output wire                 cmd_ready,      // Ready to accept command
    input  wire [31:0]          cmd_arg,        // Command argument (e.g., matrix size)
    
    // Status outputs
    output wire [2:0]           fsm_state,
    output wire                 busy,
    output wire                 done_pulse,     // Single-cycle done pulse
    output wire                 interrupt,      // Interrupt to host
    
    // Control signals to systolic array
    output wire                 sa_enable,
    output wire                 sa_load_weight,
    output wire                 sa_clear_accum,
    
    // Control signals to buffers
    output wire                 buf_load_en,
    output wire [7:0]           buf_addr,
    
    // Control signals to activation unit
    output wire [1:0]           act_type,
    output wire                 act_enable,
    
    // Data path control
    output wire                 skew_enable,
    output wire                 drain_enable
);

    //--------------------------------------------------------------------------
    // FSM State Register
    //--------------------------------------------------------------------------
    reg [2:0] state_reg;
    reg [2:0] next_state;
    
    // Cycle counter for timing control
    reg [7:0] cycle_count;
    reg [7:0] matrix_size;  // N value for current operation
    
    // Command handshake
    reg cmd_ready_reg;
    
    // Done pulse generation
    reg done_pulse_reg;
    
    assign fsm_state = state_reg;
    assign busy = (state_reg != `FSM_IDLE);
    assign done_pulse = done_pulse_reg;
    assign interrupt = done_pulse_reg;
    assign cmd_ready = cmd_ready_reg;
    
    //--------------------------------------------------------------------------
    // FSM State Transitions
    //--------------------------------------------------------------------------
    always @(*) begin
        next_state = state_reg;
        case (state_reg)
            `FSM_IDLE: begin
                if (cmd_valid && cmd_ready_reg) begin
                    case (cmd_opcode)
                        3'b001: next_state = `FSM_LOAD_W;   // Load weights
                        3'b010: next_state = `FSM_LOAD_A;   // Load activations
                        3'b011: next_state = `FSM_COMPUTE;  // Start computation
                        default: next_state = `FSM_IDLE;
                    endcase
                end
            end
            
            `FSM_LOAD_W: begin
                // Stay in load weight state until all weights loaded
                if (cycle_count >= matrix_size) begin
                    next_state = `FSM_IDLE;
                end else begin
                    next_state = `FSM_LOAD_W;
                end
            end
            
            `FSM_LOAD_A: begin
                if (cycle_count >= matrix_size) begin
                    next_state = `FSM_IDLE;
                end else begin
                    next_state = `FSM_LOAD_A;
                end
            end
            
            `FSM_SKEW: begin
                // One cycle for skew setup
                next_state = `FSM_COMPUTE;
            end
            
            `FSM_COMPUTE: begin
                // Compute for N cycles (matrix dimension)
                if (cycle_count >= matrix_size + N - 1) begin
                    next_state = `FSM_DRAIN;
                end else begin
                    next_state = `FSM_COMPUTE;
                end
            end
            
            `FSM_DRAIN: begin
                // Drain outputs
                next_state = `FSM_POSTPROC;
            end
            
            `FSM_POSTPROC: begin
                // Apply activation functions
                next_state = `FSM_DONE;
            end
            
            `FSM_DONE: begin
                // Signal completion and return to idle
                next_state = `FSM_IDLE;
            end
            
            default: next_state = `FSM_IDLE;
        endcase
    end
    
    //--------------------------------------------------------------------------
    // State Register Update
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_reg <= `FSM_IDLE;
        end else begin
            state_reg <= next_state;
        end
    end
    
    //--------------------------------------------------------------------------
    // Cycle Counter
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cycle_count <= 'b0;
        end else if (state_reg == `FSM_IDLE && cmd_valid) begin
            cycle_count <= 'b0;
            matrix_size <= cmd_arg[7:0];  // Extract N from command arg
        end else if (busy) begin
            cycle_count <= cycle_count + 1;
        end
    end
    
    //--------------------------------------------------------------------------
    // Command Ready Logic
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cmd_ready_reg <= 1'b1;
        end else begin
            cmd_ready_reg <= (state_reg == `FSM_IDLE);
        end
    end
    
    //--------------------------------------------------------------------------
    // Done Pulse Generation
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            done_pulse_reg <= 1'b0;
        end else begin
            done_pulse_reg <= (next_state == `FSM_IDLE && state_reg == `FSM_DONE);
        end
    end
    
    //--------------------------------------------------------------------------
    // Output Control Signals
    //--------------------------------------------------------------------------
    assign sa_enable = (state_reg == `FSM_COMPUTE);
    assign sa_load_weight = (state_reg == `FSM_LOAD_W);
    assign sa_clear_accum = (state_reg == `FSM_LOAD_W);  // Clear before loading new weights
    
    assign buf_load_en = (state_reg == `FSM_LOAD_W || state_reg == `FSM_LOAD_A);
    assign buf_addr = cycle_count;
    
    assign act_type = cmd_arg[17:16];  // Activation type in command arg
    assign act_enable = (state_reg == `FSM_POSTPROC);
    
    assign skew_enable = (state_reg == `FSM_SKEW);
    assign drain_enable = (state_reg == `FSM_DRAIN);

endmodule
