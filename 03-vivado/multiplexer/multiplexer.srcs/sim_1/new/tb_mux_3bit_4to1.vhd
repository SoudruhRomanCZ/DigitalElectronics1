----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2023 02:06:35 PM
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
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

entity tb_mux_3bit_4to1 is
    port(
        a_t           : in  std_logic_vector(4 - 1 downto 0);
        b_t           : in  std_logic_vector(4 - 1 downto 0);
        c_t           : in  std_logic_vector(4 - 1 downto 0);
        d_t           : in  std_logic_vector(4 - 1 downto 0);
        addr_t        : in std_logic_vector(2 - 1 downto 0);
        f_t           : out std_logic

    );  
end tb_mux_3bit_4to1;

architecture Behavioral of tb_mux_3bit_4to1 is

begin


end Behavioral;
