Library ieee;
USE ieee.std_logic_1164.all;

ENTITY seven_segment IS
	PORT( W, X, Y, Z : IN STD_LOGIC;
	      a, b, c, d, e, f, g : OUT STD_LOGIC);
END seven_segment;

ARCHITECTURE LogicFunc OF seven_segment IS
BEGIN
	a <= (NOT W AND NOT X AND NOT Y AND Z) 
			OR (NOT W AND X AND NOT Y AND NOT Z) 
			OR (W AND NOT X AND Y AND Z) 
			OR (W AND X AND NOT Y);
	b <= (NOT W AND X AND NOT Y AND Z) 
			OR (NOT W AND X AND Y AND NOT Z)
			OR (W AND NOT X AND Y AND Z)
			OR (W AND X AND NOT Z)
			OR (W AND X AND Y);
	c <= (NOT W AND NOT X AND Y AND NOT Z)
			OR (W AND X AND NOT Z)
			OR (W AND X AND Y);
	d <= (NOT X AND NOT Y AND Z)
			OR (NOT W AND X AND NOT Y AND NOT Z)
			OR (X AND Y AND Z)
			OR (W AND NOT X AND Y AND NOT Z);
	e <= (NOT W AND Z) 
			OR (NOT W AND X AND NOT Y)
			OR (NOT X AND NOT Y AND Z);
	f <= (NOT W AND NOT X AND Z)
			OR (NOT W AND NOT X AND Y)
			OR (NOT W AND Y AND Z)
			OR (W AND X AND NOT Y);
	g <= (NOT W AND NOT X AND NOT Y)
			OR (NOT W AND X AND Y AND Z);

END LogicFunc;