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
    PORT(
         Clk : IN  std_logic;
         CE : IN  std_logic;
         Reset : IN  std_logic;
         x : IN  STD_LOGIC_VECTOR (7 downto 0);
         Rdy : in STD_LOGIC;
         y : OUT  std_logic
         
        );
    END COMPONENT;
    
 
   --Inputs
   signal Clk : std_logic := '0';
   signal CE : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Rdy: std_logic := '0';
   --signal x : std_logic := '0';
   signal x : STD_LOGIC_VECTOR (7 downto 0) := X"10";
   --signal input : std_logic_vector(20 downto 0) := "101100111010100110101";
   type typeByteArray is array ( NATURAL range <> ) of STD_LOGIC_VECTOR( 7 downto 0 );
   --variable input : typeByteArray( 35 downto 0 ) := (X"14", X"F0", X"14");



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
          y => y
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
  variable input : typeByteArray( 0 to 41 ) := 
  (X"14", X"F0", X"14", 
   X"5A", X"F0", X"5A",
   X"2B", X"F0", X"2B",	--F
   X"3A", X"F0", X"3A",	--M
   X"3A", X"F0", X"3A",	--M
   X"42", X"F0", X"42",	--K
   X"14", X"F0", X"14",
   X"76", X"F0", X"76",
   X"2B", X"F0", X"2B",	--F
   X"3A", X"F0", X"3A",	--M
   X"3A", X"F0", X"3A",	--M
   X"1A", X"F0", X"1A",	--Z
   X"14", X"F0", X"14",
   X"76", X"F0", X"76");
     begin		
      -- hold reset state for 100 ns.
      wait for Clk_period;	
      wait for 5 ns;	
      
      CE <= '1';
      Rdy <= '0';
      wait for Clk_period;
      for i in 0 to 41 loop
      x <= input(i);
      
         if i mod 3 = 0 then
            wait for Clk_period * 8;
            Rdy <= '1';
            wait for Clk_period;
            Rdy <= '0';
            elsif i mod 3 = 1 then
            wait for Clk_period * 3;
            Rdy <= '1';
            wait for Clk_period;
            Rdy <= '0';
            elsif i mod 3 = 2 then
            wait for Clk_period * 16;
            Rdy <= '1';
            wait for Clk_period;
            Rdy <= '0';
         end if;
      
      
         
      END loop;
      
      wait;
   end process; 

END;
