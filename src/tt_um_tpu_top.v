//============================================================================
// Tiny Tapeout Wrapper for TPU-style Matrix Multiplication Accelerator
// File: src/tt_um_tpu_top.v
//
// This wrapper adapts the TPU top module for Tiny Tapeout's pin constraints:
// - 8 input pins (ui_in)
// - 8 output pins (uo_out)  
// - 8 bidirectional pins (uio_in/uio_out)
//
// Includes a Serial-to-Parallel shift register to load the 64-bit config word
//============================================================================

`default_nettype none

`include "tpu_params.v"

module tt_um_tpu_top (
    input  wire [7:0] ui_in,    // [0]=serial_data_in, [1]=cfg_wr_pulse, [2]=stream_valid
    output wire [7:0] uo_out,   // [7:0]=matrix output lane 0
    input  wire [7:0] uio_in,   // unused (set to inputs)
    output wire [7:0] uio_out,  // [0]=irq, [1]=busy, [2]=a_ready, [3]=b_ready
    output wire [7:0] uio_oe,   // 1=output, 0=input
    input  wire       ena,      // active-high enable (unused, tie to clk gating)
    input  wire       clk,      // clock
    input  wire       rst_n     // active-low reset
);

    //--------------------------------------------------------------------------
    // Set bidirectional pin direction (uio_out[3:0] active outputs)
    //--------------------------------------------------------------------------
    assign uio_oe = 8'b0000_1111;

    //--------------------------------------------------------------------------
    // Shift register to load the 64-bit config word 1 byte at a time
    // Config format:
    //   [63:56] = Row 7 activation data (or weight row)
    //   [55:48] = Row 6
    //   [47:40] = Row 5
    //   [39:32] = Row 4
    //   [31:24] = Row 3
    //   [23:16] = Row 2
    //   [15:8]  = Row 1
    //   [7:0]   = Row 0 (first byte shifted in)
    //--------------------------------------------------------------------------
    reg [63:0] cfg_shift_reg;
    wire serial_data_in = ui_in[0];
    wire cfg_wr_pulse = ui_in[1];
    wire stream_valid = ui_in[2];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cfg_shift_reg <= 64'd0;
        else if (cfg_wr_pulse)
            cfg_shift_reg <= {cfg_shift_reg[55:0], ui_in};
    end

    //--------------------------------------------------------------------------
    // Ready signals from TPU (handshake for streaming interface)
    //--------------------------------------------------------------------------
    wire a_ready = 1'b1;
    wire b_ready = 1'b1;
    wire o_valid;
    wire tpu_irq;
    wire tpu_busy;

    //--------------------------------------------------------------------------
    // Stream data registers for 8-bit wide interface
    //--------------------------------------------------------------------------
    reg [7:0] adata_reg;
    reg [7:0] bdata_reg;
    reg       adata_valid;
    reg       bdata_valid;

    // Capture incoming stream data on valid edge
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            adata_reg <= 8'd0;
            bdata_reg <= 8'd0;
            adata_valid <= 1'b0;
            bdata_valid <= 1'b0;
        end else begin
            if (stream_valid) begin
                adata_reg <= ui_in[7:0];
                bdata_reg <= ui_in[7:0];
                adata_valid <= 1'b1;
                bdata_valid <= 1'b1;
            end else begin
                if (a_ready) begin
                    adata_valid <= 1'b0;
                end
                if (b_ready) begin
                    bdata_valid <= 1'b0;
                end
            end
        end
    end

    //--------------------------------------------------------------------------
    // Internal flat wire vector for TPU output (8 lanes of 8-bit data = 64 bits)
    //--------------------------------------------------------------------------
    wire [63:0] tpu_out_data;
    
    //--------------------------------------------------------------------------
    // Drive uo_out from the first lane of TPU output (bits 7:0)
    //--------------------------------------------------------------------------
    assign uo_out = tpu_out_data[7:0];
    
    //--------------------------------------------------------------------------
    // Unused signals (tie off to prevent warnings)
    //--------------------------------------------------------------------------
    wire cmd_ready_unused;
    wire [7:0] out_addr_unused;
    wire done_unused;

    // Expose internal TPU signals for direct testing via cocotb
    wire weight_load_en = cfg_wr_pulse;
    wire [3:0] weight_addr = 4'd0;
    wire [7:0] weight_data = cfg_shift_reg[63:56];
    wire activ_load_en = stream_valid;
    wire [3:0] activ_addr = 4'd0;
    wire [7:0] activ_data = adata_reg;
    wire cmd_valid = 1'b0;
    wire [2:0] cmd_opcode = 3'b000;
    wire [31:0] cmd_arg = 32'd0;
    wire cmd_ready = cmd_ready_unused;
    wire done = done_unused;
    wire busy = tpu_busy;
    wire interrupt = tpu_irq;

    //--------------------------------------------------------------------------
    // Instantiate the 8x8 TPU Engine
    //--------------------------------------------------------------------------
    tpu_top #(
        .N(8),              // 8x8 systolic array
        .WEIGHT_W(8),       // 8-bit weights
        .ACTIV_W(8),        // 8-bit activations
        .ACCUM_W(32),       // 32-bit accumulators
        .OUTPUT_W(8),       // 8-bit outputs
        .SCALE_W(16),       // 16-bit quantization scale
        .SHIFT_W(8)         // 8-bit quantization shift
    ) u_tpu (
        .clk(clk),
        .rst_n(rst_n),

        // Host command interface (simplified for Tiny Tapeout)
        .cmd_opcode(cmd_opcode),
        .cmd_valid(cmd_valid),
        .cmd_ready(cmd_ready_unused),
        .cmd_arg(cmd_arg),

        // Weight loading interface (use config shift reg)
        .weight_load_en(weight_load_en),
        .weight_addr({4'd0, weight_addr}),
        .weight_data(weight_data),  // Top byte of config

        // Activation loading interface
        .activ_load_en(activ_load_en),
        .activ_addr({4'd0, activ_addr}),
        .activ_data(activ_data),

        // Quantization parameters (fixed for now)
        .quant_scale(16'd256),   // Scale = 1.0 (Q8.8 format)
        .quant_shift(8'd0),      // No shift
        .leaky_slope(8'd16),     // LeakyReLU slope = 0.0625

        // Output interface - connect to packed array
        .out_valid(o_valid),
        .out_addr(out_addr_unused),
        .out_data(tpu_out_data),  // Connect to packed array

        // Status signals
        .busy(tpu_busy),
        .done(done_unused),
        .interrupt(tpu_irq)
    );

    //--------------------------------------------------------------------------
    // Drive bidirectional status outputs
    //--------------------------------------------------------------------------
    assign uio_out[0] = tpu_irq;    // IRQ signal
    assign uio_out[1] = tpu_busy;   // Busy signal
    assign uio_out[2] = a_ready;    // Activation ready
    assign uio_out[3] = b_ready;    // Weight ready
    assign uio_out[7:4] = 4'b0000;  // Reserved

endmodule

`default_nettype wire
