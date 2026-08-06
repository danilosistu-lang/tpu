# Makefile for Cocotb TPU Testbench

TOPLEVEL_LANG = verilog

# Set array size via preprocessor define (default 8x8)
# Override with: make EXTRA_VERILOG_DEFINES=-DTPARRAY_N=4
ifndef TPARRAY_N
    TPARRAY_N = 8
endif

# TPU top-level module - list params file first
VERILOG_SOURCES = $(shell pwd)/../rtl/tpu_params.v \
                  $(shell pwd)/../rtl/pe.v \
                  $(shell pwd)/../rtl/systolic_array.v \
                  $(shell pwd)/../rtl/buffer_skew.v \
                  $(shell pwd)/../rtl/control_fsm.v \
                  $(shell pwd)/../rtl/activation_unit.v \
                  $(shell pwd)/../rtl/tpu_top.v

# Add include directory for Verilog includes and set array size
COMPILE_ARGS := -I$(shell pwd)/../rtl -DTPARRAY_N=$(TPARRAY_N)

TOPLEVEL = tpu_top
MODULE = test_tpu

# Simulation settings
SIM ?= icarus
COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

# Include cocotb makefiles
include $(shell cocotb-config --makefiles)/Makefile.sim
