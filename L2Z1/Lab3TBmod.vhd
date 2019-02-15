--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:37:45 11/14/2017
-- Design Name:   
-- Module Name:   C:/MazurKoziel/lab3/Lab3TBmod.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab3module
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
USE ieee.numeric_std.ALL;
 
ENTITY Lab3TBmod IS
END Lab3TBmod;
 
ARCHITECTURE behavior OF Lab3TBmod IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab3module
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab3module PORT MAP (
          X => X,
          Y => Y
        );

   -- Clock process definitions
   
 

   -- Stimulus process
  tb : PROCESS
   BEGIN
      
      for i in 0 to 16 loop
         X <= std_logic_vector(to_unsigned(i, 4));
         WAIT FOR 100ns;
      END loop;
   
      WAIT; -- will wait forever
   END PROCESS;

END;
