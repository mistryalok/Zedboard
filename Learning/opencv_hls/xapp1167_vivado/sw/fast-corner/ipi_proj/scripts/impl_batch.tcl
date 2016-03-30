source scripts/project.tcl

reset_run impl_1
reset_run synth_1

# set synthesis and implementation settings
set_param synth.elaboration.rodinMoreOptions "rt::set_parameter inferDynamicSrl false"
set_property STEPS.SYNTH_DESIGN.ARGS.NO_LC true [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.FSM_EXTRACTION sequential [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RESOURCE_SHARING off [get_runs synth_1]
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property strategy Performance_Explore [get_runs impl_1]

launch_runs synth_1
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

file copy -force ${project_dir}/${project_name}.runs/impl_1/${bd_name}_wrapper.bit system.bit

#set f [open vivado.log r]
#set s [read $f]
#close $f
#
#if {[regexp {Route 35-39} $s]} {
#    puts "The design did not met all timing constraints."
#    exit 1
#} else {
#    file copy -force ${project_dir}/${project_name}.runs/impl_1/${bd_name}_wrapper.bit system.bit
#    exit 0
#}

close_project
