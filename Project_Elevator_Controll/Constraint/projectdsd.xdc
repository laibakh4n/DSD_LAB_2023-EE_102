set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { blue }]; 
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { green }]; 
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { red }]; 

set_property PACKAGE_PIN E3 [get_ports clk]
set_property PACKAGE_PIN U11 [get_ports rst]
set_property PACKAGE_PIN T13 [get_ports wr_call]
set_property PACKAGE_PIN H6 [get_ports wr_floor]
set_property PACKAGE_PIN V10 [get_ports dir_pin_init]


set_property PACKAGE_PIN J17 [get_ports {an[0]}]
set_property PACKAGE_PIN J18 [get_ports {an[1]}]
set_property PACKAGE_PIN T9 [get_ports {an[2]}]
set_property PACKAGE_PIN J14 [get_ports {an[3]}]
set_property PACKAGE_PIN P14 [get_ports {an[4]}]
set_property PACKAGE_PIN T14 [get_ports {an[5]}]
set_property PACKAGE_PIN K2 [get_ports {an[6]}]
set_property PACKAGE_PIN U13 [get_ports {an[7]}]


set_property PACKAGE_PIN T10 [get_ports {seg[0]}]
set_property PACKAGE_PIN R10 [get_ports {seg[1]}]
set_property PACKAGE_PIN K16 [get_ports {seg[2]}]
set_property PACKAGE_PIN K13 [get_ports {seg[3]}]
set_property PACKAGE_PIN P15 [get_ports {seg[4]}]
set_property PACKAGE_PIN T11 [get_ports {seg[5]}]
set_property PACKAGE_PIN L18 [get_ports {seg[6]}]


set_property PACKAGE_PIN R17 [get_ports {floor_req[0]}]
set_property PACKAGE_PIN T18 [get_ports {floor_req[1]}]
set_property PACKAGE_PIN U18 [get_ports {floor_req[2]}]
set_property PACKAGE_PIN T8 [get_ports {call_req[0]}]
set_property PACKAGE_PIN U8 [get_ports {call_req[1]}]
set_property PACKAGE_PIN R16 [get_ports {call_req[2]}]


set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports wr_call]
set_property IOSTANDARD LVCMOS33 [get_ports wr_floor]
set_property IOSTANDARD LVCMOS33 [get_ports dir_pin_init]


set_property IOSTANDARD LVCMOS33 [get_ports {floor_req[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {floor_req[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {floor_req[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {call_req[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {call_req[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {call_req[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]


set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]


set_property PACKAGE_PIN U12 [get_ports enable]
set_property IOSTANDARD LVCMOS33 [get_ports enable]