library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity escalera is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC);
end escalera;

architecture apagador of escalera is
	component Sand is
		port(A, B: in std_logic;
				S: out std_logic);
	end component;
	component Sor is
		port(A, B, C: in std_logic;
				S: out std_logic);
	end component;
	signal X: std_logic_vector(0 to 3);
begin
	U0 : Sand port map (A, not B, X(0));
	U1 : Sand port map (C, not B, X(1));
	U2 : Sand port map (A, C, X(2));
	U3 : Sor port map (X(0), X(1), X(2), X(3));
	S <= X(3);
end apagador;
