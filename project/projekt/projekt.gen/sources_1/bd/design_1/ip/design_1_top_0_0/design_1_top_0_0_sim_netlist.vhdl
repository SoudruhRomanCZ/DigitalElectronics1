-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 11 14:06:45 2023
-- Host        : PC-627 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/240656/Documents/digital-electronics-1/project/projekt/projekt.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    i_tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_tx_data_valid : in STD_LOGIC;
    o_tx_serial : out STD_LOGIC;
    o_tx_ready : out STD_LOGIC;
    i_rx_serial : in STD_LOGIC;
    o_rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rx_data_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_top_0_0 : entity is "top,Vivado 2020.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  component design_1_top_0_0_top is
  port (
    i_tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_tx_data_valid : in STD_LOGIC;
    o_tx_serial : out STD_LOGIC;
    o_tx_ready : out STD_LOGIC;
    i_rx_serial : in STD_LOGIC;
    o_rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_rx_data_valid : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component design_1_top_0_0_top;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_sim_clk_gen_0_0_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: component design_1_top_0_0_top
     port map (
      clk => clk,
      i_rx_serial => i_rx_serial,
      i_tx_data(7 downto 0) => i_tx_data(7 downto 0),
      i_tx_data_valid => i_tx_data_valid,
      o_rx_data(7 downto 0) => o_rx_data(7 downto 0),
      o_rx_data_valid => o_rx_data_valid,
      o_tx_ready => o_tx_ready,
      o_tx_serial => o_tx_serial,
      rst => rst
    );
end STRUCTURE;
