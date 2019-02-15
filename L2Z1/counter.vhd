----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:27 11/14/2017 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity counter is
    Port ( DIR : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
           
end counter;

architecture Behavioral of counter is

signal Q : STD_LOGIC_VECTOR (2 downto 0);
signal D : STD_LOGIC_VECTOR (2 downto 0);
signal Up : STD_LOGIC_VECTOR (2 downto 0);
signal Down : STD_LOGIC_VECTOR (2 downto 0);

begin

	F0 : FDCE port map ( Q => Q(0), C => Clock, CE => Enable, CLR => Clear, D=> D(0) );
	F1 : FDCE port map ( Q => Q(1), C => Clock, CE => Enable, CLR => Clear, D=> D(1) );
	F2 : FDCE port map ( Q => Q(2), C => Clock, CE => Enable, CLR => Clear, D=> D(2) );

   Y <= Q;
	
	D <=	Up when DIR = '0' else
			Down;
	
   -- 0 1 2 6 3 4 5 7 up down counter with flip flop D
   with Q select
	Up <= 	"001" when "000", -- 1-0
				"010" when "001", -- 2-1
				"110" when "010", -- 6-2
				"011" when "110", -- 3-6
				"100" when "011", -- 4-3
				"101" when "100", -- 5-4
				"111" when "101", -- 7-5
				"000" when others;
			
	with Q select
	Down <= 	"111" when "000", -- 7-0
				"101" when "111", -- 5-7
				"100" when "101", -- 4-5
				"011" when "100", -- 3-4
				"110" when "011", -- 6-3
				"010" when "110", -- 2-6
				"001" when "010", -- 1-2
				"000" when others;
	 
end Behavioral;

		