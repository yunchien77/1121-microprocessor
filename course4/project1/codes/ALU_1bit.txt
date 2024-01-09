LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.course4_package.all;

ENTITY ALU_1bit IS
	PORT(
		A, B: IN STD_LOGIC;
		opcode: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		a0, b0, c0, d0, e0, f0, g0, overflow: OUT STD_LOGIC
	);
END ALU_1bit;


ARCHITECTURE main OF ALU_1bit IS
	SIGNAL A_temp, B_temp, less, Cout, result: STD_LOGIC;
BEGIN

	WITH opcode(3) SELECT
		A_temp <= A WHEN '0',
					 NOT A WHEN '1';
					 
	WITH opcode(2) SELECT
		B_temp <= B WHEN '0',
					 NOT B WHEN '1';
					 
	label1: fulladd PORT MAP(opcode(2), A_temp, B_temp, less, Cout);
	
	WITH opcode(1 DOWNTO 0) SELECT
		result <=  (A_temp AND B_temp) WHEN "00",
					  (A_temp OR B_temp) WHEN "01",
					  less WHEN "10",
					  ((NOT A) AND B) WHEN "11";
	
	label2: seven_segmant PORT MAP(result, '0', '0', '0', a0, b0, c0, d0, e0, f0, g0);

	WITH opcode(1 DOWNTO 0) SELECT
		overflow <= '0' WHEN "00",
						'0' WHEN "01",
						Cout WHEN "10",
						'0' WHEN "11";	
	

END main;
