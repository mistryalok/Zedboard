#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("inputData_V", 1, hls_in, 0, "ap_vld", "in_data", 1),
	Port_Property("inputData_V_ap_vld", 1, hls_in, 0, "ap_vld", "in_vld", 1),
	Port_Property("outputData_TDATA", 32, hls_in, 1, "axis", "in_data", 1),
	Port_Property("outputData_TVALID", 1, hls_in, 1, "axis", "in_vld", 1),
	Port_Property("outputData_TREADY", 1, hls_out, 1, "axis", "in_acc", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "axi_stream_gpio";
