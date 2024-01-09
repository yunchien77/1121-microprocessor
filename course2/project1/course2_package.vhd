LIBRARY ieee;
USE ieee.std_logic_1164.all;

package course2_package IS 
	component fulladd 
		PORT ( Cin, x, y : in std_logic;
				 s, Cout : out std_logic);
	END component fulladd;
	
	component hex
		PORT ( Z0, Y0, X0, W0, Z1, Y1, X1, W1: IN std_logic;
				 a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1: OUT std_logic);
	END component hex;
END course2_package;