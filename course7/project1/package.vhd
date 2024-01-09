LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE course7_package IS
	
	component seven_segment
		PORT( W0, X0, Y0, Z0, 
				W1, X1, Y1, Z1,
				W2, X2, Y2, Z2,
				W3, X3, Y3, Z3	: IN STD_LOGIC;
				a0, b0, c0, d0, e0, f0, g0,
				a1, b1, c1, d1, e1, f1, g1,
				a2, b2, c2, d2, e2, f2, g2,
				a3, b3, c3, d3, e3, f3, g3: OUT STD_LOGIC);
	END component seven_segment;

END course7_package;