# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name buffer_val_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer_val_0 \
    op interface \
    ports { buffer_val_0_address0 { O 2 vector } buffer_val_0_ce0 { O 1 bit } buffer_val_0_we0 { O 1 bit } buffer_val_0_d0 { O 8 vector } buffer_val_0_q0 { I 8 vector } buffer_val_0_address1 { O 2 vector } buffer_val_0_ce1 { O 1 bit } buffer_val_0_we1 { O 1 bit } buffer_val_0_d1 { O 8 vector } buffer_val_0_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_val_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name buffer_val_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer_val_1 \
    op interface \
    ports { buffer_val_1_address0 { O 2 vector } buffer_val_1_ce0 { O 1 bit } buffer_val_1_we0 { O 1 bit } buffer_val_1_d0 { O 8 vector } buffer_val_1_q0 { I 8 vector } buffer_val_1_address1 { O 2 vector } buffer_val_1_ce1 { O 1 bit } buffer_val_1_we1 { O 1 bit } buffer_val_1_d1 { O 8 vector } buffer_val_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_val_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name buffer_val_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer_val_2 \
    op interface \
    ports { buffer_val_2_address0 { O 2 vector } buffer_val_2_ce0 { O 1 bit } buffer_val_2_we0 { O 1 bit } buffer_val_2_d0 { O 8 vector } buffer_val_2_q0 { I 8 vector } buffer_val_2_address1 { O 2 vector } buffer_val_2_ce1 { O 1 bit } buffer_val_2_we1 { O 1 bit } buffer_val_2_d1 { O 8 vector } buffer_val_2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer_val_2'"
}
}


# Adapter definition:
set corename CONTROL_BUS
set opts {
    {
        id 15
        name rows
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 32
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
    {
        id 16
        name cols
        reset_level 1
        sync_rst true
        type scalar
        dir I
        width 32
        mode SIG_IN_VLD_OFF:SIG_IN_ACC_OFF
    }
}
set portmap { }
set metadata { -bus_bundle CONTROL_BUS}
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::axi_slave_int_gen] == "::AESL_LIB_XILADAPTER::axi_slave_int_gen"} {
eval "::AESL_LIB_XILADAPTER::axi_slave_int_gen { \
    corename ${corename} \
    reset_level 1 \
    sync_rst true \
    opts {${opts}} \
    portmap {${portmap}} \
    metadata {${metadata}} \
}"
} else {
puts "@W Can not find gen function '::AESL_LIB_XILADAPTER::axi_slave_int_gen' in the library. Ignored generation of adapter for '${corename}'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name img_1_data_stream_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_data_stream_0_V \
    op interface \
    ports { img_1_data_stream_0_V_din { O 8 vector } img_1_data_stream_0_V_full_n { I 1 bit } img_1_data_stream_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name img_1_data_stream_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_data_stream_1_V \
    op interface \
    ports { img_1_data_stream_1_V_din { O 8 vector } img_1_data_stream_1_V_full_n { I 1 bit } img_1_data_stream_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name img_1_data_stream_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_1_data_stream_2_V \
    op interface \
    ports { img_1_data_stream_2_V_din { O 8 vector } img_1_data_stream_2_V_full_n { I 1 bit } img_1_data_stream_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name img_0_data_stream_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_0_data_stream_0_V \
    op interface \
    ports { img_0_data_stream_0_V_dout { I 8 vector } img_0_data_stream_0_V_empty_n { I 1 bit } img_0_data_stream_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name img_0_data_stream_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_0_data_stream_1_V \
    op interface \
    ports { img_0_data_stream_1_V_dout { I 8 vector } img_0_data_stream_1_V_empty_n { I 1 bit } img_0_data_stream_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name img_0_data_stream_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_0_data_stream_2_V \
    op interface \
    ports { img_0_data_stream_2_V_dout { I 8 vector } img_0_data_stream_2_V_empty_n { I 1 bit } img_0_data_stream_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


