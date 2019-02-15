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
USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab6
    Port ( Clk : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           x : in  STD_LOGIC_VECTOR (7 downto 0);
           Rdy : in STD_LOGIC;
           E0 : in STD_LOGIC;
           F0 : in STD_LOGIC;
           y : out  STD_LOGIC;
           LCD : out  STD_LOGIC_VECTOR (63 downto 0)
           );
    END COMPONENT;
    
 
   --Inputs
   signal Clk : std_logic := '0';
   signal CE : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Rdy: std_logic := '0';
   signal E0 : STD_LOGIC:= '0';
   signal F0 : STD_LOGIC:= '0';
   signal x : STD_LOGIC_VECTOR (7 downto 0) := X"10";
   signal LCD : STD_LOGIC_VECTOR (63 downto 0);
   
   type typeByteArray is array ( NATURAL range <> ) of STD_LOGIC_VECTOR( 7 downto 0 );



 	--Outputs
   signal y : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 50 ns;
 
BEGIN
 	-- Instantiate the Unit Under Test (UUT)
   uut: Lab6 PORT MAP (
	   Clk => Clk,
       CE => CE,
       Reset => Reset,
       x => x,
       Rdy => Rdy,
       E0 => E0,
       F0 => F0,
       y => y,
       LCD => LCD
        );              

   -- Clock process definitions
   Clk_process :process
   --
   begin
  		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
      
   end process;
 

   -- Stimulus process
   stim_proc: process
  variable input : typeByteArray( 0 to 16) := 
  (X"14", 
   X"5A",
   X"2B",	--F
   X"3A",	--M
   X"3A",	--M
   X"42",	--K
   X"14",
   X"76",
   X"2B",	--F
   X"3A",	--M
   X"3A",	--M
   X"2B",	--F
   X"3A",	--M
   X"3A",	--M
   X"42",	--K
   X"14",
   X"76");
     begin		
      -- hold reset state for 100 ns.
      wait for Clk_period;	
      wait for 5 ns;	
      
      CE <= '1';
      Rdy <= '1';
      F0 <= '0';

      for i in 0 to 16 loop
      wait for Clk_period;
      x <= input(i);
      
      END loop;
      
      wait;
   end process; 

END;
