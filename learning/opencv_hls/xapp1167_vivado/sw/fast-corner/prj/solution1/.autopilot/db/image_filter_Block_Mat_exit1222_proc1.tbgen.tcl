set moduleName image_filter_Block_Mat_exit1222_proc1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName image_filter_Block_Mat.exit1222_proc1
set C_modelType { int 24 }
set C_modelArgList { 
	{ p_read int 12 regular  }
	{ p_read2 int 12 regular  }
	{ p_read6 int 12 regular  }
	{ p_read7 int 12 regular  }
	{ src0_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ src0_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ src0_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ gray_data_stream_0_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "src0_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src0_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src0_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "gray_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 24} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 12 signal 0 } 
	{ p_read2 sc_in sc_lv 12 signal 1 } 
	{ p_read6 sc_in sc_lv 12 signal 2 } 
	{ p_read7 sc_in sc_lv 12 signal 3 } 
	{ src0_data_stream_0_V_dout sc_in sc_lv 8 signal 4 } 
	{ src0_data_stream_0_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ src0_data_stream_0_V_read sc_out sc_logic 1 signal 4 } 
	{ src0_data_stream_1_V_dout sc_in sc_lv 8 signal 5 } 
	{ src0_data_stream_1_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ src0_data_stream_1_V_read sc_out sc_logic 1 signal 5 } 
	{ src0_data_stream_2_V_dout sc_in sc_lv 8 signal 6 } 
	{ src0_data_stream_2_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ src0_data_stream_2_V_read sc_out sc_logic 1 signal 6 } 
	{ gray_data_stream_0_V_din sc_out sc_lv 8 signal 7 } 
	{ gray_data_stream_0_V_full_n sc_in sc_logic 1 signal 7 } 
	{ gray_data_stream_0_V_write sc_out sc_logic 1 signal 7 } 
	{ ap_return_0 sc_out sc_lv 12 signal -1 } 
	{ ap_return_1 sc_out sc_lv 12 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "src0_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src0_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "src0_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "src0_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_0_V", "role": "read" }} , 
 	{ "name": "src0_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src0_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "src0_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "src0_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_1_V", "role": "read" }} , 
 	{ "name": "src0_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src0_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "src0_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "src0_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_2_V", "role": "read" }} , 
 	{ "name": "gray_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_data_stream_0_V", "role": "din" }} , 
 	{ "name": "gray_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "gray_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_data_stream_0_V", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}
set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 12 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 12 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 12 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 12 } } }
	src0_data_stream_0_V { ap_fifo {  { src0_data_stream_0_V_dout fifo_data 0 8 }  { src0_data_stream_0_V_empty_n fifo_status 0 1 }  { src0_data_stream_0_V_read fifo_update 1 1 } } }
	src0_data_stream_1_V { ap_fifo {  { src0_data_stream_1_V_dout fifo_data 0 8 }  { src0_data_stream_1_V_empty_n fifo_status 0 1 }  { src0_data_stream_1_V_read fifo_update 1 1 } } }
	src0_data_stream_2_V { ap_fifo {  { src0_data_stream_2_V_dout fifo_data 0 8 }  { src0_data_stream_2_V_empty_n fifo_status 0 1 }  { src0_data_stream_2_V_read fifo_update 1 1 } } }
	gray_data_stream_0_V { ap_fifo {  { gray_data_stream_0_V_din fifo_data 1 8 }  { gray_data_stream_0_V_full_n fifo_status 0 1 }  { gray_data_stream_0_V_write fifo_update 1 1 } } }
}
