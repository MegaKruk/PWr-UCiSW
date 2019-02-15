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
           x : in  STD_LOGIC_VECTOR (7 downto 0);
           Rdy : in STD_LOGIC;
           y : out  STD_LOGIC
           );
end L4Z1;

architecture Behavioral of L4Z1 is

--signal Q : STD_LOGIC_VECTOR (6 downto 0);
type state_type is ( q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12);
--type typeByteArray is array ( NATURAL range <> ) of STD_LOGIC_VECTOR( 7 downto 0 );
--variable arrBytes : typeByteArray( 13 downto 0 );
signal state, next_state : state_type;

begin

process1 : process( Clk )
   begin
   if (rising_edge( Clk )) and (CE = '1') and (Rdy = '1') then
      if Reset = '1' then
         state <= q0;
      else
         state <= next_state;
      end if;
   end if;
end process process1;

process2 : process( state, x )
   begin
   next_state <= state; -- by default
   
   case state is
   
      when q0 =>
      if x = "00101011" then -- 2B
      next_state <= q1;
      else
      next_state <= q0;
      end if;
      
      when q1 =>
      if x = "11110000" then -- F0
      next_state <= q2;
      else
      next_state <= q0;
      end if;
      
      when q2 =>
      if x = "00101011" then -- 2B
      next_state <= q3;
      else
      next_state <= q0;
      end if;
   
      when q3 =>
      if x = "00111010" then  -- 3A
      next_state <= q4;
      else
      next_state <= q0;
      end if;
      
      when q4 =>
      if x = "11110000" then -- F0
      next_state <= q5;
      else
      next_state <= q0;
      end if;
      
      when q5 =>
      if x = "00111010" then  -- 3A
      next_state <= q6;
      else
      next_state <= q0;
      end if;
      
      when q6 =>
      if x = "00111010" then  -- 3A
      next_state <= q7;
      else
      next_state <= q0;
      end if;
      
      when q7 =>
      if x = "11110000" then -- F0
      next_state <= q8;
      else
      next_state <= q0;
      end if;
      
      when q8 =>
      if x = "00111010" then  -- 3A
      next_state <= q9;
      else
      next_state <= q0;
      end if;
      
      when q9 =>
      if x = "01000010" then  -- 42
      next_state <= q10;
      else
      next_state <= q0;
      end if;
      
      when q10 =>
      if x = "11110000" then -- F0
      next_state <= q11;
      else
      next_state <= q0;
      end if;
      
      when q11 =>
      if x = "01000010" then  -- 42
      next_state <= q12;
      else
      next_state <= q0;
      end if;
      
      when q12 =>
      if x = "00101011" then  -- 2B
      next_state <= q1;
      else
      next_state <= q0;
      end if;
   
   end case;
   
   
end process process2;

-- In place of process3:

process3 : process(state)
begin
   if state = q12 then
      y <= '1';
   else
      y <= '0';
   end if;
end process process3;

--else '0';

end Behavioral;

