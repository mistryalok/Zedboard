set moduleName image_filter_Block_Mat_exit1220_proc1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName image_filter_Block_Mat.exit1220_proc1
set C_modelType { int 96 }
set C_modelArgList { 
	{ p_read int 12 regular  }
	{ p_read2 int 12 regular  }
	{ p_read16 int 12 regular  }
	{ p_read17 int 12 regular  }
	{ p_src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ p_src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ p_src_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ src0_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ src0_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ src0_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ src1_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ src1_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ src1_data_stream_2_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "p_src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "p_src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "p_src_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src0_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src0_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src0_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src1_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src1_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src1_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 46
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
	{ p_read16 sc_in sc_lv 12 signal 2 } 
	{ p_read17 sc_in sc_lv 12 signal 3 } 
	{ p_src_data_stream_0_V_dout sc_in sc_lv 8 signal 4 } 
	{ p_src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src_data_stream_0_V_read sc_out sc_logic 1 signal 4 } 
	{ p_src_data_stream_1_V_dout sc_in sc_lv 8 signal 5 } 
	{ p_src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_src_data_stream_1_V_read sc_out sc_logic 1 signal 5 } 
	{ p_src_data_stream_2_V_dout sc_in sc_lv 8 signal 6 } 
	{ p_src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ p_src_data_stream_2_V_read sc_out sc_logic 1 signal 6 } 
	{ src0_data_stream_0_V_din sc_out sc_lv 8 signal 7 } 
	{ src0_data_stream_0_V_full_n sc_in sc_logic 1 signal 7 } 
	{ src0_data_stream_0_V_write sc_out sc_logic 1 signal 7 } 
	{ src0_data_stream_1_V_din sc_out sc_lv 8 signal 8 } 
	{ src0_data_stream_1_V_full_n sc_in sc_logic 1 signal 8 } 
	{ src0_data_stream_1_V_write sc_out sc_logic 1 signal 8 } 
	{ src0_data_stream_2_V_din sc_out sc_lv 8 signal 9 } 
	{ src0_data_stream_2_V_full_n sc_in sc_logic 1 signal 9 } 
	{ src0_data_stream_2_V_write sc_out sc_logic 1 signal 9 } 
	{ src1_data_stream_0_V_din sc_out sc_lv 8 signal 10 } 
	{ src1_data_stream_0_V_full_n sc_in sc_logic 1 signal 10 } 
	{ src1_data_stream_0_V_write sc_out sc_logic 1 signal 10 } 
	{ src1_data_stream_1_V_din sc_out sc_lv 8 signal 11 } 
	{ src1_data_stream_1_V_full_n sc_in sc_logic 1 signal 11 } 
	{ src1_data_stream_1_V_write sc_out sc_logic 1 signal 11 } 
	{ src1_data_stream_2_V_din sc_out sc_lv 8 signal 12 } 
	{ src1_data_stream_2_V_full_n sc_in sc_logic 1 signal 12 } 
	{ src1_data_stream_2_V_write sc_out sc_logic 1 signal 12 } 
	{ ap_return_0 sc_out sc_lv 12 signal -1 } 
	{ ap_return_1 sc_out sc_lv 12 signal -1 } 
	{ ap_return_2 sc_out sc_lv 12 signal -1 } 
	{ ap_return_3 sc_out sc_lv 12 signal -1 } 
	{ ap_return_4 sc_out sc_lv 12 signal -1 } 
	{ ap_return_5 sc_out sc_lv 12 signal -1 } 
	{ ap_return_6 sc_out sc_lv 12 signal -1 } 
	{ ap_return_7 sc_out sc_lv 12 signal -1 } 
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
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "p_src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "p_src_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_2_V", "role": "read" }} , 
 	{ "name": "src0_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src0_data_stream_0_V", "role": "din" }} , 
 	{ "name": "src0_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "src0_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_0_V", "role": "write" }} , 
 	{ "name": "src0_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src0_data_stream_1_V", "role": "din" }} , 
 	{ "name": "src0_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "src0_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_1_V", "role": "write" }} , 
 	{ "name": "src0_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src0_data_stream_2_V", "role": "din" }} , 
 	{ "name": "src0_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "src0_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src0_data_stream_2_V", "role": "write" }} , 
 	{ "name": "src1_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src1_data_stream_0_V", "role": "din" }} , 
 	{ "name": "src1_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "src1_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_0_V", "role": "write" }} , 
 	{ "name": "src1_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src1_data_stream_1_V", "role": "din" }} , 
 	{ "name": "src1_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "src1_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_1_V", "role": "write" }} , 
 	{ "name": "src1_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src1_data_stream_2_V", "role": "din" }} , 
 	{ "name": "src1_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "src1_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src1_data_stream_2_V", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}
set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 12 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 12 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 12 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 12 } } }
	p_src_data_stream_0_V { ap_fifo {  { p_src_data_stream_0_V_dout fifo_data 0 8 }  { p_src_data_stream_0_V_empty_n fifo_status 0 1 }  { p_src_data_stream_0_V_read fifo_update 1 1 } } }
	p_src_data_stream_1_V { ap_fifo {  { p_src_data_stream_1_V_dout fifo_data 0 8 }  { p_src_data_stream_1_V_empty_n fifo_status 0 1 }  { p_src_data_stream_1_V_read fifo_update 1 1 } } }
	p_src_data_stream_2_V { ap_fifo {  { p_src_data_stream_2_V_dout fifo_data 0 8 }  { p_src_data_stream_2_V_empty_n fifo_status 0 1 }  { p_src_data_stream_2_V_read fifo_update 1 1 } } }
	src0_data_stream_0_V { ap_fifo {  { src0_data_stream_0_V_din fifo_data 1 8 }  { src0_data_stream_0_V_full_n fifo_status 0 1 }  { src0_data_stream_0_V_write fifo_update 1 1 } } }
	src0_data_stream_1_V { ap_fifo {  { src0_data_stream_1_V_din fifo_data 1 8 }  { src0_data_stream_1_V_full_n fifo_status 0 1 }  { src0_data_stream_1_V_write fifo_update 1 1 } } }
	src0_data_stream_2_V { ap_fifo {  { src0_data_stream_2_V_din fifo_data 1 8 }  { src0_data_stream_2_V_full_n fifo_status 0 1 }  { src0_data_stream_2_V_write fifo_update 1 1 } } }
	src1_data_stream_0_V { ap_fifo {  { src1_data_stream_0_V_din fifo_data 1 8 }  { src1_data_stream_0_V_full_n fifo_status 0 1 }  { src1_data_stream_0_V_write fifo_update 1 1 } } }
	src1_data_stream_1_V { ap_fifo {  { src1_data_stream_1_V_din fifo_data 1 8 }  { src1_data_stream_1_V_full_n fifo_status 0 1 }  { src1_data_stream_1_V_write fifo_update 1 1 } } }
	src1_data_stream_2_V { ap_fifo {  { src1_data_stream_2_V_din fifo_data 1 8 }  { src1_data_stream_2_V_full_n fifo_status 0 1 }  { src1_data_stream_2_V_write fifo_update 1 1 } } }
}
