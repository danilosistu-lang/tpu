//============================================================================
// Processing Element (PE) for TPU-style Systolic Array
// File: rtl/pe.v
// 
// Features:
// - Multiply-Accumulate (MAC) unit with signed/unsigned support
// - Double-buffered weight register
// - Accumulator with configurable bit width
// - Data forwarding for systolic propagation (east and south)
//============================================================================

`include "tpu_params.v"

module pe #(
    parameter WEIGHT_W = `WEIGHT_WIDTH,
    parameter ACTIV_W  = `ACTIVATION_WIDTH,
    parameter ACCUM_W  = `ACCUM_WIDTH,
    parameter OUTPUT_W = `OUTPUT_WIDTH
) (
    input  wire                 clk,
    input  wire                 rst_n,
    input  wire                 enable,         // PE enable signal
    
    // West interface (activation in from left)
    input  wire [ACTIV_W-1:0]   act_in_west,
    output wire [ACTIV_W-1:0]   act_out_east,
    
    // North interface (weight in from top)
    input  wire [WEIGHT_W-1:0]  weight_in_north,
    output wire [WEIGHT_W-1:0]  weight_out_south,
    
    // Control signals
    input  wire                 load_weight,    // Load weight into buffer
    input  wire                 clear_accum,    // Clear accumulator
    input  wire                 signed_mode,    // Signed arithmetic mode (runtime control)
    
    // Accumulator output (to post-processing or next stage)
    output wire [ACCUM_W-1:0]   accum_out
);

    //--------------------------------------------------------------------------
    // Internal Registers
    //--------------------------------------------------------------------------
    reg [WEIGHT_W-1:0]  weight_reg;       // Double-buffered weight storage
    reg [ACTIV_W-1:0]   act_delay;        // Activation delay register
    reg [ACCUM_W-1:0]   accum_reg;        // Accumulator register
    
    //--------------------------------------------------------------------------
    // Weight Buffer (Double-buffered)
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            weight_reg <= 'b0;
        end else if (enable && load_weight) begin
            weight_reg <= weight_in_north;
        end
    end
    
    // Weight output passes through when not loading, or holds buffered value
    assign weight_out_south = load_weight ? weight_in_north : weight_reg;
    
    //--------------------------------------------------------------------------
    // Activation Path (Combinational pass-through with optional delay)
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            act_delay <= 'b0;
        end else if (enable) begin
            act_delay <= act_in_west;
        end
    end
    
    assign act_out_east = act_in_west;  // Direct pass-through for systolic flow
    
    //--------------------------------------------------------------------------
    // MAC Unit (Multiply-Accumulate) - Runtime signed/unsigned selection
    //--------------------------------------------------------------------------
    wire [ACTIV_W + WEIGHT_W - 1:0] mult_result_raw;
    wire signed [ACTIV_W + WEIGHT_W - 1:0] mult_result_signed;
    wire [ACCUM_W-1:0] mult_result_extended;
    
    // Always compute both signed and unsigned, select at runtime
    assign mult_result_raw = act_delay * weight_reg;
    assign mult_result_signed = $signed(act_delay) * $signed(weight_reg);
    
    // Select based on runtime signed_mode signal
    assign mult_result_extended = signed_mode ? 
        {{(ACCUM_W - (ACTIV_W + WEIGHT_W)){mult_result_signed[ACTIV_W + WEIGHT_W - 1]}}, mult_result_signed} :
        {{(ACCUM_W - (ACTIV_W + WEIGHT_W)){1'b0}}, mult_result_raw};
    
    //--------------------------------------------------------------------------
    // Accumulator
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            accum_reg <= 'b0;
        end else if (enable && clear_accum) begin
            accum_reg <= 'b0;
        end else if (enable) begin
            accum_reg <= accum_reg + mult_result_extended;
        end
    end
    
    assign accum_out = accum_reg;

endmodule
