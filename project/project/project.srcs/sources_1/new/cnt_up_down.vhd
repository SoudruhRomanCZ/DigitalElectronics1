library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cnt_up_down is
    generic (
        g_CNT_WIDTH : natural := 6  -- default number of counter bits
    );
    port (
        clk : in std_logic;  -- main clock
        rst : in std_logic;  -- synchronous reset
        en : in std_logic;  -- enable input
        cnt : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);  -- output count value
        m : out std_logic_vector(g_CNT_WIDTH - 1 downto 0);  -- output minute value
        h : out std_logic_vector(g_CNT_WIDTH - 1 downto 0)  -- output hour value
    );
end entity cnt_up_down;

architecture behavioral of cnt_up_down is
    signal sig_cnt : unsigned(g_CNT_WIDTH - 1 downto 0);  -- local counter
    signal sig_m : unsigned(g_CNT_WIDTH - 1 downto 0);  -- local minute value
    signal sig_h : unsigned(g_CNT_WIDTH - 1 downto 0);  -- local hour value
begin
  
    -- Clocked process with synchronous reset which implements an n-bit up/down counter
    p_cnt_up_down : process (clk) is
    begin
        if rising_edge(clk) then
            if rst = '1' then  -- synchronous reset
                sig_cnt <= (others => '0');  -- clear all bits
                sig_m <= (others => '0');
                sig_h <= (others => '0');
            elsif en = '1' then  -- check if counter is enabled
                if sig_cnt = 59 then  -- increment minutes every 60 seconds
                    sig_cnt <= sig_cnt-59;
                    sig_m <= sig_m + 1;
                    if sig_m = 60 then  -- increment hours every 60 minutes
                        sig_m <= sig_m-60;
                        sig_h <= sig_h + 1;
                        if sig_h = 24 then  -- reset hours to 0 every 24 hours
                            sig_h <= sig_h-24;
                        end if;
                    end if;
                else
                    sig_cnt <= sig_cnt + 1;  -- increment seconds
         
                end if;
            end if;
        end if;
    end process p_cnt_up_down;

    -- output signals must be converted from "unsigned" to "std_logic_vector"
    cnt <= std_logic_vector(sig_cnt);
    m <= std_logic_vector(sig_m);
    h <= std_logic_vector(sig_h);

end architecture behavioral;
