LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.course3_package.all;

ENTITY BCDAdder IS
	PORT(
		X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
		a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1: OUT std_logic;
		overflow : OUT STD_LOGIC
		);
END BCDAdder;

ARCHITECTURE MAIN OF BCDAdder IS
	SIGNAL Cout1, Cout2 : STD_LOGIC;
	SIGNAL S : STD_LOGIC_VECTOR(7 downto 0);
BEGIN
	stage0: BCDAdd_4bit PORT MAP( X(3 downto 0), Y(3 downto 0), '0', S(3 downto 0), Cout1);
	stage1: BCDAdd_4bit PORT MAP( X(7 downto 4), Y(7 downto 4), Cout1, S(7 downto 4), Cout2);
	stage2: overflow <= Cout2;
	stage3: SevenSegment PORT MAP ( S(0), S(1), S(2), S(3), S(4), S(5), S(6), S(7), a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1);
END MAIN; 