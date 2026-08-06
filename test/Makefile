# Makefile for Tiny Tapeout Cocotb TPU Testbench

TOPLEVEL_LANG = verilog

# Set array size via preprocessor define (default 8x8)
ifndef TPARRAY_N
    TPARRAY_N = 8
endif

# Include directory for verilog header includes inside ../src/
COMPILE_ARGS += -I$(PWD)/../src -DTPARRAY_N=$(TPARRAY_N)

# List all source files in ../src/
PROJECT_SOURCES = tt_um_tpu_top.v \
                  tpu_params.v \
                  clock_gate.v \
                  pe.v \
                  systolic_array.v \
                  buffer_skew.v \
                  control_fsm.v \
                  activation_unit.v \
                  tpu_top.v

ifneq ($(GATES),yes)
    # RTL Simulation path
    VERILOG_SOURCES += $(addprefix $(PWD)/../src/, $(PROJECT_SOURCES))
else
    # Gate-Level Simulation (Automated by Tiny Tapeout GitHub Actions)
    COMPILE_ARGS    += -DGL_TEST -DFUNCTIONAL -DSIM -DUNIT_DELAY=\#1
    VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primitives.v
    VERILOG_SOURCES += $(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v
    VERILOG_SOURCES += $(PWD)/gate_level_netlist.v
endif

# Target testbench wrapper and Python test file
ifneq ($(wildcard $(PWD)/tb.v),)
    VERILOG_SOURCES += $(PWD)/tb.v
    TOPLEVEL = tb
else
    TOPLEVEL = tt_um_tpu_top
endif

# Python test file in test/ (test_tpu.py)
MODULE = test_tpu

# Simulation settings
SIM ?= icarus
COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

# Include cocotb makefiles
include $(shell cocotb-config --makefiles)/Makefile.sim
