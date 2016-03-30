#Definitional proc to organize widgets for parameters.
proc create_gui { ipview } {
	set Page0 [ ipgui::add_page $ipview  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $ipview  -parent  $Page0  -name Component_Name ]
	set C_NUM_CHANNELS [ipgui::add_param $ipview -parent $Page0 -name C_NUM_CHANNELS ]
}

proc C_NUM_CHANNELS_updated {ipview} {
	# Procedure called when C_NUM_CHANNELS is updated
	return true
}

proc validate_C_NUM_CHANNELS {ipview} {
	# Procedure called to validate C_NUM_CHANNELS
	return true
}


proc updateModel_C_NUM_CHANNELS {ipview} {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

	set_property modelparam_value [get_property value [ipgui::get_paramspec C_NUM_CHANNELS -of $ipview ]] [ipgui::get_modelparamspec C_NUM_CHANNELS -of $ipview ]

	return true
}

