----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    8:21:54 11/01/2019
-- Design Name: 
-- Module Name:    lab6 - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab6 is
    Port ( CE : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
           Dir : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (63 downto 0));
end lab6;

architecture Behavioral of lab6 is
	signal counter : UNSIGNED (7 downto 0);
	
begin
	process(Clk, Reset)
	begin
		if Reset = '1' then
			counter <= "00000000";
		elsif rising_edge(Clk) then
			if Dir = '0' and CE = '1' then
				counter <= counter + 1;
			elsif CE = '1' then
				counter <= counter - 1;
			end if;
		end if;
	end process;
	
	Y <= X"00000000000000" & STD_LOGIC_VECTOR(counter);
end Behavioral;

