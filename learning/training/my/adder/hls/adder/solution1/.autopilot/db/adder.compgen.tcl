# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_AXI_CTRL {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
a { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
b { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
c { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1 \
			corename adder_AXI_CTRL_axilite \
			name adder_AXI_CTRL_s_axi \
			ports {$port_AXI_CTRL} \
			op interface \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'AXI_CTRL'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler adder_AXI_CTRL_s_axi
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


