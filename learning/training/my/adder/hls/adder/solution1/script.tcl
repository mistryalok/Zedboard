############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project adder
set_top adder
add_files adder/solution1/adder.cpp
add_files -tb adder/solution1/.tcls/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./adder/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -format ip_catalog
