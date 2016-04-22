set moduleName adder
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName adder
set C_modelType { void 0 }
set C_modelArgList { 
	{ a int 32 regular {axi_slave 0}  }
	{ b int 32 regular {axi_slave 0}  }
	{ c int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "axi_slave", "bundle":"AXI_CTRL","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : [{"in":16}]} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"AXI_CTRL","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : [{"in":24}]} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"AXI_CTRL","type":"ap_vld","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : [{"out":32}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ s_axi_AXI_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXI_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXI_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXI_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXI_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXI_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXI_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "AWADDR" },"address":[{"name":"adder","role":"start","value":"0","valid_bit":"0"},{"name":"adder","role":"continue","value":"0","valid_bit":"4"},{"name":"adder","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"24"}] },
	{ "name": "s_axi_AXI_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_AXI_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_AXI_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "WVALID" } },
	{ "name": "s_axi_AXI_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "WREADY" } },
	{ "name": "s_axi_AXI_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "WDATA" } },
	{ "name": "s_axi_AXI_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_AXI_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "ARADDR" },"address":[{"name":"adder","role":"start","value":"0","valid_bit":"0"},{"name":"adder","role":"done","value":"0","valid_bit":"1"},{"name":"adder","role":"idle","value":"0","valid_bit":"2"},{"name":"adder","role":"ready","value":"0","valid_bit":"3"},{"name":"adder","role":"auto_start","value":"0","valid_bit":"7"},{"name":"c","role":"data","value":"32"}, {"name":"c","role":"valid","value":"36","valid_bit":"0"}] },
	{ "name": "s_axi_AXI_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_AXI_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_AXI_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "RVALID" } },
	{ "name": "s_axi_AXI_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "RREADY" } },
	{ "name": "s_axi_AXI_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "RDATA" } },
	{ "name": "s_axi_AXI_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "RRESP" } },
	{ "name": "s_axi_AXI_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "BVALID" } },
	{ "name": "s_axi_AXI_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "BREADY" } },
	{ "name": "s_axi_AXI_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_CTRL", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "interrupt", "role": "default" }}  ]}
set Spec2ImplPortList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
