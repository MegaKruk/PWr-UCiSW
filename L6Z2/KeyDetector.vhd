----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:08 01/09/2018 
-- Design Name: 
-- Module Name:    KeyDetector - Behavioral 
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

entity KeyDetector is
    Port ( DI : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Dir : out  STD_LOGIC);
end KeyDetector;

architecture Behavioral of KeyDetector is
	type state_type is (A, B);
	signal state, next_state : state_type;
	
begin
	process1 : process(Clk, Reset, CE)
	begin
		if Reset = '1' then
			state <= A;
		elsif rising_edge(Clk) and CE = '1' then
			state <= next_state;
		end if;
	end process process1;
   
	process2 : process(state, DI)
	begin
		next_state <= state; -- by default
		
		case state is
			when A =>
				if DI = "01110010" then
					next_state <= B;
				end if;
			when B =>
				if DI = "01110101" then
					next_state <= A;
				end if;
		end case;
	end process process2;
	
	Dir <= '1' when state = B else '0';
end Behavioral;

