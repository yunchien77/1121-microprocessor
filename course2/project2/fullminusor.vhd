LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.course2_package.all;

ENTITY fullminusor IS
	PORT(	
			x: in std_logic_vector(7 downto 0);
			y: in std_logic_vector(7 downto 0);
			
			a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1: OUT std_logic;
			Overflow : OUT STD_LOGIC
			);
			
END fullminusor;

ARCHITECTURE minus OF fullminusor IS
	SIGNAL Cin, Cout: std_logic;
	SIGNAL c: std_logic_vector(7 downto 0);
	SIGNAL s: std_logic_vector(7 downto 0);
BEGIN
	stage0: fullminus PORT MAP ( '1', x(0), not y(0), s(0), c(0) ) ;
	stage1: fullminus PORT MAP ( c(0), x(1), not y(1), s(1), c(1) ) ;
	stage2: fullminus PORT MAP ( c(1), x(2), not y(2), s(2), c(2) ) ;
	stage3: fullminus PORT MAP ( c(2), x(3), not y(3), s(3), c(3) ) ;
	stage4: fullminus PORT MAP ( c(3), x(4), not y(4), s(4), c(4) ) ;
	stage5: fullminus PORT MAP ( c(4), x(5), not y(5), s(5), c(5) ) ;
	stage6: fullminus PORT MAP ( c(5), x(6), not y(6), s(6), c(6) ) ;
	stage7: fullminus PORT MAP ( Cin => c(6), Cout => c(7), x => x(7), y => not y(7), s => s(7) ) ;
	stage8: Overflow <= not c(7);
	stage9: hex PORT MAP ( S(0), S(1), S(2), S(3), S(4), S(5), S(6), S(7), a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1);
END minus;
