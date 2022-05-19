library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ejercicio23 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           F : out  STD_LOGIC;
           F0 : out  STD_LOGIC;
			  F1 : out  STD_LOGIC;
           F2 : out  STD_LOGIC);
end ejercicio23;

architecture operaciones of ejercicio23 is

begin
	F0 <= (A or B) and C;
	F1 <= (A and C) or (B and C);
	F <= (B and C);
	F2 <= A or C;
end operaciones;
