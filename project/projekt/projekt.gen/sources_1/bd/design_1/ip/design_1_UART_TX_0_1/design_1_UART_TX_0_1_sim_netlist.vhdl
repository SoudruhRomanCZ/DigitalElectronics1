-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 11 14:06:45 2023
-- Host        : PC-627 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/240656/Documents/digital-electronics-1/project/projekt/projekt.gen/sources_1/bd/design_1/ip/design_1_UART_TX_0_1/design_1_UART_TX_0_1_sim_netlist.vhdl
-- Design      : design_1_UART_TX_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_1_UART_TX is
  port (
    o_TX_Done : out STD_LOGIC;
    i_Clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_UART_TX_0_1_UART_TX : entity is "UART_TX";
end design_1_UART_TX_0_1_UART_TX;

architecture STRUCTURE of design_1_UART_TX_0_1_UART_TX is
begin
o_TX_Serial_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => '1',
      Q => o_TX_Done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_1 is
  port (
    i_Clk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_UART_TX_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_UART_TX_0_1 : entity is "design_1_UART_TX_0_1,UART_TX,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_UART_TX_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_UART_TX_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_UART_TX_0_1 : entity is "UART_TX,Vivado 2020.2";
end design_1_UART_TX_0_1;

architecture STRUCTURE of design_1_UART_TX_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_tx_done\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of i_Clk : signal is "xilinx.com:signal:clock:1.0 i_Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_Clk : signal is "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_sim_clk_gen_0_0_clk, INSERT_VIP 0";
begin
  o_TX_Active <= \<const0>\;
  o_TX_Done <= \^o_tx_done\;
  o_TX_Serial <= \^o_tx_done\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_UART_TX_0_1_UART_TX
     port map (
      i_Clk => i_Clk,
      o_TX_Done => \^o_tx_done\
    );
end STRUCTURE;
