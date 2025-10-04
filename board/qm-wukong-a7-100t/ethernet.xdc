#-----------------------------------------------------------
#              Ethernet / MII                            -
#-----------------------------------------------------------

## SMSC Ethernet PHY
set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports { eth_mdio_clock }]; #IO_L14N_T2_SRCC_15 Sch=eth_mdc
set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports { eth_mdio_data  }]; #IO_L17P_T2_A26_15 Sch=eth_mdio
set_property -dict { PACKAGE_PIN R1   IOSTANDARD LVCMOS33 } [get_ports { eth_mdio_reset }]; #IO_L20P_T3_A20_15 Sch=PHYRSTB
set_property -dict { PACKAGE_PIN U1   IOSTANDARD LVCMOS33 } [get_ports { eth_ref_clock  }]; #IO_L22P_T3_A17_15 Sch=GTX_CLK
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports { eth_col        }]; #IO_L16N_T2_A27_15 Sch=eth_col
set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports { eth_crs        }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=eth_crs
set_property -dict { PACKAGE_PIN P4   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_clk     }]; #IO_L14P_T2_SRCC_15 Sch=eth_rx_clk
set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_dv      }]; #IO_L13N_T2_MRCC_15 Sch=eth_rx_dv
set_property -dict { PACKAGE_PIN M4   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[0]     }]; #IO_L21N_T3_DQS_A18_15 Sch=eth_rxd[0]
set_property -dict { PACKAGE_PIN N3   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[1]     }]; #IO_L16P_T2_A28_15 Sch=eth_rxd[1]
set_property -dict { PACKAGE_PIN N4   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[2]     }]; #IO_L21P_T3_DQS_15 Sch=eth_rxd[2]
set_property -dict { PACKAGE_PIN P3   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[3]     }]; #IO_L18N_T2_A23_15 Sch=eth_rxd[3]
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_er      }]; #IO_L20N_T3_A19_15 Sch=eth_rxerr
set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_clk     }]; #IO_L13P_T2_MRCC_15 Sch=eth_tx_clk
set_property -dict { PACKAGE_PIN T2   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_en      }]; #IO_L19N_T3_A21_VREF_15 Sch=eth_tx_en
set_property -dict { PACKAGE_PIN R2   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[0]     }]; #IO_L15P_T2_DQS_15 Sch=eth_txd[0]
set_property -dict { PACKAGE_PIN P1   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[1]     }]; #IO_L19P_T3_A22_15 Sch=eth_txd[1]
set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[2]     }]; #IO_L17N_T2_A25_15 Sch=eth_txd[2]
set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[3]     }]; #IO_L18P_T2_A24_15 Sch=eth_txd[3]

create_clock -period 40.000 -name eth_rx_clk [get_ports eth_rx_clk]
set_input_delay -add_delay -clock eth_rx_clk -max 28.00 [get_ports { eth_rxd* eth_rx_dv eth_rx_er }]
set_input_delay -add_delay -clock eth_rx_clk -min 10.00 [get_ports { eth_rxd* eth_rx_dv eth_rx_er }]

create_clock -period 40.000 -name eth_tx_clk [get_ports eth_tx_clk]
set_output_delay -add_delay -clock eth_tx_clk -max 12.00 [get_ports { eth_txd* eth_tx_en }]
set_output_delay -add_delay -clock eth_tx_clk -min  0.00 [get_ports { eth_txd* eth_tx_en }]
