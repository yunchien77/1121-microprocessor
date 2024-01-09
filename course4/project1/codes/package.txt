LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE course4_package IS

	component fulladd 
		PORT ( Cin, x, y : in std_logic;
				 s, Cout : out std_logic);
	END component fulladd;
	
	component seven_segmant
		PORT ( Z0, Y0, X0, W0: IN std_logic;
				 a0, b0, c0, d0, e0, f0, g0: OUT std_logic);
	END component seven_segmant;

END course4_package;