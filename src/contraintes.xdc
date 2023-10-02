## Clock signal
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports {address_A[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {address_A[*]}]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {address_A[1]}]

set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {address_B[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {address_B[*]}]
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {address_B[1]}]

set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {address_W[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {address_W[*]}]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {address_W[1]}]

set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports W_Enable]
    set_property IOSTANDARD LVCMOS33 [get_ports W_Enable]
    
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {W_Data[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {W_Data[*]}]
set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports {W_Data[1]}]
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports {W_Data[2]}]
set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports {W_Data[3]}]
set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports {W_Data[4]}]
set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports {W_Data[5]}]
set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports {W_Data[6]}]
set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports {W_Data[7]}]

set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports reset]
    set_property IOSTANDARD LVCMOS33 [get_ports reset]
    
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports {A_Data[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {A_Data[*]}]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports {A_Data[1]}]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {A_Data[2]}]
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports {A_Data[3]}]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {A_Data[4]}]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports {A_Data[5]}]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports {A_Data[6]}]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports {A_Data[7]}]

set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports {B_Data[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {B_Data[*]}]
set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports {B_Data[1]}]
set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports {B_Data[2]}]
set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports {B_Data[3]}]
set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports {B_Data[4]}]
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports {B_Data[5]}]
set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports {B_Data[6]}]
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports {B_Data[7]}]

# Unused ports
set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports {address_A[2]}];#Sch name = JA1
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports {address_A[3]}];#Sch name = JA2
set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVCMOS33 } [get_ports {address_B[2]}];#Sch name = JA3
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports {address_B[3]}];#Sch name = JA4
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports {address_W[2]}];#Sch name = JA7
set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports {address_W[3]}];#Sch name = JA8