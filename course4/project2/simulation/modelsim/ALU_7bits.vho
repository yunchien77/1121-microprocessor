-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/02/2023 10:33:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_7bits IS
    PORT (
	A : IN std_logic_vector(6 DOWNTO 0);
	B : IN std_logic_vector(6 DOWNTO 0);
	opcode : IN std_logic_vector(3 DOWNTO 0);
	overflow : BUFFER std_logic;
	a0 : BUFFER std_logic;
	b0 : BUFFER std_logic;
	c0 : BUFFER std_logic;
	d0 : BUFFER std_logic;
	e0 : BUFFER std_logic;
	f0 : BUFFER std_logic;
	g0 : BUFFER std_logic;
	a1 : BUFFER std_logic;
	b1 : BUFFER std_logic;
	c1 : BUFFER std_logic;
	d1 : BUFFER std_logic;
	e1 : BUFFER std_logic;
	f1 : BUFFER std_logic;
	g1 : BUFFER std_logic
	);
END ALU_7bits;

-- Design Ports Information
-- overflow	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f0	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g0	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_7bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_e0 : std_logic;
SIGNAL ww_f0 : std_logic;
SIGNAL ww_g0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \a0~output_o\ : std_logic;
SIGNAL \b0~output_o\ : std_logic;
SIGNAL \c0~output_o\ : std_logic;
SIGNAL \d0~output_o\ : std_logic;
SIGNAL \e0~output_o\ : std_logic;
SIGNAL \f0~output_o\ : std_logic;
SIGNAL \g0~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \for1:4:if2:stage2|B_temp~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \for1:1:if2:stage2|B_temp~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \for1:0:if1:stage1|label1|Cout~0_combout\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \for1:0:if1:stage1|label1|Cout~1_combout\ : std_logic;
SIGNAL \for1:1:if2:stage2|label1|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \for1:2:if2:stage2|B_temp~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \for1:2:if2:stage2|label1|Cout~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \for1:3:if2:stage2|B_temp~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \for1:3:if2:stage2|label1|Cout~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \for1:4:if2:stage2|label1|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \for1:5:if2:stage2|B_temp~0_combout\ : std_logic;
SIGNAL \for1:5:if2:stage2|label1|Cout~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \for1:6:if2:stage2|B_temp~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \overflow~0_combout\ : std_logic;
SIGNAL \for1:5:if2:stage2|Mux0~0_combout\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \for1:5:if2:stage2|Mux0~1_combout\ : std_logic;
SIGNAL \for1:6:if2:stage2|Mux0~0_combout\ : std_logic;
SIGNAL \for1:6:if2:stage2|label1|s~combout\ : std_logic;
SIGNAL \for1:6:if2:stage2|Mux0~1_combout\ : std_logic;
SIGNAL \stage5|a0~0_combout\ : std_logic;
SIGNAL \for1:4:if2:stage2|Mux0~0_combout\ : std_logic;
SIGNAL \for1:4:if2:stage2|Mux0~1_combout\ : std_logic;
SIGNAL \stage5|b0~0_combout\ : std_logic;
SIGNAL \stage5|c0~0_combout\ : std_logic;
SIGNAL \stage5|d0~0_combout\ : std_logic;
SIGNAL \stage5|a0~1_combout\ : std_logic;
SIGNAL \stage5|f0~0_combout\ : std_logic;
SIGNAL \stage5|a0~2_combout\ : std_logic;
SIGNAL \for1:2:if2:stage2|Mux0~0_combout\ : std_logic;
SIGNAL \for1:2:if2:stage2|Mux0~1_combout\ : std_logic;
SIGNAL \stage3|Mux0~8_combout\ : std_logic;
SIGNAL \stage3|Mux0~6_combout\ : std_logic;
SIGNAL \stage3|Mux0~7_combout\ : std_logic;
SIGNAL \for1:3:if2:stage2|Mux0~0_combout\ : std_logic;
SIGNAL \for1:3:if2:stage2|Mux0~1_combout\ : std_logic;
SIGNAL \for1:1:if2:stage2|Mux0~0_combout\ : std_logic;
SIGNAL \for1:1:if2:stage2|Mux0~1_combout\ : std_logic;
SIGNAL \for1:1:if2:stage2|Mux0~2_combout\ : std_logic;
SIGNAL \stage5|a1~0_combout\ : std_logic;
SIGNAL \stage5|b1~0_combout\ : std_logic;
SIGNAL \stage5|c1~0_combout\ : std_logic;
SIGNAL \stage5|d1~0_combout\ : std_logic;
SIGNAL \stage5|e1~0_combout\ : std_logic;
SIGNAL \stage5|f1~0_combout\ : std_logic;
SIGNAL \stage5|g1~0_combout\ : std_logic;
SIGNAL \stage5|ALT_INV_b1~0_combout\ : std_logic;
SIGNAL \stage5|ALT_INV_a0~2_combout\ : std_logic;
SIGNAL \stage5|ALT_INV_f0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_opcode <= opcode;
overflow <= ww_overflow;
a0 <= ww_a0;
b0 <= ww_b0;
c0 <= ww_c0;
d0 <= ww_d0;
e0 <= ww_e0;
f0 <= ww_f0;
g0 <= ww_g0;
a1 <= ww_a1;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\stage5|ALT_INV_b1~0_combout\ <= NOT \stage5|b1~0_combout\;
\stage5|ALT_INV_a0~2_combout\ <= NOT \stage5|a0~2_combout\;
\stage5|ALT_INV_f0~0_combout\ <= NOT \stage5|f0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \overflow~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\a0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|a0~0_combout\,
	devoe => ww_devoe,
	o => \a0~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\b0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|b0~0_combout\,
	devoe => ww_devoe,
	o => \b0~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\c0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|c0~0_combout\,
	devoe => ww_devoe,
	o => \c0~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\d0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|d0~0_combout\,
	devoe => ww_devoe,
	o => \d0~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\e0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|a0~1_combout\,
	devoe => ww_devoe,
	o => \e0~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\f0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ALT_INV_f0~0_combout\,
	devoe => ww_devoe,
	o => \f0~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\g0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ALT_INV_a0~2_combout\,
	devoe => ww_devoe,
	o => \g0~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\a1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|a1~0_combout\,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\b1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ALT_INV_b1~0_combout\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\c1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|c1~0_combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|d1~0_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\e1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|e1~0_combout\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\f1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|f1~0_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\g1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|g1~0_combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\opcode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X114_Y14_N16
\for1:4:if2:stage2|B_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:4:if2:stage2|B_temp~0_combout\ = \opcode[2]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~input_o\,
	datac => \B[4]~input_o\,
	combout => \for1:4:if2:stage2|B_temp~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X114_Y15_N0
\for1:1:if2:stage2|B_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:1:if2:stage2|B_temp~0_combout\ = \opcode[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \for1:1:if2:stage2|B_temp~0_combout\);

-- Location: IOIBUF_X115_Y12_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X114_Y15_N28
\for1:0:if1:stage1|label1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:0:if1:stage1|label1|Cout~0_combout\ = (\opcode[2]~input_o\ & (\opcode[3]~input_o\ $ ((\A[0]~input_o\)))) # (!\opcode[2]~input_o\ & (\B[0]~input_o\ & (\opcode[3]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \for1:0:if1:stage1|label1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LCCOMB_X114_Y15_N6
\for1:0:if1:stage1|label1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:0:if1:stage1|label1|Cout~1_combout\ = (\opcode[1]~input_o\ & ((\B[0]~input_o\ & (\for1:0:if1:stage1|label1|Cout~0_combout\)) # (!\B[0]~input_o\ & ((\opcode[2]~input_o\))))) # (!\opcode[1]~input_o\ & (\for1:0:if1:stage1|label1|Cout~0_combout\ & 
-- (\opcode[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:0:if1:stage1|label1|Cout~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \for1:0:if1:stage1|label1|Cout~1_combout\);

-- Location: LCCOMB_X114_Y15_N2
\for1:1:if2:stage2|label1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:1:if2:stage2|label1|Cout~0_combout\ = (\for1:1:if2:stage2|B_temp~0_combout\ & ((\for1:0:if1:stage1|label1|Cout~1_combout\) # (\A[1]~input_o\ $ (\opcode[3]~input_o\)))) # (!\for1:1:if2:stage2|B_temp~0_combout\ & 
-- (\for1:0:if1:stage1|label1|Cout~1_combout\ & (\A[1]~input_o\ $ (\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \for1:1:if2:stage2|B_temp~0_combout\,
	datac => \for1:0:if1:stage1|label1|Cout~1_combout\,
	datad => \opcode[3]~input_o\,
	combout => \for1:1:if2:stage2|label1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y16_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y16_N0
\for1:2:if2:stage2|B_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:2:if2:stage2|B_temp~0_combout\ = \opcode[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \for1:2:if2:stage2|B_temp~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y15_N12
\for1:2:if2:stage2|label1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:2:if2:stage2|label1|Cout~0_combout\ = (\for1:1:if2:stage2|label1|Cout~0_combout\ & ((\for1:2:if2:stage2|B_temp~0_combout\) # (\opcode[3]~input_o\ $ (\A[2]~input_o\)))) # (!\for1:1:if2:stage2|label1|Cout~0_combout\ & 
-- (\for1:2:if2:stage2|B_temp~0_combout\ & (\opcode[3]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \for1:1:if2:stage2|label1|Cout~0_combout\,
	datac => \for1:2:if2:stage2|B_temp~0_combout\,
	datad => \A[2]~input_o\,
	combout => \for1:2:if2:stage2|label1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y13_N0
\for1:3:if2:stage2|B_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:3:if2:stage2|B_temp~0_combout\ = \B[3]~input_o\ $ (\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \for1:3:if2:stage2|B_temp~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y15_N30
\for1:3:if2:stage2|label1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:3:if2:stage2|label1|Cout~0_combout\ = (\for1:2:if2:stage2|label1|Cout~0_combout\ & ((\for1:3:if2:stage2|B_temp~0_combout\) # (\A[3]~input_o\ $ (\opcode[3]~input_o\)))) # (!\for1:2:if2:stage2|label1|Cout~0_combout\ & 
-- (\for1:3:if2:stage2|B_temp~0_combout\ & (\A[3]~input_o\ $ (\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|label1|Cout~0_combout\,
	datab => \for1:3:if2:stage2|B_temp~0_combout\,
	datac => \A[3]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \for1:3:if2:stage2|label1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X114_Y14_N10
\for1:4:if2:stage2|label1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:4:if2:stage2|label1|Cout~0_combout\ = (\for1:4:if2:stage2|B_temp~0_combout\ & ((\for1:3:if2:stage2|label1|Cout~0_combout\) # (\opcode[3]~input_o\ $ (\A[4]~input_o\)))) # (!\for1:4:if2:stage2|B_temp~0_combout\ & 
-- (\for1:3:if2:stage2|label1|Cout~0_combout\ & (\opcode[3]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \for1:4:if2:stage2|B_temp~0_combout\,
	datac => \for1:3:if2:stage2|label1|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \for1:4:if2:stage2|label1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X114_Y14_N4
\for1:5:if2:stage2|B_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:5:if2:stage2|B_temp~0_combout\ = \B[5]~input_o\ $ (\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \opcode[2]~input_o\,
	combout => \for1:5:if2:stage2|B_temp~0_combout\);

-- Location: LCCOMB_X114_Y14_N6
\for1:5:if2:stage2|label1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:5:if2:stage2|label1|Cout~0_combout\ = (\for1:4:if2:stage2|label1|Cout~0_combout\ & ((\for1:5:if2:stage2|B_temp~0_combout\) # (\A[5]~input_o\ $ (\opcode[3]~input_o\)))) # (!\for1:4:if2:stage2|label1|Cout~0_combout\ & 
-- (\for1:5:if2:stage2|B_temp~0_combout\ & (\A[5]~input_o\ $ (\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:4:if2:stage2|label1|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \for1:5:if2:stage2|B_temp~0_combout\,
	datad => \opcode[3]~input_o\,
	combout => \for1:5:if2:stage2|label1|Cout~0_combout\);

-- Location: IOIBUF_X115_Y9_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X114_Y14_N0
\for1:6:if2:stage2|B_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:6:if2:stage2|B_temp~0_combout\ = \B[6]~input_o\ $ (\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datac => \opcode[2]~input_o\,
	combout => \for1:6:if2:stage2|B_temp~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X114_Y14_N26
\overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \overflow~0_combout\ = (\for1:5:if2:stage2|label1|Cout~0_combout\ & (!\for1:6:if2:stage2|B_temp~0_combout\ & (\A[6]~input_o\ $ (!\opcode[3]~input_o\)))) # (!\for1:5:if2:stage2|label1|Cout~0_combout\ & (\for1:6:if2:stage2|B_temp~0_combout\ & 
-- (\A[6]~input_o\ $ (\opcode[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|label1|Cout~0_combout\,
	datab => \for1:6:if2:stage2|B_temp~0_combout\,
	datac => \A[6]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \overflow~0_combout\);

-- Location: LCCOMB_X114_Y14_N20
\for1:5:if2:stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:5:if2:stage2|Mux0~0_combout\ = \A[5]~input_o\ $ (\opcode[3]~input_o\ $ (((\for1:4:if2:stage2|label1|Cout~0_combout\ & \opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:4:if2:stage2|label1|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \for1:5:if2:stage2|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: LCCOMB_X114_Y14_N14
\for1:5:if2:stage2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:5:if2:stage2|Mux0~1_combout\ = (\for1:5:if2:stage2|Mux0~0_combout\ & (\opcode[1]~input_o\ $ (((\for1:5:if2:stage2|B_temp~0_combout\) # (\opcode[0]~input_o\))))) # (!\for1:5:if2:stage2|Mux0~0_combout\ & (\for1:5:if2:stage2|B_temp~0_combout\ & 
-- (\opcode[1]~input_o\ $ (\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~0_combout\,
	datab => \for1:5:if2:stage2|B_temp~0_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \for1:5:if2:stage2|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y14_N8
\for1:6:if2:stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:6:if2:stage2|Mux0~0_combout\ = (\for1:6:if2:stage2|B_temp~0_combout\ & ((\opcode[0]~input_o\) # (\opcode[3]~input_o\ $ (\A[6]~input_o\)))) # (!\for1:6:if2:stage2|B_temp~0_combout\ & (\opcode[0]~input_o\ & (\opcode[3]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \for1:6:if2:stage2|B_temp~0_combout\,
	datac => \A[6]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \for1:6:if2:stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y14_N2
\for1:6:if2:stage2|label1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:6:if2:stage2|label1|s~combout\ = \for1:5:if2:stage2|label1|Cout~0_combout\ $ (\for1:6:if2:stage2|B_temp~0_combout\ $ (\A[6]~input_o\ $ (\opcode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|label1|Cout~0_combout\,
	datab => \for1:6:if2:stage2|B_temp~0_combout\,
	datac => \A[6]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \for1:6:if2:stage2|label1|s~combout\);

-- Location: LCCOMB_X114_Y14_N12
\for1:6:if2:stage2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:6:if2:stage2|Mux0~1_combout\ = (\opcode[1]~input_o\ & (((\for1:6:if2:stage2|label1|s~combout\ & !\opcode[0]~input_o\)))) # (!\opcode[1]~input_o\ & (\for1:6:if2:stage2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:6:if2:stage2|Mux0~0_combout\,
	datab => \for1:6:if2:stage2|label1|s~combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \for1:6:if2:stage2|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y57_N8
\stage5|a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|a0~0_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\ & !\for1:6:if2:stage2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|a0~0_combout\);

-- Location: LCCOMB_X114_Y14_N22
\for1:4:if2:stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:4:if2:stage2|Mux0~0_combout\ = \opcode[3]~input_o\ $ (\A[4]~input_o\ $ (((\opcode[1]~input_o\ & \for1:3:if2:stage2|label1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \for1:3:if2:stage2|label1|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \for1:4:if2:stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y14_N24
\for1:4:if2:stage2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:4:if2:stage2|Mux0~1_combout\ = (\for1:4:if2:stage2|Mux0~0_combout\ & (\opcode[1]~input_o\ $ (((\for1:4:if2:stage2|B_temp~0_combout\) # (\opcode[0]~input_o\))))) # (!\for1:4:if2:stage2|Mux0~0_combout\ & (\for1:4:if2:stage2|B_temp~0_combout\ & 
-- (\opcode[1]~input_o\ $ (\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:4:if2:stage2|Mux0~0_combout\,
	datab => \for1:4:if2:stage2|B_temp~0_combout\,
	datac => \opcode[1]~input_o\,
	datad => \opcode[0]~input_o\,
	combout => \for1:4:if2:stage2|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y57_N18
\stage5|b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|b0~0_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\ & ((\for1:4:if2:stage2|Mux0~1_combout\) # (\for1:6:if2:stage2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datab => \for1:4:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|b0~0_combout\);

-- Location: LCCOMB_X114_Y57_N4
\stage5|c0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|c0~0_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\ & (\for1:4:if2:stage2|Mux0~1_combout\)) # (!\for1:5:if2:stage2|Mux0~1_combout\ & (!\for1:4:if2:stage2|Mux0~1_combout\ & \for1:6:if2:stage2|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datab => \for1:4:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|c0~0_combout\);

-- Location: LCCOMB_X114_Y57_N6
\stage5|d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|d0~0_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\ & (!\for1:4:if2:stage2|Mux0~1_combout\ & !\for1:6:if2:stage2|Mux0~1_combout\)) # (!\for1:5:if2:stage2|Mux0~1_combout\ & (\for1:4:if2:stage2|Mux0~1_combout\ & \for1:6:if2:stage2|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datab => \for1:4:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|d0~0_combout\);

-- Location: LCCOMB_X114_Y57_N16
\stage5|a0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|a0~1_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\ & (!\for1:4:if2:stage2|Mux0~1_combout\ & !\for1:6:if2:stage2|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datab => \for1:4:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|a0~1_combout\);

-- Location: LCCOMB_X114_Y57_N2
\stage5|f0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|f0~0_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\ & ((\for1:6:if2:stage2|Mux0~1_combout\) # (!\for1:4:if2:stage2|Mux0~1_combout\))) # (!\for1:5:if2:stage2|Mux0~1_combout\ & ((\for1:4:if2:stage2|Mux0~1_combout\) # 
-- (!\for1:6:if2:stage2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datab => \for1:4:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|f0~0_combout\);

-- Location: LCCOMB_X114_Y57_N12
\stage5|a0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|a0~2_combout\ = (\for1:5:if2:stage2|Mux0~1_combout\) # ((\for1:4:if2:stage2|Mux0~1_combout\) # (\for1:6:if2:stage2|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:5:if2:stage2|Mux0~1_combout\,
	datab => \for1:4:if2:stage2|Mux0~1_combout\,
	datac => \for1:6:if2:stage2|Mux0~1_combout\,
	combout => \stage5|a0~2_combout\);

-- Location: LCCOMB_X114_Y15_N22
\for1:2:if2:stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:2:if2:stage2|Mux0~0_combout\ = \opcode[3]~input_o\ $ (\A[2]~input_o\ $ (((\opcode[1]~input_o\ & \for1:1:if2:stage2|label1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \for1:1:if2:stage2|label1|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \for1:2:if2:stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N24
\for1:2:if2:stage2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:2:if2:stage2|Mux0~1_combout\ = (\for1:2:if2:stage2|B_temp~0_combout\ & (\opcode[1]~input_o\ $ (((\opcode[0]~input_o\) # (\for1:2:if2:stage2|Mux0~0_combout\))))) # (!\for1:2:if2:stage2|B_temp~0_combout\ & (\for1:2:if2:stage2|Mux0~0_combout\ & 
-- (\opcode[1]~input_o\ $ (\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|B_temp~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \for1:2:if2:stage2|Mux0~0_combout\,
	combout => \for1:2:if2:stage2|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N26
\stage3|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~8_combout\ = \opcode[3]~input_o\ $ (\A[0]~input_o\ $ (((\opcode[1]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[3]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage3|Mux0~8_combout\);

-- Location: LCCOMB_X114_Y15_N18
\stage3|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~6_combout\ = (\opcode[1]~input_o\ & (\for1:6:if2:stage2|label1|s~combout\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:6:if2:stage2|label1|s~combout\,
	datab => \opcode[1]~input_o\,
	datac => \opcode[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage3|Mux0~6_combout\);

-- Location: LCCOMB_X114_Y15_N20
\stage3|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~7_combout\ = (\stage3|Mux0~8_combout\ & (!\stage3|Mux0~6_combout\ & (\opcode[0]~input_o\ $ (!\opcode[1]~input_o\)))) # (!\stage3|Mux0~8_combout\ & (((!\opcode[0]~input_o\)) # (!\stage3|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Mux0~8_combout\,
	datab => \stage3|Mux0~6_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \stage3|Mux0~7_combout\);

-- Location: LCCOMB_X114_Y15_N8
\for1:3:if2:stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:3:if2:stage2|Mux0~0_combout\ = \A[3]~input_o\ $ (\opcode[3]~input_o\ $ (((\for1:2:if2:stage2|label1|Cout~0_combout\ & \opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|label1|Cout~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \opcode[3]~input_o\,
	combout => \for1:3:if2:stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N10
\for1:3:if2:stage2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:3:if2:stage2|Mux0~1_combout\ = (\for1:3:if2:stage2|B_temp~0_combout\ & (\opcode[1]~input_o\ $ (((\for1:3:if2:stage2|Mux0~0_combout\) # (\opcode[0]~input_o\))))) # (!\for1:3:if2:stage2|B_temp~0_combout\ & (\for1:3:if2:stage2|Mux0~0_combout\ & 
-- (\opcode[0]~input_o\ $ (\opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:3:if2:stage2|B_temp~0_combout\,
	datab => \for1:3:if2:stage2|Mux0~0_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \for1:3:if2:stage2|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N4
\for1:1:if2:stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:1:if2:stage2|Mux0~0_combout\ = \for1:0:if1:stage1|label1|Cout~1_combout\ $ (\opcode[2]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:0:if1:stage1|label1|Cout~1_combout\,
	datac => \opcode[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \for1:1:if2:stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N14
\for1:1:if2:stage2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:1:if2:stage2|Mux0~1_combout\ = \A[1]~input_o\ $ (\opcode[3]~input_o\ $ (((\opcode[1]~input_o\ & \for1:1:if2:stage2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \opcode[1]~input_o\,
	datac => \for1:1:if2:stage2|Mux0~0_combout\,
	datad => \opcode[3]~input_o\,
	combout => \for1:1:if2:stage2|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N16
\for1:1:if2:stage2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \for1:1:if2:stage2|Mux0~2_combout\ = (\for1:1:if2:stage2|B_temp~0_combout\ & ((\opcode[0]~input_o\ & ((\opcode[1]~input_o\))) # (!\opcode[0]~input_o\ & (!\for1:1:if2:stage2|Mux0~1_combout\)))) # (!\for1:1:if2:stage2|B_temp~0_combout\ & 
-- ((\opcode[0]~input_o\ $ (!\opcode[1]~input_o\)) # (!\for1:1:if2:stage2|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:1:if2:stage2|Mux0~1_combout\,
	datab => \for1:1:if2:stage2|B_temp~0_combout\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[1]~input_o\,
	combout => \for1:1:if2:stage2|Mux0~2_combout\);

-- Location: LCCOMB_X114_Y22_N0
\stage5|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|a1~0_combout\ = (\for1:2:if2:stage2|Mux0~1_combout\ & (!\stage3|Mux0~7_combout\ & (\for1:3:if2:stage2|Mux0~1_combout\ & \for1:1:if2:stage2|Mux0~2_combout\))) # (!\for1:2:if2:stage2|Mux0~1_combout\ & (\for1:1:if2:stage2|Mux0~2_combout\ $ 
-- (((!\for1:3:if2:stage2|Mux0~1_combout\) # (!\stage3|Mux0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|a1~0_combout\);

-- Location: LCCOMB_X114_Y22_N10
\stage5|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|b1~0_combout\ = (\for1:2:if2:stage2|Mux0~1_combout\ & ((\for1:3:if2:stage2|Mux0~1_combout\ & (\stage3|Mux0~7_combout\)) # (!\for1:3:if2:stage2|Mux0~1_combout\ & ((\for1:1:if2:stage2|Mux0~2_combout\))))) # (!\for1:2:if2:stage2|Mux0~1_combout\ & 
-- ((\for1:1:if2:stage2|Mux0~2_combout\) # (\stage3|Mux0~7_combout\ $ (\for1:3:if2:stage2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|b1~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\stage5|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|c1~0_combout\ = (\stage3|Mux0~7_combout\ & (\for1:2:if2:stage2|Mux0~1_combout\ & (!\for1:3:if2:stage2|Mux0~1_combout\ & \for1:1:if2:stage2|Mux0~2_combout\))) # (!\stage3|Mux0~7_combout\ & (!\for1:1:if2:stage2|Mux0~2_combout\ & 
-- ((\for1:2:if2:stage2|Mux0~1_combout\) # (!\for1:3:if2:stage2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|c1~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\stage5|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|d1~0_combout\ = (\for1:3:if2:stage2|Mux0~1_combout\ & (\for1:2:if2:stage2|Mux0~1_combout\ $ (((\for1:1:if2:stage2|Mux0~2_combout\))))) # (!\for1:3:if2:stage2|Mux0~1_combout\ & ((\for1:2:if2:stage2|Mux0~1_combout\ & (!\stage3|Mux0~7_combout\ & 
-- \for1:1:if2:stage2|Mux0~2_combout\)) # (!\for1:2:if2:stage2|Mux0~1_combout\ & (\stage3|Mux0~7_combout\ & !\for1:1:if2:stage2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|d1~0_combout\);

-- Location: LCCOMB_X114_Y22_N8
\stage5|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|e1~0_combout\ = (\for1:2:if2:stage2|Mux0~1_combout\ & (\stage3|Mux0~7_combout\ & (\for1:3:if2:stage2|Mux0~1_combout\))) # (!\for1:2:if2:stage2|Mux0~1_combout\ & ((\for1:1:if2:stage2|Mux0~2_combout\ & ((\for1:3:if2:stage2|Mux0~1_combout\))) # 
-- (!\for1:1:if2:stage2|Mux0~2_combout\ & (\stage3|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|e1~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\stage5|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|f1~0_combout\ = (\for1:2:if2:stage2|Mux0~1_combout\ & (\stage3|Mux0~7_combout\ & ((\for1:3:if2:stage2|Mux0~1_combout\) # (\for1:1:if2:stage2|Mux0~2_combout\)))) # (!\for1:2:if2:stage2|Mux0~1_combout\ & ((\stage3|Mux0~7_combout\ & 
-- (\for1:3:if2:stage2|Mux0~1_combout\ & \for1:1:if2:stage2|Mux0~2_combout\)) # (!\stage3|Mux0~7_combout\ & ((!\for1:1:if2:stage2|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|f1~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\stage5|g1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|g1~0_combout\ = (\stage3|Mux0~7_combout\ & ((\for1:2:if2:stage2|Mux0~1_combout\ & (\for1:3:if2:stage2|Mux0~1_combout\ & !\for1:1:if2:stage2|Mux0~2_combout\)) # (!\for1:2:if2:stage2|Mux0~1_combout\ & ((\for1:1:if2:stage2|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \for1:2:if2:stage2|Mux0~1_combout\,
	datab => \stage3|Mux0~7_combout\,
	datac => \for1:3:if2:stage2|Mux0~1_combout\,
	datad => \for1:1:if2:stage2|Mux0~2_combout\,
	combout => \stage5|g1~0_combout\);

ww_overflow <= \overflow~output_o\;

ww_a0 <= \a0~output_o\;

ww_b0 <= \b0~output_o\;

ww_c0 <= \c0~output_o\;

ww_d0 <= \d0~output_o\;

ww_e0 <= \e0~output_o\;

ww_f0 <= \f0~output_o\;

ww_g0 <= \g0~output_o\;

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;
END structure;


