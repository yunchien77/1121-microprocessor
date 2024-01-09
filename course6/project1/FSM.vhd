library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM is
	GENERIC ( N : INTEGER := 3);
	port(
		clk, reset, w: in std_logic;
		output: buffer std_logic_vector(N-1 downto 0)
		);
end FSM;

architecture main of FSM is
begin
	process
	begin
		WAIT UNTIL Clk'EVENT AND clk = '1';
		if reset = '1' then
			output <= "000";
		else
			if w = '1' then
				if output = "000" then
					output <= "001";
				elsif output = "001" then
					output <= "011";
				elsif output = "011" then
					output <= "100";
				elsif output = "010" then
					output <= "100";
				else
					output <= "101";
				end if;
			else
				if output = "000" then
					output <= "000";
				elsif output = "001" then
					output <= "010";
				elsif output = "011" then
					output <= "100";
				elsif output = "010" then
					output <= "100";
				elsif output = "100" then
					output <= "001";
				else
					output <= "101";
				end if;
			end if;
		end if;
	end process;
end main;