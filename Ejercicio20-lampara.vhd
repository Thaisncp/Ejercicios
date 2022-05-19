library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejercicio20 is
    Port ( E : in  STD_LOGIC;
           S : out  STD_LOGIC);
end ejercicio20;

architecture prender of ejercicio20 is
begin
	boton : process(E)
	begin
		if E = '0' then
			S <= '0';
		else 
			S <= '1';
		end if;
	end process boton;
end prender;
