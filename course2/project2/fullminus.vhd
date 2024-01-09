LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullminus is
	port( Cin, x, y : in std_logic;
			s, Cout : out std_logic);
END fullminus;

ARCHITECTURE func of fullminus is
BEGIN
	s <= x xor y xor Cin;
	Cout <= (x and y) or (Cin and x) or (Cin and y);
END func;