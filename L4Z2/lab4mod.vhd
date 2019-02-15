library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab4mod is
    Port ( Wej_syg : in  STD_LOGIC;
			  Wej_clk : in STD_LOGIC;
           Wej_reset : in  STD_LOGIC;
           Wyj_stan : out  STD_LOGIC_VECTOR (7 downto 0) := "11000000";
           Wyj_blok : out  STD_LOGIC);
end lab4mod;

architecture Behavioral of lab4mod is

	type state_type is (stan0, stan1, stan2, stan3, stan4, stan5);
	signal state : state_type := stan0; 
	signal next_state : state_type;
	
begin

	process1 : process( Wej_clk)
	begin
		if rising_edge (Wej_clk) then
			if Wej_reset = '1' then
				state <= stan0;
			else
				state <= next_state;
			end if;			
		end if;
	end process process1;

	process2 : process (state, Wej_syg )
	begin
		next_state <= state;
		
		case state is
			when stan0 =>
				if Wej_syg  = '1' then
					next_state <= stan1;
				end if;
			when stan1 =>
				if Wej_syg  = '0' then
					next_state <= stan2;
				end if;
			when stan2 =>
				if Wej_syg  = '0' then
					next_state <= stan0;
				elsif Wej_syg  = '1' then
					next_State <= stan3;
				end if;
			when stan3 =>
				if Wej_syg  = '0' then
					next_state <= stan0;
				elsif Wej_syg  = '1' then
					next_State <= stan4;
				end if;
			when stan4 =>
				if Wej_syg  = '0' then
					next_state <= stan5;
				elsif Wej_syg = '1' then
					next_state <= stan1;
				end if;
			when stan5 =>
				next_state <= stan5;
		end case;
	end process process2;
	
	process3 : process (state)
	begin
			case state is
				when stan0 =>
					Wyj_stan <= "11000000";
				when stan1 =>
					Wyj_stan <= "11111001";
				when stan2 =>
					Wyj_stan <= "10100100";
				when stan3 =>
					Wyj_stan <= "10110000";
				when stan4 =>
					Wyj_stan <= "10011001";
				when stan5 =>
					Wyj_stan <= "10010010";
			end case;
	end process process3;
	
	Wyj_blok <= '1' when state = stan5 else '0';
	
end Behavioral;

