# Lab 3: Roman Křivánek

### Three-bit wide 4-to-1 multiplexer

1. Listing of VHDL architecture from source file `mux_3bit_4to1.vhd`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
entity mux_3bit_4to1 is
    port(
        a_i           : in  std_logic_vector(2 downto 0);
        b_i           : in  std_logic_vector(2 downto 0);
        c_i           : in  std_logic_vector(2 downto 0);
        d_i           : in  std_logic_vector(2 downto 0);
        sel_i         : in  std_logic_vector(1 downto 0);
        f_o           : out std_logic_vector(2 downto 0)
    );
end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is

begin
    f_o <= a_i when (sel_i = "00") else
           b_i when (sel_i = "01") else
           c_i when (sel_i = "10") else
           d_i;                 -- All other combinations

end Behavioral;
```

2. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure](images/simulation.png)

3. Listing of pin assignments for the Nexys A7 board in `nexys-a7-50t.xdc`. **DO NOT list** the whole file, just your switch and LED settings.

Pozn.: not tested, just teoreticaly
```shell
##Switches
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { sel_i[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { sel_i[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]

...

## LEDs
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { f_o[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { f_o[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { f_o[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { f_o[3]] }]; #IO_L8P_T1_D11_14 Sch=led[3]
...
```
