LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY nbitShift IS
GENERIc ( N : INTEGER := 8);
PORT(     clk   : IN STD_LOGIc;
			 clear : IN STD_LOGIC;
			 load  : IN STD_LOGIC;
			 lr_sel: IN STD_LOGIC;
			 di	 : IN STD_LOGIC_VECTOR( N-1 downto 0);
			 sdi   : IN STD_LOGIC;
			 qo    : BUFFER STD_LOGIC_VECTOR( N-1 downto 0));
END nbitShift;

ARCHITECTURE main OF nbitShift IS
BEGIN
		PROCESS
		BEGIN
				WAIT UNTIL Clk'EVENT AND clk = '1';
				IF clear = '1' THEN
						for_c: FOR i IN 0 to N-1 LOOP
							qo(i) <= '0';
						END LOOP;

				
				ELSE
						IF load = '1' THEN
								qo <= di;
								
						ELSE
								IF lr_sel = '1' THEN
										for_r: FOR i IN 0 to N-2 LOOP
												qo(i) <= qo(i + 1);
										END LOOP;
										
										qo(N-1) <= sdi;
								ELSE
										for_l: FOR i IN N-2 downto 0 LOOP
												qo(i + 1) <= qo(i);
										END LOOP;
										
										qo(0) <= sdi;
										
								END IF;
								
						END IF;
				END IF;
		END PROCESS;
END main;