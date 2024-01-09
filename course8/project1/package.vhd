LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE course8_package IS
	
	component seven_segment
		PORT( W0, X0, Y0, Z0, 
				W1, X1, Y1, Z1: IN STD_LOGIC;
				a0, b0, c0, d0, e0, f0, g0,
				a1, b1, c1, d1, e1, f1, g1: OUT STD_LOGIC);
	END component seven_segment;

END course8_package;