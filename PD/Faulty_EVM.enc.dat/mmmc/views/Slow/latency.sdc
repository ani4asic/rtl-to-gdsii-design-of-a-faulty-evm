set_clock_latency -source -early -max -rise  0.17506 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  0.171659 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  0.17506 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  0.171659 [get_ports {clk}] -clock clk 
