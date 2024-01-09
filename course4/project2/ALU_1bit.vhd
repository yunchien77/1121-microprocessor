LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.course4_package.all;

ENTITY ALU_1bit IS
	PORT( A, B, less, Cin : IN STD_LOGIC;
		opcode : IN STD_LOGIC_VECTOR( 3 downto 0 );
		result, set, Cout : OUT STD_LOGIC);
END ALU_1bit;


ARCHITECTURE main OF ALU_1bit IS
	SIGNAL A_temp, B_temp, setout: STD_LOGIC;
BEGIN

	WITH opcode(3) SELECT
		A_temp <= A WHEN '0',
					 NOT A WHEN '1';
					 
	WITH opcode(2) SELECT
		B_temp <= B WHEN '0',
					 NOT B WHEN '1';
					 
	label1: fulladd PORT MAP(Cin, A_temp, B_temp, setout, Cout);

	WITH opcode(1 DOWNTO 0) SELECT
		result <=  (A_temp AND B_temp) WHEN "00",
					  (A_temp OR B_temp) WHEN "01",
					  setout WHEN "10",
					  less WHEN "11";
					  
	label2: set <= setout;
	
END main;