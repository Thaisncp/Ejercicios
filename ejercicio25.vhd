library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity estructurada is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC);
end estructurada;

architecture Behavioral of estructurada is
Component Sand is
      Port (A, B : in STD_LOGIC;
             F : out STD_LOGIC);
end Component;
	
Component Sor is
      Port (A, B : in STD_LOGIC;
             F : out STD_LOGIC);
end Component;

signal X, X0, X1 : STD_LOGIC;
begin

	U0: Sor port map (A, B, X);
	U1: Sand port map (X, C, S0);
	U2: Sand port map (A, C, X0);
	U3: Sand port map (B, C, X1);
	U4: Sor port map (X0, X1, S0);
	U5: Sand port map (B, C, S0);
	U6: Sor port map (A, C, S2);

end Behavioral;
