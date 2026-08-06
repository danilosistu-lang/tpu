//============================================================================
// TPU-style Matrix Multiplication Accelerator - Configuration Parameters
// File: rtl/tpu_params.v
//============================================================================

`ifndef TPU_PARAMS_V
`define TPU_PARAMS_V

//------------------------------------------------------------------------------
// Array Dimensions (parameterizable N x N systolic array)
//------------------------------------------------------------------------------
// Legacy/alternative name support
`ifdef TPARRAY_N
    `define PE_ARRAY_N `TPARRAY_N
`elsif ARRAY_SIZE_4X4
    `define PE_ARRAY_N 4
`elsif ARRAY_SIZE_16X16
    `define PE_ARRAY_N 16
`else
    `define PE_ARRAY_N 8  // Default 8x8
`endif

//------------------------------------------------------------------------------
// Data Width Parameters
//------------------------------------------------------------------------------
`define WEIGHT_WIDTH      8       // Weight data width (INT8/UINT8)
`define ACTIVATION_WIDTH  8       // Activation input width
`define ACCUM_WIDTH       32      // Accumulator width for partial sums
`define OUTPUT_WIDTH      16      // Final output width after quantization

//------------------------------------------------------------------------------
// Quantization Parameters
//------------------------------------------------------------------------------
`define QUANT_SCALE_WIDTH 16      // Scale factor width for quantized scaling
`define QUANT_SHIFT_WIDTH 8       // Shift amount width

//------------------------------------------------------------------------------
// Buffer Depth Parameters
//------------------------------------------------------------------------------
`define WEIGHT_BUFFER_DEPTH   (`PE_ARRAY_N * 2)  // Double-buffered weights
`define ACTIV_BUFFER_DEPTH    (`PE_ARRAY_N * 2)  // Double-buffered activations

//------------------------------------------------------------------------------
// Control FSM States
//------------------------------------------------------------------------------
`define FSM_IDLE        3'b000
`define FSM_LOAD_W      3'b001  // Load weights
`define FSM_LOAD_A      3'b010  // Load activations
`define FSM_SKEW        3'b011  // Skew inputs for diagonal feed
`define FSM_COMPUTE     3'b100  // Compute phase
`define FSM_DRAIN       3'b101  // Drain outputs
`define FSM_POSTPROC    3'b110  // Post-processing
`define FSM_DONE        3'b111  // Operation complete

//------------------------------------------------------------------------------
// Activation Function Types
//------------------------------------------------------------------------------
`define ACT_NONE        2'b00
`define ACT_RELU        2'b01
`define ACT_LEAKYRELU   2'b10
`define ACT_QUANT       2'b11

//------------------------------------------------------------------------------
// Signed/Unsigned Modes
//------------------------------------------------------------------------------
`define MODE_UNSIGNED   1'b0
`define MODE_SIGNED     1'b1

//------------------------------------------------------------------------------
// Utility Macros
//------------------------------------------------------------------------------
`define clog2(x) (((x) <= 1) ? 0 : ((x) <= 2) ? 1 : ((x) <= 4) ? 2 : ((x) <= 8) ? 3 : ((x) <= 16) ? 4 : ((x) <= 32) ? 5 : ((x) <= 64) ? 6 : ((x) <= 128) ? 7 : ((x) <= 256) ? 8 : ((x) <= 512) ? 9 : ((x) <= 1024) ? 10 : 11)

`endif // TPU_PARAMS_V
