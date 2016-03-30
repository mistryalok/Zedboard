set moduleName image_filter_Loop_1_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName image_filter_Loop_1_proc
set C_modelType { void 0 }
set C_modelArgList { 
	{ rows int 32 regular {ap_stable 0} }
	{ cols int 32 regular {ap_stable 0} }
	{ img_1_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ img_1_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ img_1_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ img_0_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ img_0_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ img_0_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ buffer_val_0 int 8 regular {array 3 { 2 2 } 1 1 }  }
	{ buffer_val_1 int 8 regular {array 3 { 2 2 } 1 1 }  }
	{ buffer_val_2 int 8 regular {array 3 { 2 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32} , 
 	{ "Name" : "img_1_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "img_1_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "img_1_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "img_0_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "img_0_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "img_0_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8} , 
 	{ "Name" : "buffer_val_0", "interface" : "memory", "bitwidth" : 8} , 
 	{ "Name" : "buffer_val_1", "interface" : "memory", "bitwidth" : 8} , 
 	{ "Name" : "buffer_val_2", "interface" : "memory", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ img_1_data_stream_0_V_din sc_out sc_lv 8 signal 2 } 
	{ img_1_data_stream_0_V_full_n sc_in sc_logic 1 signal 2 } 
	{ img_1_data_stream_0_V_write sc_out sc_logic 1 signal 2 } 
	{ img_1_data_stream_1_V_din sc_out sc_lv 8 signal 3 } 
	{ img_1_data_stream_1_V_full_n sc_in sc_logic 1 signal 3 } 
	{ img_1_data_stream_1_V_write sc_out sc_logic 1 signal 3 } 
	{ img_1_data_stream_2_V_din sc_out sc_lv 8 signal 4 } 
	{ img_1_data_stream_2_V_full_n sc_in sc_logic 1 signal 4 } 
	{ img_1_data_stream_2_V_write sc_out sc_logic 1 signal 4 } 
	{ img_0_data_stream_0_V_dout sc_in sc_lv 8 signal 5 } 
	{ img_0_data_stream_0_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ img_0_data_stream_0_V_read sc_out sc_logic 1 signal 5 } 
	{ img_0_data_stream_1_V_dout sc_in sc_lv 8 signal 6 } 
	{ img_0_data_stream_1_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ img_0_data_stream_1_V_read sc_out sc_logic 1 signal 6 } 
	{ img_0_data_stream_2_V_dout sc_in sc_lv 8 signal 7 } 
	{ img_0_data_stream_2_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_0_data_stream_2_V_read sc_out sc_logic 1 signal 7 } 
	{ buffer_val_0_address0 sc_out sc_lv 2 signal 8 } 
	{ buffer_val_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ buffer_val_0_we0 sc_out sc_logic 1 signal 8 } 
	{ buffer_val_0_d0 sc_out sc_lv 8 signal 8 } 
	{ buffer_val_0_q0 sc_in sc_lv 8 signal 8 } 
	{ buffer_val_0_address1 sc_out sc_lv 2 signal 8 } 
	{ buffer_val_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ buffer_val_0_we1 sc_out sc_logic 1 signal 8 } 
	{ buffer_val_0_d1 sc_out sc_lv 8 signal 8 } 
	{ buffer_val_0_q1 sc_in sc_lv 8 signal 8 } 
	{ buffer_val_1_address0 sc_out sc_lv 2 signal 9 } 
	{ buffer_val_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ buffer_val_1_we0 sc_out sc_logic 1 signal 9 } 
	{ buffer_val_1_d0 sc_out sc_lv 8 signal 9 } 
	{ buffer_val_1_q0 sc_in sc_lv 8 signal 9 } 
	{ buffer_val_1_address1 sc_out sc_lv 2 signal 9 } 
	{ buffer_val_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ buffer_val_1_we1 sc_out sc_logic 1 signal 9 } 
	{ buffer_val_1_d1 sc_out sc_lv 8 signal 9 } 
	{ buffer_val_1_q1 sc_in sc_lv 8 signal 9 } 
	{ buffer_val_2_address0 sc_out sc_lv 2 signal 10 } 
	{ buffer_val_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ buffer_val_2_we0 sc_out sc_logic 1 signal 10 } 
	{ buffer_val_2_d0 sc_out sc_lv 8 signal 10 } 
	{ buffer_val_2_q0 sc_in sc_lv 8 signal 10 } 
	{ buffer_val_2_address1 sc_out sc_lv 2 signal 10 } 
	{ buffer_val_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ buffer_val_2_we1 sc_out sc_logic 1 signal 10 } 
	{ buffer_val_2_d1 sc_out sc_lv 8 signal 10 } 
	{ buffer_val_2_q1 sc_in sc_lv 8 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "img_1_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_1_data_stream_0_V", "role": "din" }} , 
 	{ "name": "img_1_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "img_1_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_data_stream_0_V", "role": "write" }} , 
 	{ "name": "img_1_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_1_data_stream_1_V", "role": "din" }} , 
 	{ "name": "img_1_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "img_1_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_data_stream_1_V", "role": "write" }} , 
 	{ "name": "img_1_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_1_data_stream_2_V", "role": "din" }} , 
 	{ "name": "img_1_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "img_1_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_data_stream_2_V", "role": "write" }} , 
 	{ "name": "img_0_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "img_0_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "img_0_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_0_V", "role": "read" }} , 
 	{ "name": "img_0_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "img_0_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "img_0_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_1_V", "role": "read" }} , 
 	{ "name": "img_0_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_0_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "img_0_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "img_0_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_0_data_stream_2_V", "role": "read" }} , 
 	{ "name": "buffer_val_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "address0" }} , 
 	{ "name": "buffer_val_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "ce0" }} , 
 	{ "name": "buffer_val_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "we0" }} , 
 	{ "name": "buffer_val_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "d0" }} , 
 	{ "name": "buffer_val_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "q0" }} , 
 	{ "name": "buffer_val_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "address1" }} , 
 	{ "name": "buffer_val_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "ce1" }} , 
 	{ "name": "buffer_val_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "we1" }} , 
 	{ "name": "buffer_val_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "d1" }} , 
 	{ "name": "buffer_val_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_0", "role": "q1" }} , 
 	{ "name": "buffer_val_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "address0" }} , 
 	{ "name": "buffer_val_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "ce0" }} , 
 	{ "name": "buffer_val_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "we0" }} , 
 	{ "name": "buffer_val_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "d0" }} , 
 	{ "name": "buffer_val_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "q0" }} , 
 	{ "name": "buffer_val_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "address1" }} , 
 	{ "name": "buffer_val_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "ce1" }} , 
 	{ "name": "buffer_val_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "we1" }} , 
 	{ "name": "buffer_val_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "d1" }} , 
 	{ "name": "buffer_val_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_1", "role": "q1" }} , 
 	{ "name": "buffer_val_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "address0" }} , 
 	{ "name": "buffer_val_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "ce0" }} , 
 	{ "name": "buffer_val_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "we0" }} , 
 	{ "name": "buffer_val_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "d0" }} , 
 	{ "name": "buffer_val_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "q0" }} , 
 	{ "name": "buffer_val_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "address1" }} , 
 	{ "name": "buffer_val_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "ce1" }} , 
 	{ "name": "buffer_val_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "we1" }} , 
 	{ "name": "buffer_val_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "d1" }} , 
 	{ "name": "buffer_val_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer_val_2", "role": "q1" }}  ]}
set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	img_1_data_stream_0_V { ap_fifo {  { img_1_data_stream_0_V_din fifo_data 1 8 }  { img_1_data_stream_0_V_full_n fifo_status 0 1 }  { img_1_data_stream_0_V_write fifo_update 1 1 } } }
	img_1_data_stream_1_V { ap_fifo {  { img_1_data_stream_1_V_din fifo_data 1 8 }  { img_1_data_stream_1_V_full_n fifo_status 0 1 }  { img_1_data_stream_1_V_write fifo_update 1 1 } } }
	img_1_data_stream_2_V { ap_fifo {  { img_1_data_stream_2_V_din fifo_data 1 8 }  { img_1_data_stream_2_V_full_n fifo_status 0 1 }  { img_1_data_stream_2_V_write fifo_update 1 1 } } }
	img_0_data_stream_0_V { ap_fifo {  { img_0_data_stream_0_V_dout fifo_data 0 8 }  { img_0_data_stream_0_V_empty_n fifo_status 0 1 }  { img_0_data_stream_0_V_read fifo_update 1 1 } } }
	img_0_data_stream_1_V { ap_fifo {  { img_0_data_stream_1_V_dout fifo_data 0 8 }  { img_0_data_stream_1_V_empty_n fifo_status 0 1 }  { img_0_data_stream_1_V_read fifo_update 1 1 } } }
	img_0_data_stream_2_V { ap_fifo {  { img_0_data_stream_2_V_dout fifo_data 0 8 }  { img_0_data_stream_2_V_empty_n fifo_status 0 1 }  { img_0_data_stream_2_V_read fifo_update 1 1 } } }
	buffer_val_0 { ap_memory {  { buffer_val_0_address0 mem_address 1 2 }  { buffer_val_0_ce0 mem_ce 1 1 }  { buffer_val_0_we0 mem_we 1 1 }  { buffer_val_0_d0 mem_din 1 8 }  { buffer_val_0_q0 mem_dout 0 8 }  { buffer_val_0_address1 mem_address 1 2 }  { buffer_val_0_ce1 mem_ce 1 1 }  { buffer_val_0_we1 mem_we 1 1 }  { buffer_val_0_d1 mem_din 1 8 }  { buffer_val_0_q1 mem_dout 0 8 } } }
	buffer_val_1 { ap_memory {  { buffer_val_1_address0 mem_address 1 2 }  { buffer_val_1_ce0 mem_ce 1 1 }  { buffer_val_1_we0 mem_we 1 1 }  { buffer_val_1_d0 mem_din 1 8 }  { buffer_val_1_q0 mem_dout 0 8 }  { buffer_val_1_address1 mem_address 1 2 }  { buffer_val_1_ce1 mem_ce 1 1 }  { buffer_val_1_we1 mem_we 1 1 }  { buffer_val_1_d1 mem_din 1 8 }  { buffer_val_1_q1 mem_dout 0 8 } } }
	buffer_val_2 { ap_memory {  { buffer_val_2_address0 mem_address 1 2 }  { buffer_val_2_ce0 mem_ce 1 1 }  { buffer_val_2_we0 mem_we 1 1 }  { buffer_val_2_d0 mem_din 1 8 }  { buffer_val_2_q0 mem_dout 0 8 }  { buffer_val_2_address1 mem_address 1 2 }  { buffer_val_2_ce1 mem_ce 1 1 }  { buffer_val_2_we1 mem_we 1 1 }  { buffer_val_2_d1 mem_din 1 8 }  { buffer_val_2_q1 mem_dout 0 8 } } }
}
