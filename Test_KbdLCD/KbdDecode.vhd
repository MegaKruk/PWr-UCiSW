library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KbdDecode is
    Port ( KbdDO : in  STD_LOGIC_VECTOR( 7 downto 0 );
           KbdE0, KbdF0, KbdDataRdy : in  STD_LOGIC;
           LCD_WE, LCD_DnI : out  STD_LOGIC;
           LCD_DI : out  STD_LOGIC_VECTOR( 7 downto 0 )
           );
end KbdDecode;

architecture RTL of KbdDecode is
begin

  process( KbdDO, KbdE0, KbdF0, KbdDataRdy )
  begin
    case KbdDataRdy & KbdF0 & KbdE0 & KbdDO is

      when "100" & X"45" => -- "0"
        LCD_DI <= X"30";
        LCD_DnI <= '1';
        LCD_WE <= '1';

      when "100" & X"16" => -- "1"
        LCD_DI <= X"31";
        LCD_DnI <= '1';
        LCD_WE <= '1';

      when "101" & X"6C" => -- Home
        LCD_DI <= X"80";  -- LCD Home1
        LCD_DnI <= '0';
        LCD_WE <= '1';

      when "100" & X"5A" => -- Enter
        LCD_DI <= X"C0";  -- LCD Home2
        LCD_DnI <= '0';
        LCD_WE <= '1';

      when others =>
        LCD_DI <= "--------";
        LCD_DnI <= '-';
        LCD_WE <= '0';

    end case;
  end process;

end RTL;

