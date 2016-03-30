set project_name "zc702"
set project_dir "project"
set ip_dir "srcs/ip"
set hdl_dir "srcs/hdl"
set constrs_dir "constrs"
set scripts_dir "scripts"
set bd_name "system_top"
set part "xc7z020clg484-1"
set board "xilinx.com:zynq:zc702:1.0"
set ip_zip "srcs/ip/xilinx_com_hls_image_filter_1_0.zip"

# set up project
create_project $project_name $project_dir -part $part -force
set_property board $board [current_project]

# set up IP repo
set_property ip_repo_paths $ip_dir [current_fileset]
update_ip_catalog -rebuild
update_ip_catalog -add_ip $ip_zip -repo_path $ip_dir

# set up bd design
create_bd_design $bd_name
source $scripts_dir/build_bd_design.tcl
regenerate_bd_layout
save_bd_design
validate_bd_design

# add hdl sources and xdc constraints to project
add_files -fileset sources_1 -norecurse $hdl_dir/${bd_name}_wrapper.v
add_files -fileset constrs_1 -norecurse $constrs_dir/$bd_name.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

save_bd_design
