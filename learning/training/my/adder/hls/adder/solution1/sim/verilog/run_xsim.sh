
xelab xil_defaultlib.apatb_adder_top -prj adder.prj --lib "ieee_proposed=./ieee_proposed" -s adder -debug wave
xsim --noieeewarnings adder -tclbatch adder.tcl

