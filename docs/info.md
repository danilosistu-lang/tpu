<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements an 8x8 systolic array Tensor Processing Unit (TPU) for matrix multiplication operations.

**Architecture:**
- **8x8 Systolic Array**: 64 processing elements (PEs) arranged in a grid that performs parallel multiply-accumulate (MAC) operations
- **Weight Registers**: Each PE stores a weight value loaded via serial configuration interface
- **Data Flow**: Input activations flow from left to right, partial sums flow from top to bottom
- **Serial Configuration Interface**: 32-bit configuration bus to load weights into the PE array before computation

**Operation:**
1. **Configuration Phase**: Weights are loaded into each PE's register via the serial config interface (config_data, config_en, config_clk)
2. **Computation Phase**: Input activations are fed through ui_in[7:0], and results accumulate in the PEs
3. **Output**: Final matrix multiplication results are available on uo_out

The design uses fixed-point arithmetic and is optimized for low-power edge AI inference workloads.

## How to test

**Testing the TPU:**

1. **Configure Weights**: 
   - Set `config_en` high and pulse `config_clk` for each weight value
   - Send 32-bit weight values on `config_data` (format: [31:24]=PE address, [23:0]=weight value)
   - Total of 64 configuration cycles needed for full 8x8 array

2. **Run Matrix Multiplication**:
   - Assert `rst_n` to reset the design
   - Provide input activation values on `ui_in[7:0]` each clock cycle
   - Toggle `clk` to step through the computation
   - Monitor `uo_out` for accumulated results

3. **Verify Results**:
   - Compare output values against expected matrix multiplication results
   - Check timing matches expected systolic array latency (8 cycles for 8x8 array)

**Example Test Sequence:**
```
1. Reset: rst_n = 0, then rst_n = 1
2. Load all 64 weights via config interface
3. Feed 8 input vectors sequentially
4. Read 8 output results from uo_out
```

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
