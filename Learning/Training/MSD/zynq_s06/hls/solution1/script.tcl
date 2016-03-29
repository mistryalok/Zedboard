############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project hls
set_top axi_stream_gpio
add_files hls/solution1/.tcls/gpio.cpp
add_files -tb hls/solution1/.tcls/top.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl systemc
export_design -format ip_catalog
