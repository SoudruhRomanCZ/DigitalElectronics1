--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Tue Apr 11 14:06:01 2023
--Host        : PC-627 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_top_0_0 is
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
  end component design_1_top_0_0;
  component design_1_UART_TX_0_1 is
  port (
    i_Clk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component design_1_UART_TX_0_1;
  component design_1_UART_RX_0_1 is
  port (
    i_Clk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_UART_RX_0_1;
  component design_1_sim_clk_gen_0_0 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_1_sim_clk_gen_0_0;
  signal Net : STD_LOGIC;
  signal UART_RX_0_o_RX_Byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RX_0_o_RX_DV : STD_LOGIC;
  signal UART_TX_0_o_TX_Serial : STD_LOGIC;
  signal sim_clk_gen_0_sync_rst : STD_LOGIC;
  signal top_0_o_rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal top_0_o_tx_ready : STD_LOGIC;
  signal top_0_o_tx_serial : STD_LOGIC;
  signal NLW_UART_TX_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TX_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_top_0_o_rx_data_valid_UNCONNECTED : STD_LOGIC;
begin
UART_RX_0: component design_1_UART_RX_0_1
     port map (
      i_Clk => Net,
      i_RX_Serial => top_0_o_tx_serial,
      o_RX_Byte(7 downto 0) => UART_RX_0_o_RX_Byte(7 downto 0),
      o_RX_DV => UART_RX_0_o_RX_DV
    );
UART_TX_0: component design_1_UART_TX_0_1
     port map (
      i_Clk => Net,
      i_TX_Byte(7 downto 0) => top_0_o_rx_data(7 downto 0),
      i_TX_DV => top_0_o_tx_ready,
      o_TX_Active => NLW_UART_TX_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TX_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => UART_TX_0_o_TX_Serial
    );
sim_clk_gen_0: component design_1_sim_clk_gen_0_0
     port map (
      clk => Net,
      sync_rst => sim_clk_gen_0_sync_rst
    );
top_0: component design_1_top_0_0
     port map (
      clk => Net,
      i_rx_serial => UART_TX_0_o_TX_Serial,
      i_tx_data(7 downto 0) => UART_RX_0_o_RX_Byte(7 downto 0),
      i_tx_data_valid => UART_RX_0_o_RX_DV,
      o_rx_data(7 downto 0) => top_0_o_rx_data(7 downto 0),
      o_rx_data_valid => NLW_top_0_o_rx_data_valid_UNCONNECTED,
      o_tx_ready => top_0_o_tx_ready,
      o_tx_serial => top_0_o_tx_serial,
      rst => sim_clk_gen_0_sync_rst
    );
end STRUCTURE;
