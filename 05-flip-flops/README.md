# Lab 5: Roman Křivánek

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!


![D_T_flops_sim](images/D_T_flops_sim.png)


### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture behavioral of jk_ff_rst is
    -- It must use this local signal instead of output ports
    -- because "out" ports cannot be read within the architecture
    signal sig_q : std_logic;
begin
    --------------------------------------------------------
    --------------------------------------------------------
    p_jk_ff_rst : process (clk)
    begin
        if rising_edge(clk) then
             if(rst='1') then
                   sig_q<='0';
                
             elsif (j='0') and (k='0') then
                sig_q<= sig_q;
             elsif (j='0') and (k='1') then
                sig_q<='0';
             elsif (j='1') and (k='0') then
                sig_q<='1';
             else
                sig_q<= not sig_q;
            end if;
        end if;
    end process p_jk_ff_rst;

    -- Output ports are permanently connected to local signal
    q     <= sig_q;
    q_bar <= not sig_q;
end architecture behavioral;
```

### Shift register

1. Image of the shift register `top` level schematic. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![your figure](images/4_bit_shifter.png)
