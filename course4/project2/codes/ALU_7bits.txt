LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.course4_package.all;

ENTITY ALU_7bits IS
	PORT( A, B : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			overflow, a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1: OUT STD_LOGIC
	);
END ALU_7bits;


ARCHITECTURE main OF ALU_7bits IS
	SIGNAL less, set, result, Cout : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL Cin, s, temp : STD_LOGIC;

BEGIN
	WITH opcode(2 DOWNTO 1) SELECT
		Cin <= '1' WHEN "11",
				 '0' WHEN OTHERS;
	
	for1: FOR i IN 0 TO 6 GENERATE
		
		if1: IF i = 0 GENERATE
			stage1: ALU_1bit PORT MAP(A(0), B(0), '0', Cin, opcode(3 downto 0), s, set(0), Cout(0));
		END GENERATE;

		if2: IF i > 0 GENERATE
			stage2: ALU_1bit PORT MAP(A(i), B(i), '0', Cout(i-1), opcode(3 downto 0), result(i), set(i), Cout(i));
		END GENERATE;
		
	END GENERATE;

	stage3: ALU_1bit PORT MAP(A(0), B(0), set(6), Cin, opcode(3 downto 0), result(0), set(0), temp);
	
	WITH opcode(1 DOWNTO 0) SELECT
		overflow <= (Cout(6) XOR Cout(5)) WHEN "10",
						'0' WHEN OTHERS;
						
	stage4: seven_segment PORT MAP(result(0), result(1), result(2), result(3), result(4), result(5), result(6), '0' , a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1);
	
END main;
