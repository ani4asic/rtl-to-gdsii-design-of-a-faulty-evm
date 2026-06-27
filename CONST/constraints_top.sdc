


create_clock -name clk -period 5 -waveform {0.0 2.5 } [get_ports "clk"]
create_clock -name vclk -period 5 -waveform {0.0 2.5}
set_input_delay 1.75 -clock vclk [get_ports [remove_from_collection [all_inputs] "clk"]]
set_output_delay 1.75 -clock vclk [get_ports [all_outputs]]

set_clock_uncertainty -setup 0.5 [get_ports clk]
set_clock_uncertainty -hold 0.5 [get_ports clk]
set_driving_cell -lib_cell BUFX12 [all_inputs]
set_load  0.00219344 [all_outputs]
set_clock_skew 0.4 [get_ports "clk"]

set_clock_latency 0.3 [get_ports "clk"]
