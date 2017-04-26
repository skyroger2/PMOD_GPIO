# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Interfaces [ipgui::add_page $IPINST -name "Interfaces"]
  ipgui::add_param $IPINST -name "Top_Row_Interface" -parent ${Interfaces}
  ipgui::add_param $IPINST -name "Bottom_Row_Interface" -parent ${Interfaces}


}

proc update_PARAM_VALUE.Bottom_Row_Interface { PARAM_VALUE.Bottom_Row_Interface } {
	# Procedure called to update Bottom_Row_Interface when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Bottom_Row_Interface { PARAM_VALUE.Bottom_Row_Interface } {
	# Procedure called to validate Bottom_Row_Interface
	return true
}

proc update_PARAM_VALUE.Top_Row_Interface { PARAM_VALUE.Top_Row_Interface } {
	# Procedure called to update Top_Row_Interface when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Top_Row_Interface { PARAM_VALUE.Top_Row_Interface } {
	# Procedure called to validate Top_Row_Interface
	return true
}


proc update_MODELPARAM_VALUE.Top_Row_Interface { MODELPARAM_VALUE.Top_Row_Interface PARAM_VALUE.Top_Row_Interface } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Top_Row_Interface}] ${MODELPARAM_VALUE.Top_Row_Interface}
}

proc update_MODELPARAM_VALUE.Bottom_Row_Interface { MODELPARAM_VALUE.Bottom_Row_Interface PARAM_VALUE.Bottom_Row_Interface } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Bottom_Row_Interface}] ${MODELPARAM_VALUE.Bottom_Row_Interface}
}

