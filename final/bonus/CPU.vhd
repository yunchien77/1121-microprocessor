LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.course8_package.all;


ENTITY CPU IS
 PORT( clk: IN STD_LOGIC;
  data: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
   opcode: IN STD_LOGIC_VECTOR(3 downto 0);
  rs, rt: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
  output: BUFFER std_logic_vector(2 downto 0);
   a0, b0, c0, d0, e0, f0, g0, a1, b1, c1, d1, e1, f1, g1, a2, b2, c2, d2, e2, f2, g2, a3, b3, c3, d3, e3, f3, g3,
  a4, b4, c4, d4, e4, f4, g4, a5, b5, c5, d5, e5, f5, g5: OUT std_logic
   );
END CPU;


architecture main of CPU is
  SIGNAL r0, r1, r2, r3: std_logic_vector(7 downto 0);
  signal s, t: std_logic_vector(7 downto 0);
  signal s_temp, t_temp: std_logic_vector(7 downto 0);
  signal q: std_logic_vector(7 downto 0);

begin
  process
    begin
      wait until clk'event and clk = '1';
      case output is
        when "000" =>
      output <= "100";
        when "100" =>
      output <= "101";
        when others =>
      output <= "110";
      end case;
  end process;

  with rs select
		s_temp <= r0 when "00",
		r1 when "01",
		r2 when "10",
		r3 when "11";
		
		
	with rt select 
		t <= r0 when "00",
		r1 when "01",
		r2 when "10",
		r3 when "11";
		
	divise: diviser PORT MAP(clk,'0', t, s_temp, q);
		
  process
    begin
      WAIT UNTIL Clk'EVENT AND clk = '1';
      case output is
        when "000" =>
          s <= data;
        when others =>
          case opcode is
            when "0000" => 
              s <= data;
            when "0001" =>
              s <= t;
            when "0010" =>
              s <=   s_temp + t;
            when "0011" =>
              s <=   s_temp and t;
            when "0101" =>
              s <=   s_temp - t;
            when "1001" =>
              s <= t -   s_temp;
            when "0100" =>
              if   s_temp < t then
                s <= "00000001";
              else
                s <= "00000000";
              end if;
				when "1000" =>
					s <= q;
            when others =>
              s <=   s_temp;
          end case;
      end case;
  End process;
  

  Process
	Begin
      WAIT UNTIL Clk'EVENT AND clk = '1';
      case rs is
        when "00" => 
      r0 <= s;
        when "01" =>
      r1 <= s;
        when "10" =>
      r2 <= s;
        when "11" =>
      r3 <= s;
      end case;
	end process;

show_rs: seven_segment PORT MAP(s_temp(3), s_temp(2), s_temp(1), s_temp(0), s_temp(7), s_temp(6), s_temp(5), s_temp(4), a1, b1, c1, d1, e1, f1, g1, a0, b0, c0, d0, e0, f0, g0);
show_rt: seven_segment PORT MAP(t(3), t(2), t(1), t(0), t(7), t(6), t(5), t(4), a3, b3, c3, d3, e3, f3, g3, a2, b2, c2, d2, e2, f2, g2);
show_bus: seven_segment PORT MAP(data(3), data(2), data(1), data(0), data(7), data(6), data(5), data(4), a4, b4, c4, d4, e4, f4, g4, a5, b5, c5, d5, e5, f5, g5);
end main;