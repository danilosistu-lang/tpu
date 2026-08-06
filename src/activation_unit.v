//============================================================================
// Post-Processing Vector Activation Unit
// File: rtl/activation_unit.v
//
// Features:
// - SIMD vector processing for systolic array outputs
// - Supports ReLU, LeakyReLU, and Quantized Scaling/Shifting
// - Configurable for INT8/INT16 output formats
//============================================================================

`include "tpu_params.v"

module activation_unit #(
    parameter N              = `PE_ARRAY_N,
    parameter ACCUM_W        = `ACCUM_WIDTH,
    parameter OUTPUT_W       = `OUTPUT_WIDTH,
    parameter SCALE_W        = `QUANT_SCALE_WIDTH,
    parameter SHIFT_W        = `QUANT_SHIFT_WIDTH
) (
    input  wire                 clk,
    input  wire                 rst_n,
    input  wire                 enable,
    
    // Accumulator inputs from systolic array (N parallel lanes)
    input  wire [ACCUM_W-1:0]   accum_in [N-1:0],
    
    // Activation function control
    input  wire [1:0]           act_type,       // ACT_NONE, ACT_RELU, ACT_LEAKYRELU, ACT_QUANT
    
    // Quantization parameters (for ACT_QUANT mode)
    input  wire [SCALE_W-1:0]   quant_scale,    // Scale factor (fixed-point)
    input  wire [SHIFT_W-1:0]   quant_shift,    // Right shift amount
    input  wire [7:0]           leaky_slope,    // LeakyReLU slope (numerator of x/128)
    
    // Signed output mode
    input  wire                 signed_out,
    
    // Activated outputs
    output wire [OUTPUT_W-1:0]  activated_out [N-1:0],
    
    // Status
    output wire                 done
);

    genvar i;
    
    //--------------------------------------------------------------------------
    // Per-lane activation processing
    //--------------------------------------------------------------------------
    reg [ACCUM_W-1:0] relu_result [N-1:0];
    reg [ACCUM_W-1:0] leakyrelu_result [N-1:0];
    reg [OUTPUT_W-1:0] quant_result [N-1:0];
    reg [OUTPUT_W-1:0] final_mux_out [N-1:0];
    
    generate
        for (i = 0; i < N; i = i + 1) begin : activation_lanes
            
            //--------------------------------------------------------------
            // ReLU: max(0, x) - combinational
            //--------------------------------------------------------------
            always @(*) begin
                relu_result[i] = (accum_in[i][ACCUM_W-1]) ? 'b0 : accum_in[i];
            end
            
            //--------------------------------------------------------------
            // LeakyReLU: x if x >= 0, else (x * slope) / 128
            //--------------------------------------------------------------
            wire signed [ACCUM_W-1:0] accum_signed;
            wire signed [ACCUM_W+7:0] leaky_mult;
            assign accum_signed = $signed(accum_in[i]);
            assign leaky_mult = accum_signed * $signed(leaky_slope);
            
            always @(*) begin
                leakyrelu_result[i] = accum_in[i][ACCUM_W-1] ? 
                    leaky_mult[ACCUM_W+6:7] : accum_in[i];
            end
            
            //--------------------------------------------------------------
            // Quantized Scaling: ((accum * scale) >> shift)
            //--------------------------------------------------------------
            wire signed [ACCUM_W+SCALE_W-1:0] scale_mult;
            wire [ACCUM_W+SCALE_W-1:0] scale_result;
            
            assign scale_mult = $signed(accum_in[i]) * $signed(quant_scale);
            assign scale_result = quant_shift > 0 ? 
                (scale_mult >>> quant_shift) : scale_mult;
            
            // Saturate to OUTPUT_W range - combinational
            always @(*) begin
                if (signed_out) begin
                    // Signed saturation
                    if (scale_result[ACCUM_W+SCALE_W-1:OUTPUT_W] !== 'b0 && 
                        scale_result[ACCUM_W+SCALE_W-1:OUTPUT_W] !== 'hFFFFFFFF) begin
                        quant_result[i] = scale_result[ACCUM_W+SCALE_W-1] ? 
                            -(1 << (OUTPUT_W-1)) : (1 << (OUTPUT_W-1)) - 1;
                    end else begin
                        quant_result[i] = scale_result[OUTPUT_W-1:0];
                    end
                end else begin
                    // Unsigned saturation
                    if (scale_result[ACCUM_W+SCALE_W-1:OUTPUT_W] !== 'b0) begin
                        quant_result[i] = {OUTPUT_W{1'b1}};
                    end else begin
                        quant_result[i] = scale_result[OUTPUT_W-1:0];
                    end
                end
            end
            
            //--------------------------------------------------------------
            // Output Multiplexer based on activation type - combinational
            //--------------------------------------------------------------
            always @(*) begin
                case (act_type)
                    `ACT_NONE:      final_mux_out[i] = accum_in[i][OUTPUT_W-1:0];
                    `ACT_RELU:      final_mux_out[i] = relu_result[i][OUTPUT_W-1:0];
                    `ACT_LEAKYRELU: final_mux_out[i] = leakyrelu_result[i][OUTPUT_W-1:0];
                    `ACT_QUANT:     final_mux_out[i] = quant_result[i];
                    default:        final_mux_out[i] = accum_in[i][OUTPUT_W-1:0];
                endcase
            end
            
        end
    endgenerate
    
    // Convert reg arrays back to wire for output assignment
    assign activated_out = final_mux_out;
    
    //--------------------------------------------------------------------------
    // Done signal (combinational for simplicity, could be pipelined)
    //--------------------------------------------------------------------------
    reg done_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            done_reg <= 1'b0;
        end else begin
            done_reg <= enable;
        end
    end
    assign done = done_reg;

endmodule
