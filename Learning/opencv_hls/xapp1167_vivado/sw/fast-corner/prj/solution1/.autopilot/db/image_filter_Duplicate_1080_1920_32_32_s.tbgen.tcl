set moduleName image_filter_Duplicate_1080_1920_32_32_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName image_filter_Duplicate<1080, 1920, 32, 32>
set C_modelType { void 0 }
set C_modelArgList { 
	{ src_rows_V_read int 12 regular  }
	{ src_cols_V_read int 12 regular  }
	{ src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ dst1_rows_V_read int 12 regular  }
	{ dst1_cols_V_read int 12 regular  }
	{ dst1_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ dst1_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ dst1_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ dst2_rows_V_read int 12 regular  }
	{ dst2_cols_V_read int 12 regular  }
	{ dst2_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ dst2_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ dst2_data_stream_2_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_rows_V_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "src_cols_V_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "src_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "dst1_rows_V_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "dst1_cols_V_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "dst1_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "dst1_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "dst1_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "dst2_rows_V_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "dst2_cols_V_read", "interface" : "wire", "bitwidth" : 12} , 
 	{ "Name" : "dst2_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "dst2_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "dst2_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_rows_V_read sc_in sc_lv 12 signal 0 } 
	{ src_cols_V_read sc_in sc_lv 12 signal 1 } 
	{ src_data_stream_0_V_dout sc_in sc_lv 8 signal 2 } 
	{ src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_data_stream_0_V_read sc_out sc_logic 1 signal 2 } 
	{ src_data_stream_1_V_dout sc_in sc_lv 8 signal 3 } 
	{ src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_data_stream_1_V_read sc_out sc_logic 1 signal 3 } 
	{ src_data_stream_2_V_dout sc_in sc_lv 8 signal 4 } 
	{ src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ src_data_stream_2_V_read sc_out sc_logic 1 signal 4 } 
	{ dst1_rows_V_read sc_in sc_lv 12 signal 5 } 
	{ dst1_cols_V_read sc_in sc_lv 12 signal 6 } 
	{ dst1_data_stream_0_V_din sc_out sc_lv 8 signal 7 } 
	{ dst1_data_stream_0_V_full_n sc_in sc_logic 1 signal 7 } 
	{ dst1_data_stream_0_V_write sc_out sc_logic 1 signal 7 } 
	{ dst1_data_stream_1_V_din sc_out sc_lv 8 signal 8 } 
	{ dst1_data_stream_1_V_full_n sc_in sc_logic 1 signal 8 } 
	{ dst1_data_stream_1_V_write sc_out sc_logic 1 signal 8 } 
	{ dst1_data_stream_2_V_din sc_out sc_lv 8 signal 9 } 
	{ dst1_data_stream_2_V_full_n sc_in sc_logic 1 signal 9 } 
	{ dst1_data_stream_2_V_write sc_out sc_logic 1 signal 9 } 
	{ dst2_rows_V_read sc_in sc_lv 12 signal 10 } 
	{ dst2_cols_V_read sc_in sc_lv 12 signal 11 } 
	{ dst2_data_stream_0_V_din sc_out sc_lv 8 signal 12 } 
	{ dst2_data_stream_0_V_full_n sc_in sc_logic 1 signal 12 } 
	{ dst2_data_stream_0_V_write sc_out sc_logic 1 signal 12 } 
	{ dst2_data_stream_1_V_din sc_out sc_lv 8 signal 13 } 
	{ dst2_data_stream_1_V_full_n sc_in sc_logic 1 signal 13 } 
	{ dst2_data_stream_1_V_write sc_out sc_logic 1 signal 13 } 
	{ dst2_data_stream_2_V_din sc_out sc_lv 8 signal 14 } 
	{ dst2_data_stream_2_V_full_n sc_in sc_logic 1 signal 14 } 
	{ dst2_data_stream_2_V_write sc_out sc_logic 1 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_rows_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_rows_V_read", "role": "default" }} , 
 	{ "name": "src_cols_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "src_cols_V_read", "role": "default" }} , 
 	{ "name": "src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "src_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "read" }} , 
 	{ "name": "dst1_rows_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst1_rows_V_read", "role": "default" }} , 
 	{ "name": "dst1_cols_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst1_cols_V_read", "role": "default" }} , 
 	{ "name": "dst1_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst1_data_stream_0_V", "role": "din" }} , 
 	{ "name": "dst1_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "dst1_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_data_stream_0_V", "role": "write" }} , 
 	{ "name": "dst1_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst1_data_stream_1_V", "role": "din" }} , 
 	{ "name": "dst1_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "dst1_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_data_stream_1_V", "role": "write" }} , 
 	{ "name": "dst1_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst1_data_stream_2_V", "role": "din" }} , 
 	{ "name": "dst1_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "dst1_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst1_data_stream_2_V", "role": "write" }} , 
 	{ "name": "dst2_rows_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst2_rows_V_read", "role": "default" }} , 
 	{ "name": "dst2_cols_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "dst2_cols_V_read", "role": "default" }} , 
 	{ "name": "dst2_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst2_data_stream_0_V", "role": "din" }} , 
 	{ "name": "dst2_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst2_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "dst2_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst2_data_stream_0_V", "role": "write" }} , 
 	{ "name": "dst2_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst2_data_stream_1_V", "role": "din" }} , 
 	{ "name": "dst2_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst2_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "dst2_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst2_data_stream_1_V", "role": "write" }} , 
 	{ "name": "dst2_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst2_data_stream_2_V", "role": "din" }} , 
 	{ "name": "dst2_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst2_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "dst2_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst2_data_stream_2_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	src_rows_V_read { ap_none {  { src_rows_V_read in_data 0 12 } } }
	src_cols_V_read { ap_none {  { src_cols_V_read in_data 0 12 } } }
	src_data_stream_0_V { ap_fifo {  { src_data_stream_0_V_dout fifo_data 0 8 }  { src_data_stream_0_V_empty_n fifo_status 0 1 }  { src_data_stream_0_V_read fifo_update 1 1 } } }
	src_data_stream_1_V { ap_fifo {  { src_data_stream_1_V_dout fifo_data 0 8 }  { src_data_stream_1_V_empty_n fifo_status 0 1 }  { src_data_stream_1_V_read fifo_update 1 1 } } }
	src_data_stream_2_V { ap_fifo {  { src_data_stream_2_V_dout fifo_data 0 8 }  { src_data_stream_2_V_empty_n fifo_status 0 1 }  { src_data_stream_2_V_read fifo_update 1 1 } } }
	dst1_rows_V_read { ap_none {  { dst1_rows_V_read in_data 0 12 } } }
	dst1_cols_V_read { ap_none {  { dst1_cols_V_read in_data 0 12 } } }
	dst1_data_stream_0_V { ap_fifo {  { dst1_data_stream_0_V_din fifo_data 1 8 }  { dst1_data_stream_0_V_full_n fifo_status 0 1 }  { dst1_data_stream_0_V_write fifo_update 1 1 } } }
	dst1_data_stream_1_V { ap_fifo {  { dst1_data_stream_1_V_din fifo_data 1 8 }  { dst1_data_stream_1_V_full_n fifo_status 0 1 }  { dst1_data_stream_1_V_write fifo_update 1 1 } } }
	dst1_data_stream_2_V { ap_fifo {  { dst1_data_stream_2_V_din fifo_data 1 8 }  { dst1_data_stream_2_V_full_n fifo_status 0 1 }  { dst1_data_stream_2_V_write fifo_update 1 1 } } }
	dst2_rows_V_read { ap_none {  { dst2_rows_V_read in_data 0 12 } } }
	dst2_cols_V_read { ap_none {  { dst2_cols_V_read in_data 0 12 } } }
	dst2_data_stream_0_V { ap_fifo {  { dst2_data_stream_0_V_din fifo_data 1 8 }  { dst2_data_stream_0_V_full_n fifo_status 0 1 }  { dst2_data_stream_0_V_write fifo_update 1 1 } } }
	dst2_data_stream_1_V { ap_fifo {  { dst2_data_stream_1_V_din fifo_data 1 8 }  { dst2_data_stream_1_V_full_n fifo_status 0 1 }  { dst2_data_stream_1_V_write fifo_update 1 1 } } }
	dst2_data_stream_2_V { ap_fifo {  { dst2_data_stream_2_V_din fifo_data 1 8 }  { dst2_data_stream_2_V_full_n fifo_status 0 1 }  { dst2_data_stream_2_V_write fifo_update 1 1 } } }
}
