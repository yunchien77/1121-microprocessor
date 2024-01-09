LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.course3_package.all;


ENTITY BCDAdd_4bit is
	port( x, y : IN STD_LOGIC_VECTOR(3 downto 0);
			Cin : IN STD_LOGIC;
			S : OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout : OUT STD_LOGIC);
END BCDAdd_4bit;

ARCHITECTURE func of BCDAdd_4bit is
	SIGNAL c: std_logic_vector(7 downto 0);
	SIGNAL t: std_logic_vector(3 downto 0);
	
BEGIN
	stage0: fulladd PORT MAP ( Cin,  x(0), y(0), t(0), c(0) ) ;
	stage1: fulladd PORT MAP ( c(0), x(1), y(1), t(1), c(1) ) ;
	stage2: fulladd PORT MAP ( c(1), x(2), y(2), t(2), c(2) ) ;
	stage3: fulladd PORT MAP ( c(2), x(3), y(3), t(3), c(3) ) ;
	
	stage4: fulladd PORT MAP ( '0' , t(0), '0' , s(0), c(4) ) ;
	stage5: fulladd PORT MAP ( c(4), t(1), (C(3) or(t(3) and (t(1) or t(2)))), s(1), c(5));
	stage6: fulladd PORT MAP ( c(5), t(2), (C(3) or(t(3) and (t(1) or t(2)))), s(2), c(6));
	stage7: fulladd PORT MAP ( c(6), t(3), '0' , s(3), c(7)) ;
	stage8: Cout <= (C(3) or C(7));
END func;