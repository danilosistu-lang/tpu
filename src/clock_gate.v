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
    wire latch_q;           // Latch output
    wire and_out;           // AND gate output

    //--------------------------------------------------------------------------
    // Enable Latch (transparent when clk=0, holds when clk=1)
    // This ensures the enable signal only changes when clock is low
    // preventing glitches on the gated clock
    //--------------------------------------------------------------------------
    assign latch_q = test_en ? 1'b1 : (clk ? latch_q : ena);

    //--------------------------------------------------------------------------
    // Clock AND Gate
    //--------------------------------------------------------------------------
    assign gated_clk = clk & latch_q;

endmodule

`default_nettype wire
