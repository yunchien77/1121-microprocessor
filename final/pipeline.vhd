LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.course8_package.all;


ENTITY pipeline IS
 PORT( clk: IN STD_LOGIC;
  data: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  opcode: IN STD_LOGIC_VECTOR(3 downto 0);
  rs, rt: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
  a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1, a2, b2, c2, d2, e2, f2, g2, a3, b3, c3, d3, e3, f3, g3,
  a4, b4, c4, d4, e4, f4, g4, a5, b5, c5, d5, e5, f5, g5: OUT std_logic;
  IF_LED, ID_LED, EX_LED, WB_LED: out std_logic
   );
END pipeline;


architecture main of pipeline is
SIGNAL IF_op, ID_op, EX_op, WB_op: std_logic_vector(3 downto 0);
SIGNAL IF_rs, IF_rt, ID_rs, ID_rt, EX_rs, EX_rt: std_logic_vector(1 downto 0);
SIGNAL ID_s, ID_t, ID_lm, EX_result: std_logic_vector(7 downto 0);
SIGNAL IF_mux1, IF_mux2, ID_mux1, ID_mux2, EXMux1, EXMux2: std_logic;
SIGNAL q, s_temp, t_temp, lm: std_logic_vector(7 downto 0);
SIGNAL r0, r1, r2, r3: std_logic_vector(7 downto 0);
SIGNAL show_s, show_t: std_logic_vector(7 downto 0);

begin

IFetch: process
begin
	wait until clk'event and clk = '1';
	if opcode = "1111" then
		IF_LED <= '0';
	else
		IF_rs <= rs;
		IF_rt <= rt;
		IF_LED <= '1';
	end if;
	IF_op <= opcode;
end process;

IDecode: process
begin
	wait until clk'event and clk = '1';
	
	if IF_op = "1111" then
		ID_LED <= '0';
		
	else
	ID_LED <= '1';
	if IF_op(3 downto 1) = "000" then
		case IF_op(0) is
			when '0' =>
				ID_lm <= data;
			when '1' =>
				case IF_rt is
				when "00" =>
					ID_lm <= r0;
				when "01" =>
					ID_lm <= r1;
				when "10" =>
					ID_lm <= r2;
				when "11" =>
					ID_lm <= r3;
				end case;
		end case;
	else
		case IF_rs is 
		when "00" =>
			ID_s <= r0;
		when "01" =>
			ID_s <= r1;
		when "10" =>
			ID_s <= r2;
		when "11" =>
			ID_s <= r3;
		end case;
		
		case IF_rt is
		when "00" =>
					ID_t <= r0;
				when "01" =>
					ID_t <= r1;
				when "10" =>
					ID_t <= r2;
				when "11" =>
					ID_t <= r3;
				end case;
		end if;
	end if;
		ID_op <= IF_op;
		ID_rs <= IF_rs;
		ID_rt <= IF_rt;
		ID_mux1 <= IF_mux1;
		ID_mux2 <= IF_mux2;
end process;

divise: diviser PORT MAP(clk,'0', t_temp, s_temp, q);

EXE:process
begin
	wait until clk'event and clk = '1';
	if ID_op = "1111" then
		EX_LED <= '0';
		
	else
	EX_LED <= '1';
	EXMux1 <= ID_mux1;
	EXMux2 <= ID_mux2;
	
	if ID_op(3 downto 1) = "000" then
		EX_result <= ID_lm;
		
	else
		case EXMux1 is
		when '0' =>
			s_temp <= ID_s;
		when '1' =>
			s_temp <= EX_result;
		end case;
		
		case EXMux2 is
		when '0' =>
			t_temp <= ID_t;
		when '1' =>
			t_temp <= EX_result;
		end case;
		
		case EX_op is
            when "0010" =>
              EX_result <= s_temp + t_temp;
            when "0011" =>
              EX_result <= s_temp - t_temp;
            when "0100" =>
              EX_result <= s_temp and t_temp;
            when "0101" =>
              EX_result <= s_temp or t_temp;
            when "0110" =>
					EX_result <= s_temp nor t_temp;
				when "0111" =>
					if   s_temp < t_temp then
						 EX_result <= "00000001";
					else
						 EX_result <= "00000000";
				   end if;
				when "1000" =>
              EX_result <= q;
				 when others =>
				 
          end case;
		end if;
	end if;
		EX_op <= ID_op;
		EX_rs <= ID_rs;
		EX_rt <= ID_rt;
end process;

WBack:process
begin
	wait until clk'event and clk = '1';
	if EX_op = "1111" then
		WB_LED <= '0';
	else
		WB_LED <= '1';
		case EX_rs is
		when "00" =>
				r0 <= EX_result;
			when "01" =>
				r1 <= EX_result;
			when "10" =>
				r2 <= EX_result;
			when "11" =>
				r3 <= EX_result;
			end case;
		end if;
end process;

Hazard:process
begin
	wait until clk'event and clk = '1';
	if ID_rs = IF_rs then
		IF_mux1 <= '1';
	else
		IF_mux1 <= '0';
	end if;
	
	if ID_rs = IF_rt then 
		IF_mux2 <= '1';
	else
		IF_mux2 <= '0';
	end if;
end process;

show_select: with EX_rs select
		show_s <= r0 when "00",
					r1 when "01",
					r2 when "10",
					r3 when "11";
					
		with EX_rt select
		show_t <= r0 when "00",
					r1 when "01",
					r2 when "10",
					r3 when "11";

show_rs: seven_segment PORT MAP(show_s(3), show_s(2), show_s(1), show_s(0), show_s(7), show_s(6), show_s(5), show_s(4), a1, b1, c1, d1, e1, f1, g1, a0, b0, c0, d0, e0, f0, g0);
show_rt: seven_segment PORT MAP(show_t(3), show_t(2), show_t(1), show_t(0), show_t(7), show_t(6), show_t(5), show_t(4), a3, b3, c3, d3, e3, f3, g3, a2, b2, c2, d2, e2, f2, g2);
show_bus: seven_segment PORT MAP(data(3), data(2), data(1), data(0), data(7), data(6), data(5), data(4), a4, b4, c4, d4, e4, f4, g4, a5, b5, c5, d5, e5, f5, g5);
end main;