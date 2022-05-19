library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity robot is
    Port ( C0 : in  STD_LOGIC;
           C1 : in  STD_LOGIC;
           C2 : in  STD_LOGIC;
           C3 : in  STD_LOGIC;
           S : out  STD_LOGIC);
end robot;

architecture Behavioral of robot is
	
begin
	S <= '1' when (C0 = '1' and C1 = '1' and C2 = '1' and C3 = '1')
		else '0';
end Behavioral;
