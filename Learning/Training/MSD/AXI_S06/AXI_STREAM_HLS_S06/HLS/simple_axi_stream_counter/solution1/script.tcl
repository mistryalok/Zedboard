############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project simple_axi_stream_counter
set_top axi_stream_counter
add_files simple_axi_stream_counter/.settings/axi_stream.cpp
add_files -tb simple_axi_stream_counter/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./simple_axi_stream_counter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl systemc
export_design -format ip_catalog
