----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:37 11/14/2017 
-- Design Name: 
-- Module Name:    lab3module - Behavioral 
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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity lab3module is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end lab3module;

architecture Behavioral of lab3module is
 -- Y <= 12 - X  
begin 

WITH X SELECT
    Y<= "1100" when "0000", -- 12-0 = 12
    "1011" when "0001", -- 12-1 = 11
    "1010" when "0010", -- 12-2 = 10
    "1001" when "0011", -- 12-3 = 9
    "1000" when "0100", -- 12-4 = 8
    "0111" when "0101", -- 12-5 = 7
    "0110" when "0110", -- 12-6
    "0101" when "0111", -- 12-7
    "0100" when "1000", -- 12-8
    "0011" when "1001", -- 12-9
    "0010" when "1010", -- 12-10
    "0001" when "1011", -- 12-11
    "0000" when "1100", -- 12-12 = 0
    "1111" when "1101", -- 12-13 = 15
    "1110" when "1110", -- 12-14 = 14 
    "1101" when "1111", -- 12-15 = 13 
    "XXXX" when others;

end Behavioral;

