set_attr lib_search_path ../LIB/
set_attr init_hdl_search_path ../RTL/
set_attr library slow_vdd1v0_basicCells.lib
read_hdl Faulty_EVM.v

elaborate
read_sdc ../CONST/constraints_top.sdc
#synthesize -to_mapped -effort medium
syn_generic
syn_map
syn_opt
gui_show 

write_hdl > Faulty_EVM.v
write_sdc > Faulty_EVM_sdc.sdc
report timing > timing_report
report area > area_report
report power > power_report
write_spef > Faulty_EVM.spef

