#-----------------------
#Creating new core.
ipx::create_core {xilinx.com} {ip} {design_1} {1.0}
#-----------------------
set_property root_directory {} [ipx::current_core]
ipx::add_user_parameter Component_Name [ipx::current_core]
set_property {value_resolve_type} {user} [ipx::get_user_parameters  Component_Name -of_objects [ipx::current_core]]
set_property {value_format} {string} [ipx::get_user_parameters  Component_Name -of_objects [ipx::current_core]]
#-----------------------
# SUPORTED FAMILIES     
#-----------------------
set_property supported_families {{zynq} {Production}} [ipx::current_core]

#-----------------------
# OTHER ATTRIBUTES      
#-----------------------
set_property taxonomy {{/Packaged_BlockDiagram_Designs}} [ipx::current_core]
set_property company_url {http://www.xilinx.com} [ipx::current_core]
set_property description {design_1} [ipx::current_core]
set_property display_name {design_1} [ipx::current_core]

ipx::remove_all_port [ipx::current_core]
ipx::remove_all_file_group [ipx::current_core]
ipx::remove_all_bus_interface [ipx::current_core]

#-----------------------
# SYNTHESIS FILESET
#-----------------------
ipx::add_file_group {xilinx_verilogsynthesis} [ipx::current_core]
ipx::add_file design_1_ooc.xdc [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/design_1.hwh [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/design_1_bd.tcl [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_auto_pc_0/design_1_auto_pc_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_auto_pc_1/design_1_auto_pc_1.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_auto_pc_2/design_1_auto_pc_2.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_bram_ctrl_0_0/design_1_axi_bram_ctrl_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_cdma_0_0/design_1_axi_cdma_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_xbar_0/design_1_xbar_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hdl/design_1.v [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
set_property {model_name} {design_1} [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]

#-----------------------
# SIMULATION FILESET
#-----------------------
ipx::add_file_group {xilinx_verilogbehavioralsimulation} [ipx::current_core]
ipx::add_file design_1_ooc.xdc [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/design_1.hwh [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/design_1_bd.tcl [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_auto_pc_0/design_1_auto_pc_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_auto_pc_1/design_1_auto_pc_1.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_auto_pc_2/design_1_auto_pc_2.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_bram_ctrl_0_0/design_1_axi_bram_ctrl_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_cdma_0_0/design_1_axi_cdma_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/design_1_xbar_0/design_1_xbar_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hdl/design_1.v [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
set_property {model_name} {design_1} [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]

#-----------------------
# PORTS 
#-----------------------
ipx::add_ports_from_hdl [::ipx::current_core] -top_level_hdl_file ./hdl/design_1.v -top_module_name design_1

#-----------------------
# BUS INTERFACES 
#-----------------------
#------------------
#   Adding M_AXI_PORT
#------------------
ipx::add_bus_interface {M_AXI_PORT} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]
set_property display_name {M_AXI_PORT} [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:aximm:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:aximm:1.0}  [ipx::get_bus_interfaces M_AXI_PORT -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:aximm_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:aximm_rtl:1.0}  [ipx::get_bus_interfaces M_AXI_PORT -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {M_AXI_PORT_awaddr} [ipx::add_port_map {AWADDR}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awlen} [ipx::add_port_map {AWLEN}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awsize} [ipx::add_port_map {AWSIZE}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awburst} [ipx::add_port_map {AWBURST}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awlock} [ipx::add_port_map {AWLOCK}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awcache} [ipx::add_port_map {AWCACHE}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awprot} [ipx::add_port_map {AWPROT}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awregion} [ipx::add_port_map {AWREGION}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awqos} [ipx::add_port_map {AWQOS}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awvalid} [ipx::add_port_map {AWVALID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awready} [ipx::add_port_map {AWREADY}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_wdata} [ipx::add_port_map {WDATA}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_wstrb} [ipx::add_port_map {WSTRB}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_wlast} [ipx::add_port_map {WLAST}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_wvalid} [ipx::add_port_map {WVALID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_wready} [ipx::add_port_map {WREADY}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_bresp} [ipx::add_port_map {BRESP}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_bvalid} [ipx::add_port_map {BVALID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_bready} [ipx::add_port_map {BREADY}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_araddr} [ipx::add_port_map {ARADDR}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arlen} [ipx::add_port_map {ARLEN}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arsize} [ipx::add_port_map {ARSIZE}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arburst} [ipx::add_port_map {ARBURST}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arlock} [ipx::add_port_map {ARLOCK}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arcache} [ipx::add_port_map {ARCACHE}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arprot} [ipx::add_port_map {ARPROT}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arregion} [ipx::add_port_map {ARREGION}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arqos} [ipx::add_port_map {ARQOS}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arvalid} [ipx::add_port_map {ARVALID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arready} [ipx::add_port_map {ARREADY}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_rdata} [ipx::add_port_map {RDATA}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_rresp} [ipx::add_port_map {RRESP}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_rlast} [ipx::add_port_map {RLAST}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_rvalid} [ipx::add_port_map {RVALID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_rready} [ipx::add_port_map {RREADY}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_arid} [ipx::add_port_map {ARID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_awid} [ipx::add_port_map {AWID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_bid} [ipx::add_port_map {BID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {M_AXI_PORT_rid} [ipx::add_port_map {RID}  [ipx::get_bus_interfaces {M_AXI_PORT} -of_objects [ipx::current_core]]]
#------------------
#   Adding Parameters
#------------------
#   Adding S_AXI_PORT
#------------------
ipx::add_bus_interface {S_AXI_PORT} [ipx::current_core]
set_property interface_mode {slave} [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]
set_property display_name {S_AXI_PORT} [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:aximm:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:aximm:1.0}  [ipx::get_bus_interfaces S_AXI_PORT -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:aximm_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:aximm_rtl:1.0}  [ipx::get_bus_interfaces S_AXI_PORT -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {S_AXI_PORT_awid} [ipx::add_port_map {AWID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awaddr} [ipx::add_port_map {AWADDR}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awlen} [ipx::add_port_map {AWLEN}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awsize} [ipx::add_port_map {AWSIZE}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awburst} [ipx::add_port_map {AWBURST}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awlock} [ipx::add_port_map {AWLOCK}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awcache} [ipx::add_port_map {AWCACHE}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awprot} [ipx::add_port_map {AWPROT}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awqos} [ipx::add_port_map {AWQOS}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awvalid} [ipx::add_port_map {AWVALID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_awready} [ipx::add_port_map {AWREADY}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_wdata} [ipx::add_port_map {WDATA}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_wstrb} [ipx::add_port_map {WSTRB}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_wlast} [ipx::add_port_map {WLAST}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_wvalid} [ipx::add_port_map {WVALID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_wready} [ipx::add_port_map {WREADY}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_bid} [ipx::add_port_map {BID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_bresp} [ipx::add_port_map {BRESP}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_bvalid} [ipx::add_port_map {BVALID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_bready} [ipx::add_port_map {BREADY}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arid} [ipx::add_port_map {ARID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_araddr} [ipx::add_port_map {ARADDR}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arlen} [ipx::add_port_map {ARLEN}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arsize} [ipx::add_port_map {ARSIZE}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arburst} [ipx::add_port_map {ARBURST}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arlock} [ipx::add_port_map {ARLOCK}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arcache} [ipx::add_port_map {ARCACHE}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arprot} [ipx::add_port_map {ARPROT}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arqos} [ipx::add_port_map {ARQOS}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arvalid} [ipx::add_port_map {ARVALID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_arready} [ipx::add_port_map {ARREADY}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_rid} [ipx::add_port_map {RID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_rdata} [ipx::add_port_map {RDATA}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_rresp} [ipx::add_port_map {RRESP}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_rlast} [ipx::add_port_map {RLAST}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_rvalid} [ipx::add_port_map {RVALID}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
set_property {physical_name} {S_AXI_PORT_rready} [ipx::add_port_map {RREADY}  [ipx::get_bus_interfaces {S_AXI_PORT} -of_objects [ipx::current_core]]]
#------------------
#   Adding Parameters
#------------------
#   Adding UART
#------------------
ipx::add_bus_interface {UART} [ipx::current_core]
set_property interface_mode {master} [ipx::get_bus_interfaces {UART} -of_objects [ipx::current_core]]
set_property display_name {UART} [ipx::get_bus_interfaces {UART} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:uart:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:uart:1.0}  [ipx::get_bus_interfaces UART -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:uart_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:uart_rtl:1.0}  [ipx::get_bus_interfaces UART -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {UART_rxd} [ipx::add_port_map {RxD}  [ipx::get_bus_interfaces {UART} -of_objects [ipx::current_core]]]
set_property {physical_name} {UART_txd} [ipx::add_port_map {TxD}  [ipx::get_bus_interfaces {UART} -of_objects [ipx::current_core]]]
#------------------
#------------------
#   Adding CLK.ACLK
#------------------
ipx::add_bus_interface {CLK.ACLK} [ipx::current_core]
set_property display_name {Clk} [ipx::get_bus_interfaces {CLK.ACLK} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {CLK.ACLK} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:clock:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:clock:1.0}  [ipx::get_bus_interfaces CLK.ACLK -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:clock_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:clock_rtl:1.0}  [ipx::get_bus_interfaces CLK.ACLK -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {ACLK} [ipx::add_port_map {CLK}  [ipx::get_bus_interfaces {CLK.ACLK} -of_objects [ipx::current_core]]]
#   Adding Parameters
ipx::add_bus_parameter {ASSOCIATED_BUSIF}  [ipx::get_bus_interfaces CLK.ACLK -of_objects [ipx::current_core]]
set_property {value} {M_AXI_PORT:S_AXI_PORT} [ipx::get_bus_parameters {ASSOCIATED_BUSIF} -of_objects  [ipx::get_bus_interfaces CLK.ACLK -of_objects [ipx::current_core]]]

#------------------
#   Adding RST.ARESETN_I
#------------------
ipx::add_bus_interface {RST.ARESETN_I} [ipx::current_core]
set_property display_name {Reset} [ipx::get_bus_interfaces {RST.ARESETN_I} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {RST.ARESETN_I} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:reset:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:reset:1.0}  [ipx::get_bus_interfaces RST.ARESETN_I -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:reset_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:reset_rtl:1.0}  [ipx::get_bus_interfaces RST.ARESETN_I -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {ARESETN_I} [ipx::add_port_map {RST}  [ipx::get_bus_interfaces {RST.ARESETN_I} -of_objects [ipx::current_core]]]
#   Adding Parameters
ipx::add_bus_parameter {POLARITY}  [ipx::get_bus_interfaces RST.ARESETN_I -of_objects [ipx::current_core]]
set_property {value} {ACTIVE_LOW} [ipx::get_bus_parameters {POLARITY} -of_objects  [ipx::get_bus_interfaces RST.ARESETN_I -of_objects [ipx::current_core]]]

#------------------
#   Adding RST.ARESETN_P
#------------------
ipx::add_bus_interface {RST.ARESETN_P} [ipx::current_core]
set_property display_name {Reset1} [ipx::get_bus_interfaces {RST.ARESETN_P} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {RST.ARESETN_P} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:reset:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:reset:1.0}  [ipx::get_bus_interfaces RST.ARESETN_P -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:reset_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:reset_rtl:1.0}  [ipx::get_bus_interfaces RST.ARESETN_P -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {ARESETN_P} [ipx::add_port_map {RST}  [ipx::get_bus_interfaces {RST.ARESETN_P} -of_objects [ipx::current_core]]]
#   Adding Parameters
ipx::add_bus_parameter {POLARITY}  [ipx::get_bus_interfaces RST.ARESETN_P -of_objects [ipx::current_core]]
set_property {value} {ACTIVE_LOW} [ipx::get_bus_parameters {POLARITY} -of_objects  [ipx::get_bus_interfaces RST.ARESETN_P -of_objects [ipx::current_core]]]

#------------------
#   Adding INT.interrupt
#------------------
ipx::add_bus_interface {INT.interrupt} [ipx::current_core]
set_property display_name {Interrupt} [ipx::get_bus_interfaces {INT.interrupt} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {INT.interrupt} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:interrupt:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:interrupt:1.0}  [ipx::get_bus_interfaces INT.interrupt -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:interrupt_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:interrupt_rtl:1.0}  [ipx::get_bus_interfaces INT.interrupt -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {interrupt} [ipx::add_port_map {INTERRUPT}  [ipx::get_bus_interfaces {INT.interrupt} -of_objects [ipx::current_core]]]
#   Adding Parameters
ipx::add_bus_parameter {SENSITIVITY}  [ipx::get_bus_interfaces INT.interrupt -of_objects [ipx::current_core]]
set_property {value} {EDGE_RISING} [ipx::get_bus_parameters {SENSITIVITY} -of_objects  [ipx::get_bus_interfaces INT.interrupt -of_objects [ipx::current_core]]]


#-----------------------
# SAVE CORE TO REPOS
#-----------------------
ipx::create_default_gui_files [ipx::current_core]
ipx::save_core [ipx::current_core]
ipx::check_integrity  [ipx::current_core]
update_ip_catalog
