-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 11 14:06:45 2023
-- Host        : PC-627 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/240656/Documents/digital-electronics-1/project/projekt/projekt.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_0_0 is
  Port ( 
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

end design_1_top_0_0;

architecture stub of design_1_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_tx_data[7:0],i_tx_data_valid,o_tx_serial,o_tx_ready,i_rx_serial,o_rx_data[7:0],o_rx_data_valid,clk,rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top,Vivado 2020.2";
begin
end;
