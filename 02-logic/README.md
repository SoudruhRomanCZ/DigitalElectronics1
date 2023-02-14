# Lab 2: Roman Křivánek

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](images/kmap_B_greater.jpg)

   Less than:

   ![K-maps](images/kmap_A_greater.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function. Images of Karnaugh maps used for equasions are in folder images![images](images/).

   ![Logic functions](images/comparator_min.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx42**

```vhdl
       p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0100"; -- Such as "0100" if ID = xxxx42
        s_a <= "0010"; -- Such as "0010" if ID = xxxx42
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'));
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" 		
        severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [2-bit comparator](https://www.edaplayground.com/x/Ajca)
   
   [4-bit comparator](https://www.edaplayground.com/x/kVHh)
