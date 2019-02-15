--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:18:33 11/28/2017
-- Design Name:   
-- Module Name:   C:/Users/Filip/Documents/workspace/ISE Projects/L4/testlab4.vhd
-- Project Name:  L4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab4mod
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testlab4 IS
END testlab4;
 
ARCHITECTURE behavior OF testlab4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab4mod
    PORT(
         Wej_syg : IN  std_logic;
         Wej_clk : IN  std_logic;
         Wej_reset : IN  std_logic;
         Wyj_stan : OUT  std_logic_vector(7 downto 0);
         Wyj_blok : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Wej_syg : std_logic := '0';
   signal Wej_clk : std_logic := '0';
   signal Wej_reset : std_logic := '0';

 	--Outputs
   signal Wyj_stan : std_logic_vector(7 downto 0);
   signal Wyj_blok : std_logic;

   -- Clock period definitions
   constant Wej_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab4mod PORT MAP (
          Wej_syg => Wej_syg,
          Wej_clk => Wej_clk,
          Wej_reset => Wej_reset,
          Wyj_stan => Wyj_stan,
          Wyj_blok => Wyj_blok
        );

   -- Clock process definitions
   Wej_clk_process :process
   begin
		Wej_clk <= '0';
		wait for Wej_clk_period/2;
		Wej_clk <= '1';
		wait for Wej_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Wej_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
