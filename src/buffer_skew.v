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
    
    // Raw input (one per row/column, flattened to 1D vector)
    input  wire [N*DATA_W-1:0]  data_in,
    
    // Skewed output with diagonal delays
    output wire [N*DATA_W-1:0]  data_out
);

    // Unpack 1D input port to internal unpacked array
    wire [DATA_W-1:0] data_in_unpacked [N-1:0];
    genvar u_i;
    generate
        for (u_i = 0; u_i < N; u_i = u_i + 1) begin : unpack_data_in
            assign data_in_unpacked[u_i] = data_in[u_i*DATA_W +: DATA_W];
        end
    endgenerate

    //--------------------------------------------------------------------------
    // Internal delay registers for each row
    // Row i has i stages of delay
    //--------------------------------------------------------------------------
    reg [DATA_W-1:0] delay_regs [N-1:0][N-1:0];  // delay_regs[row][stage]
    
    genvar i, j;
    
    //--------------------------------------------------------------------------
    // Generate delay chains for each row
    //--------------------------------------------------------------------------
    generate
        for (i = 0; i < N; i = i + 1) begin : skew_rows
            // Stage 0: first delay stage
            always @(posedge clk or negedge rst_n) begin
                if (!rst_n) begin
                    delay_regs[i][0] <= 'b0;
                end else if (enable) begin
                    delay_regs[i][0] <= data_in_unpacked[i];
                end
            end
            
            // Additional delay stages for rows that need them
            // Only generate stages j where j <= i (row i needs i+1 stages total, indexed 0 to i)
            for (j = 1; j < N; j = j + 1) begin : delay_stages
                if (j <= i) begin : valid_stage
                    always @(posedge clk or negedge rst_n) begin
                        if (!rst_n) begin
                            delay_regs[i][j] <= 'b0;
                        end else if (enable) begin
                            delay_regs[i][j] <= delay_regs[i][j-1];
                        end
                    end
                end else begin : unused_stage
                    // For stages beyond what this row needs, tie to zero
                    always @(posedge clk or negedge rst_n) begin
                        if (!rst_n) begin
                            delay_regs[i][j] <= 'b0;
                        end
                        // Otherwise hold value (never enabled)
                    end
                end
            end
            
            // Output is taken from the appropriate delay stage
            // Row i outputs from stage i (or direct input if i=0)
            assign data_out[i*DATA_W +: DATA_W] = (i == 0) ? data_in_unpacked[i] : delay_regs[i][i];
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
    
    // Output to systolic array (skewed, flattened to 1D vector)
    output wire [N*DATA_W-1:0]  buffer_out
);

    //--------------------------------------------------------------------------
    // Simple register file based buffer (can be replaced with true SRAM)
    //--------------------------------------------------------------------------
    reg [DATA_W-1:0] buffer_mem [BUFFER_DEPTH-1:0];
    reg [DATA_W-1:0] load_reg [N-1:0];  // Load staging registers
    
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
            for (idx = 0; idx < N; idx = idx + 1)
                load_reg[idx] <= 'b0;
        end else if (enable) begin
            // Sequential read pattern for systolic operation
            // This is simplified - actual implementation would have more complex addressing
            for (idx = 0; idx < N; idx = idx + 1)
                load_reg[idx] <= buffer_mem[idx];
        end
    end
    
    // Pack load_reg into a flat 1D vector
    wire [N*DATA_W-1:0] load_reg_flat;
    genvar reg_i;
    generate
        for (reg_i = 0; reg_i < N; reg_i = reg_i + 1) begin : pack_load_reg
            assign load_reg_flat[reg_i*DATA_W +: DATA_W] = load_reg[reg_i];
        end
    endgenerate

    // Connect to skew unit
    buffer_skew #(
        .N(N),
        .DATA_W(DATA_W)
    ) u_skew (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .data_in(load_reg_flat),
        .data_out(buffer_out)
    );

endmodule
