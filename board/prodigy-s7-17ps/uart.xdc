# UART - J5
# set_property -dict {PACKAGE_PIN AN54 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports rs232_uart_txd]
# set_property -dict {PACKAGE_PIN AM49 IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12} [get_ports rs232_uart_rtsn]
# set_property -dict {PACKAGE_PIN AM54 IOSTANDARD LVCMOS25} [get_ports rs232_uart_rxd]
# set_property -dict {PACKAGE_PIN AN49 IOSTANDARD LVCMOS25} [get_ports rs232_uart_ctsn]

# Tips: LVCMOS25 not supported in High Performance bank
set_property -dict {PACKAGE_PIN AN54 IOSTANDARD LVCMOS18} [get_ports rs232_uart_txd]
set_property -dict {PACKAGE_PIN AM49 IOSTANDARD LVCMOS18} [get_ports rs232_uart_rtsn]
set_property -dict {PACKAGE_PIN AM54 IOSTANDARD LVCMOS18} [get_ports rs232_uart_rxd]
set_property -dict {PACKAGE_PIN AN49 IOSTANDARD LVCMOS18} [get_ports rs232_uart_ctsn]
