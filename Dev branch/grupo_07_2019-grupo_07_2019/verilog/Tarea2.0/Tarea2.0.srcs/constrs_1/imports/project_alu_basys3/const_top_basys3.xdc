# Basys3 Pin Assignments
## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
############################
# On-board Slide Switches  #
############################
set_property PACKAGE_PIN V17 [get_ports {data[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[0]}]
set_property PACKAGE_PIN V16 [get_ports {data[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[1]}]
set_property PACKAGE_PIN W16 [get_ports {data[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[2]}]
set_property PACKAGE_PIN W17 [get_ports {data[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[3]}]
set_property PACKAGE_PIN W15 [get_ports {data[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[4]}]
set_property PACKAGE_PIN V15 [get_ports {data[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[5]}]
set_property PACKAGE_PIN W14 [get_ports {data[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[6]}]
set_property PACKAGE_PIN W13 [get_ports {data[7]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[7]}]
set_property PACKAGE_PIN V2 [get_ports {data[8]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[8]}]
set_property PACKAGE_PIN T3 [get_ports {data[9]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[9]}]
set_property PACKAGE_PIN T2 [get_ports {data[10]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[10]}]
set_property PACKAGE_PIN R3 [get_ports {data[11]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[11]}]
set_property PACKAGE_PIN W2 [get_ports {data[12]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[12]}]
set_property PACKAGE_PIN U1 [get_ports {data[13]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[13]}]
set_property PACKAGE_PIN T1 [get_ports {data[14]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[14]}]
set_property PACKAGE_PIN R2 [get_ports {data[15]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {data[15]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {leds_out[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[0]}]
set_property PACKAGE_PIN E19 [get_ports {leds_out[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[1]}]
set_property PACKAGE_PIN U19 [get_ports {leds_out[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[2]}]
set_property PACKAGE_PIN V19 [get_ports {leds_out[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[3]}]
set_property PACKAGE_PIN W18 [get_ports {leds_out[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[4]}]
set_property PACKAGE_PIN U15 [get_ports {leds_out[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[5]}]
set_property PACKAGE_PIN U14 [get_ports {leds_out[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[6]}]
set_property PACKAGE_PIN V14 [get_ports {leds_out[7]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[7]}]
set_property PACKAGE_PIN V13 [get_ports {leds_out[8]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[8]}]
set_property PACKAGE_PIN V3 [get_ports {leds_out[9]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[9]}]
set_property PACKAGE_PIN W3 [get_ports {leds_out[10]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[10]}]
set_property PACKAGE_PIN U3 [get_ports {leds_out[11]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[11]}]
set_property PACKAGE_PIN P3 [get_ports {leds_out[12]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[12]}]
set_property PACKAGE_PIN N3 [get_ports {leds_out[13]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[13]}]
set_property PACKAGE_PIN P1 [get_ports {leds_out[14]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[14]}]
set_property PACKAGE_PIN L1 [get_ports {leds_out[15]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {leds_out[15]}]


############################
# 7 segment display        #
############################
set_property PACKAGE_PIN W7 [get_ports {seg[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property PACKAGE_PIN W6 [get_ports {seg[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U8 [get_ports {seg[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V5 [get_ports {seg[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U7 [get_ports {seg[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN U2 [get_ports {anode[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset]						
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN T18 [get_ports load[2]]						
set_property IOSTANDARD LVCMOS33 [get_ports load[2]]
set_property PACKAGE_PIN W19 [get_ports load[0]]						
set_property IOSTANDARD LVCMOS33 [get_ports load[0]]
set_property PACKAGE_PIN T17 [get_ports load[1]]						
set_property IOSTANDARD LVCMOS33 [get_ports load[1]]
#set_property PACKAGE_PIN U17 [get_ports push]						
#set_property IOSTANDARD LVCMOS33 [get_ports push]

##Clock	
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets { clk }]; 
