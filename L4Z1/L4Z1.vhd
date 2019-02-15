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
--library UNISIM;
--use UNISIM.VComponents.all;

entity L4Z1 is
    Port ( Clk : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           x : in  STD_LOGIC;
           y : out  STD_LOGIC);
end L4Z1;

architecture Behavioral of L4Z1 is

signal Q : STD_LOGIC_VECTOR (6 downto 0);
type state_type is ( nothing, A, B, C, D, E );
signal state, next_state : state_type;

begin

process1 : process( Clk )
   begin
   if rising_edge( Clk ) and CE = '1' then
      if Reset = '1' then
         state <= A;
      else
         state <= next_state;
      end if;
   end if;
end process process1;

process2 : process( state, x )
   begin
   next_state <= state; -- by default
   
   case state is
	
		when nothing =>
		if x = '0' then
			next_state <= A;
		end if;
		
		when A =>
		if x = '1' then
			next_state <= B;
		else
			next_state <= A;
		end if;
			
		when B =>
		if x = '1' then
			next_state <= C;
		else
			next_state <= A;
		end if;
		
		when C =>
		if x = '0' then
			next_state <= D;
		else
			next_state <= nothing;
		end if;
		
		when D =>
		if x = '1' then
			next_state <= E;
		else
			next_state <= A;
		end if;
		
		when E =>
		if x = '0' then
			next_state <= A;
		else
			next_state <= nothing;
		end if;
   
   end case;
   
   
end process process2;

-- In place of process3:

process3 : process(state)
begin
   if state = E then
      y <= '1';
   else
      y <= '0';
   end if;
end process process3;

--else '0';

end Behavioral;

