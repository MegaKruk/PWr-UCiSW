----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:22 01/09/2018 
-- Design Name: 
-- Module Name:    FreqDivider1Hz - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity FreqDivider1Hz is
    Port ( Clk : in  STD_LOGIC;
           Clk_LF : out  STD_LOGIC);
end FreqDivider1Hz;

architecture Behavioral of FreqDivider1Hz is
	type state_type is (A, B);
	signal state, next_state : state_type;
	
begin
process1 : process(Clk)
		variable i : integer := 0;
	
	begin
		if rising_edge(Clk) then
			-- Clock frequency divider
			-- 50 MHz -> 1 Hz
			if i <= 25000000 then
				i := i + 1;
			elsif i > 25000000 then
				i := 0;
				state <= next_state;
			end if;
		end if;
	end process process1;
   
	process2 : process(state)
	begin
		next_state <= state; -- by default
		
		case state is
			when A =>
				next_state <= B;
			when B =>
				next_state <= A;
		end case;
	end process process2;
	
	Clk_LF <= '1' when state = A else '0';
end Behavioral;

