----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:32 11/28/2017 
-- Design Name: 
-- Module Name:    L4Z1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity L4Z1 is
    Port ( Clk : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end L4Z1;

architecture Behavioral of L4Z1 is

signal Q : STD_LOGIC_VECTOR (2 downto 0);
signal D : STD_LOGIC_VECTOR (2 downto 0);
signal output : STD_LOGIC_VECTOR (2 downto 0);
signal CONC : STD_LOGIC_VECTOR (3 downto 0);
--type state_type is ( nothing, A, B, C, D, E, F );
--signal state, next_state : state_type;

begin
   
   F0 : FDCE port map ( Q => Q(0), C => Clk, CE => CE, CLR => Reset, D=> D(0) );
	F1 : FDCE port map ( Q => Q(1), C => Clk, CE => CE, CLR => Reset, D=> D(1) );
	F2 : FDCE port map ( Q => Q(2), C => Clk, CE => CE, CLR => Reset, D=> D(2) );

   CONC <= Q & x;
   with CONC select
    D <= "000" when "0000",
         "001" when "0001",
         "001" when "0011",
			"010" when "0010",
			"001" when "0101",
			"011" when "0100",
			"100" when "0111",
			"000" when "0110",
			"101" when "1001",
			"000" when "1000",
			"110" when "1011",
			"000" when "1010",
			"001" when "1101",
			"000" when "1100",
         "000" when others;

   y<= '1' when Q = "110" else '0';

end Behavioral;