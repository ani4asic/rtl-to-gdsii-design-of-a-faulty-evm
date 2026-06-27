if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name SLOW\
   -timing\
    [list ${::IMEX::libVar}/lib/typ/slow_vdd1v0_basicCells.lib]
create_library_set -name FAST\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast_vdd1v0_basicCells.lib]
create_rc_corner -name RC_Corners\
   -cap_table ${::IMEX::libVar}/mmmc/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -qx_tech_file ${::IMEX::libVar}/mmmc/RC_Corners/gpdk045.tch
create_delay_corner -name Fast\
   -library_set FAST\
   -rc_corner RC_Corners
create_delay_corner -name Slow\
   -library_set SLOW\
   -rc_corner RC_Corners
create_constraint_mode -name Constraint\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/Constraint/Constraint.sdc]
create_analysis_view -name Fast -constraint_mode Constraint -delay_corner Fast -latency_file ${::IMEX::dataVar}/mmmc/views/Fast/latency.sdc
create_analysis_view -name Slow -constraint_mode Constraint -delay_corner Slow -latency_file ${::IMEX::dataVar}/mmmc/views/Slow/latency.sdc
set_analysis_view -setup [list Slow] -hold [list Fast]
