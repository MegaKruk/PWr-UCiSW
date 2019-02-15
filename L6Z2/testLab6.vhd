--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:13:49 01/11/2019
-- Design Name:   
-- Module Name:   C:/Users/Filicz/Documents/workspace/ISE Projects/Lab6_5stanow/testLab6.vhd
-- Project Name:  Lab6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab6
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
 
ENTITY testLab6 IS
END testLab6;
 
ARCHITECTURE behavior OF testLab6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab6
    PORT(
         CE : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Dir : IN  std_logic;
         Y : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CE : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Dir : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab6 PORT MAP (
          CE => CE,
          Clk => Clk,
          Reset => Reset,
          Dir => Dir,
          Y => Y
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
      wait for 100 ns;	
		Dir <= '0';
      wait for Clk_period*10;
		CE <= '1';
		wait for Clk_period*20;
		Dir <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
