----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 02:00:40 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( CLK100MHZ : in STD_LOGIC;
           SW : in STD_LOGIC;
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           BTNC : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           LED : out STD_LOGIC_VECTOR(7 downto 0);
           JB1 : out std_logic; 
           JB2 : in std_logic );
           
end top;

----------------------------------------------------------
-- Architecture body for top level
----------------------------------------------------------

architecture behavioral of top is

  -- 4-bit counter @ 250 ms

    signal sig_en_1s : std_logic;                    --! Clock enable signal for Counter0
    signal sig_cnt_4bit : std_logic_vector(3 downto 0); --! Counter0
    signal s_Clk       : std_logic;
    signal s_TX_DV     : std_logic;
    signal s_TX_Byte   : std_logic_vector(7 downto 0);
    signal s_TX_Active : std_logic;
    signal s_TX_Done   : std_logic;
    signal s_RX_DV     : std_logic;
    signal s_RX_Byte   : std_logic_vector(7 downto 0);
       
begin

  --------------------------------------------------------
  -- Instance (copy) of clock_enable entity
  --------------------------------------------------------
  clk_en0 : entity work.clock_enable
      generic map(
          g_MAX => 100000000
      )
      port map(
          clk => CLK100MHZ,
          rst => BTNC,
          ce  => sig_en_1s
      );

  --------------------------------------------------------
  -- Instance (copy) of cnt_up_down entity
  --------------------------------------------------------
  bin_cnt : entity work.cnt_up_down
     generic map(
          g_CNT_WIDTH => 4
      )
      port map(
          clk => CLK100MHZ,
          rst => BTNC,
          cnt => sig_cnt_4bit,
          en => sig_en_1s
      );
  --------------------------------------------------------
  -- Instance (copy) of hex_7seg entity
  --------------------------------------------------------
  hex2seg : entity work.hex_7seg
      port map(
          blank  => BTNC,
          hex    => sig_cnt_4bit,
          seg(6) => CA,
          seg(5) => CB,
          seg(4) => CC,
          seg(3) => CD,
          seg(2) => CE,
          seg(1) => CF,
          seg(0) => CG
      );

tran: entity work.UART_TX
    generic map(
    g_clks_per_bit => 869
    )
    port map(
    i_Clk   =>  s_Clk  , 
    i_TX_DV  =>  s_TX_DV ,
    i_TX_Byte   => s_TX_Byte ,
    o_TX_Active  => open ,
    o_TX_Serial  => JB1,
    o_TX_Done    => s_TX_Done
    );
    
    rec: entity work.UART_RX
    generic map(
    g_CLKS_PER_BIT => 869
    )
    port map(
    i_Clk   =>  s_Clk  , 
    o_RX_DV  =>  s_RX_DV ,
    o_RX_Byte   => s_RX_Byte ,
    i_RX_Serial  => JB2
    );


  --------------------------------------------------------
  -- Other settings
  --------------------------------------------------------
  -- Connect one common anode to 3.3V
  AN <= b"1111_1110";
  LED <= s_TX_Byte;
  JB1 <=s_TX_DV;
 
end architecture behavioral;
