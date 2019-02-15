--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:55:45 11/28/2017
-- Design Name:   
-- Module Name:   C:/MazurKoziel/L4Z1/testMoore.vhd
-- Project Name:  L4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: L4Z1
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
 
ENTITY testMoore IS
END testMoore;
 
ARCHITECTURE behavior OF testMoore IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT L4Z1
    PORT(
         Clk : IN  std_logic;
         CE : IN  std_logic;
         Reset : IN  std_logic;
         x : IN  std_logic;
         y : OUT  std_logic
         
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal CE : std_logic := '0';
   signal Reset : std_logic := '0';
   signal x : std_logic := '0';
   signal input : std_logic_vector(19 downto 0) := "10010110101001100100";

 	--Outputs
   signal y : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L4Z1 PORT MAP (
          Clk => Clk,
          CE => CE,
          Reset => Reset,
          x => x,
          y => y
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for Clk_period;	
      wait for 5 ns;	
      
      CE <= '1';
      
      for i in 19 downto 0 loop
         wait for Clk_period;
         x <= input(i);
         
      END loop;
      
      wait;
   end process;

END;
