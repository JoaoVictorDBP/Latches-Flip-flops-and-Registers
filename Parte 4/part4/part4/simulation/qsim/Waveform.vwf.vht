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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/22/2024 15:50:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          part4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part4_vhd_vec_tst IS
END part4_vhd_vec_tst;
ARCHITECTURE part4_arch OF part4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Qa : STD_LOGIC;
SIGNAL Qb : STD_LOGIC;
SIGNAL Qc : STD_LOGIC;
COMPONENT part4
	PORT (
	CLK : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Qa : OUT STD_LOGIC;
	Qb : OUT STD_LOGIC;
	Qc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : part4
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	D => D,
	Qa => Qa,
	Qb => Qb,
	Qc => Qc
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '0';
	WAIT FOR 20000 ps;
	D <= '1';
	WAIT FOR 10000 ps;
	D <= '0';
	WAIT FOR 10000 ps;
	D <= '1';
	WAIT FOR 20000 ps;
	D <= '0';
	WAIT FOR 20000 ps;
	D <= '1';
	WAIT FOR 10000 ps;
	D <= '0';
	WAIT FOR 20000 ps;
	D <= '1';
	WAIT FOR 10000 ps;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;
END part4_arch;
