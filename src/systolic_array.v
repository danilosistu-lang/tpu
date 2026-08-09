//============================================================================
// 2D Output-Stationary Systolic Array
// File: rtl/systolic_array.v
//
// Architecture:
// - N x N grid of Processing Elements (PEs)
// - Output-stationary: accumulators stay in place, results read out at bottom
// - Activations flow West -> East
// - Weights flow North -> South
// - Diagonal skewing for zero-bubble systolic operation
//============================================================================

`include "tpu_params.v"

module systolic_array #(
    parameter N          = `PE_ARRAY_N,
    parameter WEIGHT_W   = `WEIGHT_WIDTH,
    parameter ACTIV_W    = `ACTIVATION_WIDTH,
    parameter ACCUM_W    = `ACCUM_WIDTH,
    parameter OUTPUT_W   = `OUTPUT_WIDTH
) (
    input  wire                   clk,
    input  wire                   rst_n,
    
    // Global control
    input  wire                   enable,
    input  wire                   load_weight,
    input  wire                   clear_accum,
    input  wire                   signed_mode,
    
    // Weight inputs (N columns, one per PE column at top row, 1D flat vector)
    input  wire [N*WEIGHT_W-1:0]  weight_in,
    
    // Activation inputs (N rows, one per PE row at left column, 1D flat vector)
    input  wire [N*ACTIV_W-1:0]   act_in,
    
    // Accumulator outputs (N rows at bottom, N columns, 1D flat vector)
    output wire [N*N*ACCUM_W-1:0] accum_out
);

    // Unpack weight_in and act_in from 1D flat vectors
    wire [WEIGHT_W-1:0] weight_in_unpacked [N-1:0];
    wire [ACTIV_W-1:0]  act_in_unpacked [N-1:0];
    genvar u_i;
    generate
        for (u_i = 0; u_i < N; u_i = u_i + 1) begin : unpack_inputs
            assign weight_in_unpacked[u_i] = weight_in[u_i*WEIGHT_W +: WEIGHT_W];
            assign act_in_unpacked[u_i] = act_in[u_i*ACTIV_W +: ACTIV_W];
        end
    endgenerate

    //--------------------------------------------------------------------------
    // Internal wires for PE interconnect (unpacked 2D arrays are standard Verilog)
    //--------------------------------------------------------------------------
    wire [WEIGHT_W-1:0]    weight_wires [N-1:0][N-1:0];  // weight[row][col]
    wire [ACTIV_W-1:0]     act_wires [N-1:0][N-1:0];     // act[row][col]
    
    genvar i, j;
    
    //--------------------------------------------------------------------------
    // Generate PE Grid
    //--------------------------------------------------------------------------
    generate
        for (i = 0; i < N; i = i + 1) begin : pe_rows
            for (j = 0; j < N; j = j + 1) begin : pe_cols
                
                // Determine weight input for this PE
                // Top row gets external weight, others get from PE above
                wire [WEIGHT_W-1:0] pe_weight_in;
                assign pe_weight_in = (i == 0) ? weight_in_unpacked[j] : weight_wires[i-1][j];
                
                // Determine activation input for this PE
                // Left column gets external act, others get from PE to the left
                wire [ACTIV_W-1:0] pe_act_in;
                assign pe_act_in = (j == 0) ? act_in_unpacked[i] : act_wires[i][j-1];
                
                // Instantiate PE
                pe #(
                    .WEIGHT_W   (WEIGHT_W),
                    .ACTIV_W    (ACTIV_W),
                    .ACCUM_W    (ACCUM_W),
                    .OUTPUT_W   (OUTPUT_W)
                ) u_pe (
                    .clk              (clk),
                    .rst_n            (rst_n),
                    .enable           (enable),
                    .act_in_west      (pe_act_in),
                    .act_out_east     (act_wires[i][j]),
                    .weight_in_north  (pe_weight_in),
                    .weight_out_south (weight_wires[i][j]),
                    .load_weight      (load_weight),
                    .clear_accum      (clear_accum),
                    .signed_mode      (signed_mode),
                    .accum_out        (accum_out[(i*N + j)*ACCUM_W +: ACCUM_W])
                );
                
            end
        end
    endgenerate

endmodule
