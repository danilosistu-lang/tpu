//============================================================================
// Buffer Skewing Unit for Zero-Bubble Systolic Operation
// File: rtl/buffer_skew.v
//
// Purpose:
// - Implements diagonal delay chains to skew input matrices
// - Ensures data arrives at each PE at the correct cycle for systolic flow
// - Eliminates bubble cycles during matrix multiplication
//
// For an N x N array:
// - Activation skew: Row i is delayed by i cycles
// - Weight skew: Column j is delayed by j cycles (optional, depending on architecture)
//============================================================================

`include "tpu_params.v"

module buffer_skew #(
    parameter N          = `PE_ARRAY_N,
    parameter DATA_W     = `ACTIVATION_WIDTH
) (
    input  wire                 clk,
    input  wire                 rst_n,
    input  wire                 enable,
    
    // Raw input (one per row/column)
    input  wire [DATA_W-1:0]    data_in [N-1:0],
    
    // Skewed output with diagonal delays
    output wire [DATA_W-1:0]    data_out [N-1:0]
);

    //--------------------------------------------------------------------------
    // Internal delay registers for each row
    // Row i has i stages of delay
    //--------------------------------------------------------------------------
    reg [DATA_W-1:0] delay_regs [N-1:0][N-1:0];  // delay_regs[row][stage]
    wire [DATA_W-1:0] stage_output [N-1:0][N-1:0];
    
    genvar i, j;
    
    //--------------------------------------------------------------------------
    // Generate delay chains for each row
    //--------------------------------------------------------------------------
    generate
        for (i = 0; i < N; i = i + 1) begin : skew_rows
            // Stage 0: either direct input or first delay stage
            always @(posedge clk or negedge rst_n) begin
                if (!rst_n) begin
                    delay_regs[i][0] <= 'b0;
                end else if (enable) begin
                    delay_regs[i][0] <= data_in[i];
                end
            end
            
            // Additional delay stages for rows that need them
            for (j = 1; j < N; j = j + 1) begin : delay_stages
                if (j <= i) begin
                    // This row needs this delay stage
                    always @(posedge clk or negedge rst_n) begin
                        if (!rst_n) begin
                            delay_regs[i][j] <= 'b0;
                        end else if (enable) begin
                            delay_regs[i][j] <= delay_regs[i][j-1];
                        end
                    end
                end
            end
            
            // Output is taken from the appropriate delay stage
            // Row i outputs from stage i (or stage 0 if i=0)
            assign data_out[i] = (i == 0) ? data_in[i] : delay_regs[i][i];
        end
    endgenerate

endmodule


//============================================================================
// Weight/Activation Input Buffer with Skewing
// File: rtl/input_buffer.v
// 
// Combines SRAM-like buffering with skew logic for complete input staging
//============================================================================

module input_buffer #(
    parameter N              = `PE_ARRAY_N,
    parameter DATA_W         = `ACTIVATION_WIDTH,
    parameter BUFFER_DEPTH   = `ACTIV_BUFFER_DEPTH,
    parameter ADDR_W         = `clog2(`ACTIV_BUFFER_DEPTH)
) (
    input  wire                 clk,
    input  wire                 rst_n,
    input  wire                 enable,
    
    // Host interface for loading buffer
    input  wire                 load_en,
    input  wire [ADDR_W-1:0]    load_addr,
    input  wire [DATA_W-1:0]    load_data,
    
    // Output to systolic array (skewed)
    output wire [DATA_W-1:0]    buffer_out [N-1:0]
);

    //--------------------------------------------------------------------------
    // Simple register file based buffer (can be replaced with true SRAM)
    //--------------------------------------------------------------------------
    reg [DATA_W-1:0] buffer_mem [BUFFER_DEPTH-1:0];
    reg [DATA_W-1:0] load_reg [N-1:0];  // Load staging registers
    
    integer i;
    integer idx;
    
    // Load data into buffer
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (idx = 0; idx < BUFFER_DEPTH; idx = idx + 1)
                buffer_mem[idx] <= 'b0;
        end else if (load_en) begin
            buffer_mem[load_addr] <= load_data;
        end
    end
    
    // Read from buffer and stage for skewed output
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < N; i = i + 1)
                load_reg[i] <= 'b0;
        end else if (enable) begin
            // Sequential read pattern for systolic operation
            // This is simplified - actual implementation would have more complex addressing
            for (i = 0; i < N; i = i + 1)
                load_reg[i] <= buffer_mem[i];
        end
    end
    
    // Connect to skew unit
    buffer_skew #(
        .N(N),
        .DATA_W(DATA_W)
    ) u_skew (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .data_in(load_reg),
        .data_out(buffer_out)
    );

endmodule
