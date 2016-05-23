# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2014.4
# Copyright (C) 2014 Xilinx Inc. All rights reserved.
# 
# ==============================================================

proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XAdder" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_AXI_CTRL_BASEADDR" \
        "C_S_AXI_AXI_CTRL_HIGHADDR"

    xdefine_config_file $drv_handle "xadder_g.c" "XAdder" \
        "DEVICE_ID" \
        "C_S_AXI_AXI_CTRL_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XAdder" \
        "DEVICE_ID" \
        "C_S_AXI_AXI_CTRL_BASEADDR" \
        "C_S_AXI_AXI_CTRL_HIGHADDR"
}
