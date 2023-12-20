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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/18/2023 11:13:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProjetoFinal
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProjetoFinal_vhd_vec_tst IS
END ProjetoFinal_vhd_vec_tst;
ARCHITECTURE ProjetoFinal_arch OF ProjetoFinal_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clkBoard : STD_LOGIC;
SIGNAL hex0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hex1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hex2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hex3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ProjetoFinal
	PORT (
	clkBoard : IN STD_LOGIC;
	hex0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hex1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hex2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hex3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ProjetoFinal
	PORT MAP (
-- list connections between master ports and signals
	clkBoard => clkBoard,
	hex0 => hex0,
	hex1 => hex1,
	hex2 => hex2,
	hex3 => hex3
	);

-- clkBoard
t_prcs_clkBoard: PROCESS
BEGIN
LOOP
	clkBoard <= '0';
	WAIT FOR 2000 ps;
	clkBoard <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkBoard;
END ProjetoFinal_arch;
