
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY diviser IS
 PORT( clk,clear: IN STD_LOGIC;
   divisor, dividend: IN STD_LOGIC_VECTOR(7 downto 0);
   q : out STD_LOGIC_VECTOR(7 downto 0)
   );
END diviser;


architecture main of diviser is
 signal w : STD_LOGIC :='0';
 signal re : INTEGER:= 0;
 signal run : std_logic;
 signal temp_s, temp_p: STD_LOGIC_VECTOR(15 downto 0);
signal output : STD_LOGIC_VEcTOR(2 downto 0);
signal remainder: STD_LOGIC_VECTOR(15 DOWNTO 0);

begin

 
 PROCESS
 begin
  WAIT UNTIL Clk'EVENT AND clk = '1';
  if clear = '1' then
   output <= "100";
  else
   Case output is
    when "000" =>
     output <= "111";
     
    when "111" =>
     output <= "001";
     
    when "001" =>
     if w = '1' then
    output <= "011";
     else
    output <= "010";
     end if;
     
    when "011" =>
     if w = '1' then
    output <= "101";
     else
    output <= "001";
     end if;
     
    when "010" =>
     if w = '1' then
    output <= "101";
     else
    output <= "001";
     end if;
    
    when "100"=>
    output <= "000";
    
    when others =>
    output <= "110";
     
    end Case;
  end if;
 end PROCESS;
 
 

 case3: temp_s <= (( remainder(15 downto 8) - divisor) & remainder(7 downto 0));
 
 case4: temp_p <= (( remainder(15 downto 8) + divisor) & remainder(7 downto 0));


 output_select: process
 begin
  WAIT UNTIL Clk'EVENT AND clk = '1';
  case output is
   when "000" =>
   remainder <= ("00000000" & dividend);

   when "111" =>
    for_1: FOR i IN 14 downto 0 loop
        remainder(i + 1) <= remainder(i);
      END loop;
      remainder(0) <= '0';
     
    when "001" =>
     remainder <= (( remainder(15 downto 8) - divisor) & remainder(7 downto 0));
     
    when "011" =>
     for_2: FOR i IN 14 downto 0 loop
        remainder(i + 1) <= remainder(i);
      END loop;
      remainder(0) <= '1';
     
    when "010" =>
     for_3: FOR i IN 14 downto 0 loop
        remainder(i + 1) <= temp_p(i);
      END loop;
      remainder(0) <= '0';
    
    when "100"=>
    remainder <= "0000000000000000";
   
    when "101" =>
    for_r: FOR i IN 8 to 14 loop
        remainder(i) <= remainder(i + 1);
      END loop;
      remainder(15) <= '0';
    remainder(7 downto 0) <= remainder(7 downto 0);
    
    when others =>
    remainder <= remainder;
     
  end Case;
 end process;
 
 count:process
 begin
  WAIT UNTIL Clk'EVENT AND clk = '1'; 
  if clear = '1' then
   re <= 0;
  elsif output = "001" and run = '1' then
   re <= re + 1;
  else 
   re <= re;
  end if;
 end process;
 run <= '0' when re = 8 else '1';
 

 with output select
   w <= not temp_s(15) when "001",
    not run when "011",
    not run when "010",
    '0' when others;

q <= remainder(7 downto 0);
end main;