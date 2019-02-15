--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:59:08 11/23/2017
-- Design Name:   
-- Module Name:   C:/Users/Janek/Desktop/Lab3a/testcount.vhd
-- Project Name:  Lab3a
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
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
 
ENTITY testcount IS
END testcount;
 
ARCHITECTURE behavior OF testcount IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         DIR : IN  std_logic;
         Enable : IN  std_logic;
         Clear : IN  std_logic;
         Clock : IN  std_logic;
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DIR : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Clear : std_logic := '0';
   signal Clock : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          DIR => DIR,
          Enable => Enable,
          Clear => Clear,
          Clock => Clock,
          Y => Y
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		Enable <= '1';
		
		wait for 100 ns;	
		
		DIR <= '1';
		
      wait for Clock_period*10;

      wait;
   end process;

END;
