//============================================================================
// Clock Gating Cell for Low Power Operation
// File: rtl/clock_gate.v
//
// Integrated clock gating cell with latch-based glitch-free design
// Supports enable-based clock gating for power optimization
//============================================================================

`default_nettype none

module clock_gate (
    input  wire clk,
    input  wire ena,        // Clock enable (active high)
    input  wire test_en,    // Test mode enable (bypass gating)
    output wire gated_clk   // Gated clock output
);

    //--------------------------------------------------------------------------
    // Internal signals
    //--------------------------------------------------------------------------
    reg latch_q;            // Latch output (state element)
    wire and_out;           // AND gate output

    //--------------------------------------------------------------------------
    // Enable Latch (transparent when clk=0, holds when clk=1)
    // This ensures the enable signal only changes when clock is low
    // preventing glitches on the gated clock
    // Using explicit always block to make the latch behavior clear to Yosys
    //--------------------------------------------------------------------------
    always @(*) begin
        if (test_en) begin
            latch_q = 1'b1;
        end else if (!clk) begin
            latch_q = ena;  // Transparent when clk is low
        end
        // When clk is high and not test_en, latch_q holds its value (implicit)
    end

    //--------------------------------------------------------------------------
    // Clock AND Gate
    //--------------------------------------------------------------------------
    assign gated_clk = clk & latch_q;

endmodule

`default_nettype wire
