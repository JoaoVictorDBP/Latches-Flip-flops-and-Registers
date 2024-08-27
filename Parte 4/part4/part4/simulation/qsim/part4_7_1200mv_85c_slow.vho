-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "08/22/2024 15:48:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	part4 IS
    PORT (
	Qa : OUT std_logic;
	D : IN std_logic;
	CLK : IN std_logic;
	Qb : OUT std_logic;
	Qc : OUT std_logic
	);
END part4;

-- Design Ports Information
-- Qa	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qb	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qc	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Qa : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Qb : std_logic;
SIGNAL ww_Qc : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Qa~output_o\ : std_logic;
SIGNAL \Qb~output_o\ : std_logic;
SIGNAL \Qc~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Q~combout\ : std_logic;
SIGNAL \inst1|inst1|Q~combout\ : std_logic;
SIGNAL \inst1|inst|Q~combout\ : std_logic;
SIGNAL \inst2|inst|Q~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Qa <= ww_Qa;
ww_D <= D;
ww_CLK <= CLK;
Qb <= ww_Qb;
Qc <= ww_Qc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y73_N9
\Qa~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q~combout\,
	devoe => ww_devoe,
	o => \Qa~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Qb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|Q~combout\,
	devoe => ww_devoe,
	o => \Qb~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Qc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|Q~combout\,
	devoe => ww_devoe,
	o => \Qc~output_o\);

-- Location: IOIBUF_X25_Y73_N22
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y72_N20
\inst|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q~combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & (\D~input_o\)) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & ((\inst|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => \inst|Q~combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \inst|Q~combout\);

-- Location: LCCOMB_X25_Y72_N18
\inst1|inst1|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|Q~combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\inst1|inst1|Q~combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\D~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datac => \inst1|inst1|Q~combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \inst1|inst1|Q~combout\);

-- Location: LCCOMB_X25_Y72_N30
\inst1|inst|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Q~combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\inst1|inst1|Q~combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\inst1|inst|Q~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Q~combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \inst1|inst1|Q~combout\,
	combout => \inst1|inst|Q~combout\);

-- Location: LCCOMB_X25_Y72_N24
\inst2|inst|Q\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Q~combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & (\inst2|inst|Q~combout\)) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & ((\inst|Q~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|Q~combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \inst|Q~combout\,
	combout => \inst2|inst|Q~combout\);

ww_Qa <= \Qa~output_o\;

ww_Qb <= \Qb~output_o\;

ww_Qc <= \Qc~output_o\;
END structure;


