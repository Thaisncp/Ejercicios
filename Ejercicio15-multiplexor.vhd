library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexor is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           E2 : in  STD_LOGIC;
           E3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           F : out  STD_LOGIC);
end multiplexor;
