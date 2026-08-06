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
    
    // Weight inputs (N columns, one per PE column at top row)
    input  wire [WEIGHT_W-1:0]    weight_in [N-1:0],
    
    // Activation inputs (N rows, one per PE row at left column)
    input  wire [ACTIV_W-1:0]     act_in [N-1:0],
    
    // Accumulator outputs (N rows at bottom, N columns)
    output wire [ACCUM_W-1:0]     accum_out [N-1:0][N-1:0]
);

    //--------------------------------------------------------------------------
    // Internal wires for PE interconnect
    //--------------------------------------------------------------------------
    wire [WEIGHT_W-1:0]    weight_wires [N-1:0][N-1:0];  // weight[row][col]
    wire [ACTIV_W-1:0]     act_wires [N-1:0][N-1:0];     // act[row][col]
    wire [N-1:0][N-1:0]    pe_enable;
    wire [N-1:0][N-1:0]    pe_load_weight;
    wire [N-1:0][N-1:0]    pe_clear_accum;
    
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
                assign pe_weight_in = (i == 0) ? weight_in[j] : weight_wires[i-1][j];
                
                // Determine activation input for this PE
                // Left column gets external act, others get from PE to the left
                wire [ACTIV_W-1:0] pe_act_in;
                assign pe_act_in = (j == 0) ? act_in[i] : act_wires[i][j-1];
                
                // Store weight output (to PE below)
                assign weight_wires[i][j] = pe_weight_in;  // Will be driven by PE
                
                // Store activation output (to PE right)
                assign act_wires[i][j] = pe_act_in;  // Will be driven by PE
                
                // Global control signals to all PEs
                assign pe_enable[i][j] = enable;
                assign pe_load_weight[i][j] = load_weight;
                assign pe_clear_accum[i][j] = clear_accum;
                
                // Instantiate PE
                pe #(
                    .WEIGHT_W   (WEIGHT_W),
                    .ACTIV_W    (ACTIV_W),
                    .ACCUM_W    (ACCUM_W),
                    .OUTPUT_W   (OUTPUT_W)
                ) u_pe (
                    .clk              (clk),
                    .rst_n            (rst_n),
                    .enable           (pe_enable[i][j]),
                    .act_in_west      (pe_act_in),
                    .act_out_east     (act_wires[i][j]),
                    .weight_in_north  (pe_weight_in),
                    .weight_out_south (weight_wires[i][j]),
                    .load_weight      (pe_load_weight[i][j]),
                    .clear_accum      (pe_clear_accum[i][j]),
                    .signed_mode      (signed_mode),
                    .accum_out        (accum_out[i][j])
                );
                
            end
        end
    endgenerate

endmodule
