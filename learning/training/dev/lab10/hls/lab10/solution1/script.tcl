############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project lab10
set_top doImgProc
add_files ../../../../../../../../../media/alok/Extra/Videos/dev/Source Codes/Vivado_HLS_Labs-2016-02-21/Vivado HLS Labs/Lab_10_Conv2d/Lab_10_Conv2d/core.cpp
add_files ../../../../../../../../../media/alok/Extra/Videos/dev/Source Codes/Vivado_HLS_Labs-2016-02-21/Vivado HLS Labs/Lab_10_Conv2d/Lab_10_Conv2d/core.h
add_files -tb ../../../../../../../../../media/alok/Extra/Videos/dev/Source Codes/Vivado_HLS_Labs-2016-02-21/Vivado HLS Labs/Lab_10_Conv2d/Lab_10_Conv2d/TestUtils.cpp
add_files -tb ../../../../../../../../../media/alok/Extra/Videos/dev/Source Codes/Vivado_HLS_Labs-2016-02-21/Vivado HLS Labs/Lab_10_Conv2d/Lab_10_Conv2d/TestUtils.h
add_files -tb ../../../../../../../../../media/alok/Extra/Videos/dev/Source Codes/Vivado_HLS_Labs-2016-02-21/Vivado HLS Labs/Lab_10_Conv2d/Lab_10_Conv2d/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./lab10/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
