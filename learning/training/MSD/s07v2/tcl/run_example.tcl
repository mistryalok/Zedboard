### Start project
start_gui
create_project project_1 /media/alok/Extra/work/Github/Zedboard/Learning/Training/MSD/zynq_s07_v1.2/vivado/project_1 -part xc7z020clg484-1
set_property board_part em.avnet.com:zed:part0:1.2 [current_project]


## block desing
create_bd_design "design_1"

##add ip core
set_property ip_repo_paths  /media/alok/Extra/work/Github/Zedboard/Learning/Training/MSD/zynq_s07_v1.2/mycores [current_project]
update_ip_catalog

### add in desing
startgroup
create_bd_cell -type ip -vlnv Alok:user:sample_generator:1.0 sample_generator_0
endgroup

regenerate_bd_layout
save_bd_design

## add fft and axis fifo
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.0 xfft_0
endgroup
set_property location {1 128 229} [get_bd_cells xfft_0]
regenerate_bd_layout
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0
endgroup
regenerate_bd_layout

## some connections
connect_bd_intf_net [get_bd_intf_pins sample_generator_0/M_AXIS] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
save_bd_design

## some more connections !
connect_bd_intf_net [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins xfft_0/S_AXIS_DATA]
regenerate_bd_layout

## add zynq ps
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup
regenerate_bd_layout


## run block auto
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]

## axi dma add
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
endgroup

### apply axi interconnect, run conn automation
connect_bd_intf_net [get_bd_intf_pins xfft_0/M_AXIS_DATA] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
startgroup
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]
endgroup
regenerate_bd_layout
regenerate_bd_layout
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/axi_dma_0/M_AXI_S2MM" Clk "Auto" }  [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

