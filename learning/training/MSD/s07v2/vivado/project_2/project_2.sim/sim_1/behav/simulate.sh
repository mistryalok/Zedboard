#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2014.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim sample_generator_testbench_behav -key {Behavioral:sim_1:Functional:sample_generator_testbench} -tclbatch sample_generator_testbench.tcl -log simulate.log
