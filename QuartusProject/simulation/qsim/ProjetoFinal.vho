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

-- DATE "11/18/2023 11:13:26"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ProjetoFinal IS
    PORT (
	clkBoard : IN std_logic;
	hex0 : OUT std_logic_vector(3 DOWNTO 0);
	hex1 : OUT std_logic_vector(3 DOWNTO 0);
	hex2 : OUT std_logic_vector(3 DOWNTO 0);
	hex3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END ProjetoFinal;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkBoard	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProjetoFinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkBoard : std_logic;
SIGNAL ww_hex0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkRam~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkAccu~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkRom~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkBoard~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkMux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DivFreq0|FFJK3|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \clkBoard~input_o\ : std_logic;
SIGNAL \clkBoard~inputclkctrl_outclk\ : std_logic;
SIGNAL \DivFreq0|FFJK0|temp~0_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK0|temp~feeder_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK0|temp~q\ : std_logic;
SIGNAL \DivFreq0|FFJK1|temp~0_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK1|temp~feeder_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK1|temp~q\ : std_logic;
SIGNAL \DivFreq0|FFJK2|temp~0_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK2|temp~feeder_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK2|temp~q\ : std_logic;
SIGNAL \DivFreq0|FFJK3|temp~0_combout\ : std_logic;
SIGNAL \DivFreq0|FFJK3|temp~q\ : std_logic;
SIGNAL \clkRom~combout\ : std_logic;
SIGNAL \clkRom~clkctrl_outclk\ : std_logic;
SIGNAL \DivFreq0|FFJK3|temp~clkctrl_outclk\ : std_logic;
SIGNAL \DivFreq1|FFJK0|temp~0_combout\ : std_logic;
SIGNAL \DivFreq1|FFJK0|temp~q\ : std_logic;
SIGNAL \DivFreq1|FFJK1|temp~0_combout\ : std_logic;
SIGNAL \DivFreq1|FFJK1|temp~q\ : std_logic;
SIGNAL \DivFreq1|FFJK2|temp~0_combout\ : std_logic;
SIGNAL \DivFreq1|FFJK2|temp~q\ : std_logic;
SIGNAL \DivFreq1|FFJK3|temp~0_combout\ : std_logic;
SIGNAL \DivFreq1|FFJK3|temp~q\ : std_logic;
SIGNAL \clkAccu~combout\ : std_logic;
SIGNAL \clkAccu~clkctrl_outclk\ : std_logic;
SIGNAL \clkMux~combout\ : std_logic;
SIGNAL \clkMux~clkctrl_outclk\ : std_logic;
SIGNAL \Mux0|Dout[1]~5_combout\ : std_logic;
SIGNAL \clkRam~combout\ : std_logic;
SIGNAL \clkRam~clkctrl_outclk\ : std_logic;
SIGNAL \Sub0|adder1|s~combout\ : std_logic;
SIGNAL \Mux0|Dout[1]~6_combout\ : std_logic;
SIGNAL \Sum0|adder1|s~combout\ : std_logic;
SIGNAL \Mux0|Dout[1]~7_combout\ : std_logic;
SIGNAL \Mux0|Dout~8_combout\ : std_logic;
SIGNAL \Mux0|Dout~9_combout\ : std_logic;
SIGNAL \Mux0|Dout~10_combout\ : std_logic;
SIGNAL \Accu0|FFD1|q~q\ : std_logic;
SIGNAL \Sub0|adder1|o~0_combout\ : std_logic;
SIGNAL \Sum0|adder1|o~0_combout\ : std_logic;
SIGNAL \Mux0|Dout~11_combout\ : std_logic;
SIGNAL \Mux0|Dout~12_combout\ : std_logic;
SIGNAL \Mux0|Dout~16_combout\ : std_logic;
SIGNAL \Mux0|Dout~17_combout\ : std_logic;
SIGNAL \Accu0|FFD2|q~q\ : std_logic;
SIGNAL \Sub0|adder3|s~0_combout\ : std_logic;
SIGNAL \Sub0|adder3|s~combout\ : std_logic;
SIGNAL \Mux0|Dout~13_combout\ : std_logic;
SIGNAL \Sum0|adder3|s~combout\ : std_logic;
SIGNAL \Mux0|Dout~14_combout\ : std_logic;
SIGNAL \Mux0|Dout~15_combout\ : std_logic;
SIGNAL \Accu0|FFD3|q~q\ : std_logic;
SIGNAL \wren~0_combout\ : std_logic;
SIGNAL \wren~1_combout\ : std_logic;
SIGNAL \Mux0|Dout~3_combout\ : std_logic;
SIGNAL \Mux0|Dout~0_combout\ : std_logic;
SIGNAL \Mux0|Dout~1_combout\ : std_logic;
SIGNAL \Mux0|Dout~2_combout\ : std_logic;
SIGNAL \Mux0|Dout~4_combout\ : std_logic;
SIGNAL \Accu0|FFD0|q~feeder_combout\ : std_logic;
SIGNAL \Accu0|FFD0|q~q\ : std_logic;
SIGNAL \Mux0|Dout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rom0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ram0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkBoard <= clkBoard;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DivFreq1|FFJK3|temp~q\ & \DivFreq1|FFJK2|temp~q\ & \DivFreq1|FFJK1|temp~q\ & \DivFreq1|FFJK0|temp~q\);

\Rom0|altsyncram_component|auto_generated|q_a\(0) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Rom0|altsyncram_component|auto_generated|q_a\(1) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Rom0|altsyncram_component|auto_generated|q_a\(2) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Rom0|altsyncram_component|auto_generated|q_a\(3) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Rom0|altsyncram_component|auto_generated|q_a\(4) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Rom0|altsyncram_component|auto_generated|q_a\(5) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Rom0|altsyncram_component|auto_generated|q_a\(6) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Rom0|altsyncram_component|auto_generated|q_a\(7) <= \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Accu0|FFD3|q~q\ & \Accu0|FFD2|q~q\ & \Accu0|FFD1|q~q\ & \Accu0|FFD0|q~q\);

\Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Rom0|altsyncram_component|auto_generated|q_a\(3) & \Rom0|altsyncram_component|auto_generated|q_a\(2) & \Rom0|altsyncram_component|auto_generated|q_a\(1) & 
\Rom0|altsyncram_component|auto_generated|q_a\(0));

\Ram0|altsyncram_component|auto_generated|q_a\(0) <= \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Ram0|altsyncram_component|auto_generated|q_a\(1) <= \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Ram0|altsyncram_component|auto_generated|q_a\(2) <= \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Ram0|altsyncram_component|auto_generated|q_a\(3) <= \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkRam~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkRam~combout\);

\clkAccu~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkAccu~combout\);

\clkRom~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkRom~combout\);

\clkBoard~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkBoard~input_o\);

\clkMux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkMux~combout\);

\DivFreq0|FFJK3|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DivFreq0|FFJK3|temp~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N9
\hex0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\hex0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\hex0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\hex0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\hex1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\hex1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\hex1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\hex2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Accu0|FFD0|q~q\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\hex2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Accu0|FFD1|q~q\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\hex2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Accu0|FFD2|q~q\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\hex2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Accu0|FFD3|q~q\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\hex3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\hex3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram0|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\hex3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram0|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\hex3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram0|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clkBoard~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkBoard,
	o => \clkBoard~input_o\);

-- Location: CLKCTRL_G3
\clkBoard~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkBoard~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkBoard~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N10
\DivFreq0|FFJK0|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK0|temp~0_combout\ = !\DivFreq0|FFJK0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DivFreq0|FFJK0|temp~q\,
	combout => \DivFreq0|FFJK0|temp~0_combout\);

-- Location: LCCOMB_X45_Y53_N4
\DivFreq0|FFJK0|temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK0|temp~feeder_combout\ = \DivFreq0|FFJK0|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFreq0|FFJK0|temp~0_combout\,
	combout => \DivFreq0|FFJK0|temp~feeder_combout\);

-- Location: FF_X45_Y53_N5
\DivFreq0|FFJK0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkBoard~inputclkctrl_outclk\,
	d => \DivFreq0|FFJK0|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq0|FFJK0|temp~q\);

-- Location: LCCOMB_X45_Y53_N30
\DivFreq0|FFJK1|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK1|temp~0_combout\ = \DivFreq0|FFJK0|temp~q\ $ (\DivFreq0|FFJK1|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFreq0|FFJK0|temp~q\,
	datad => \DivFreq0|FFJK1|temp~q\,
	combout => \DivFreq0|FFJK1|temp~0_combout\);

-- Location: LCCOMB_X45_Y53_N26
\DivFreq0|FFJK1|temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK1|temp~feeder_combout\ = \DivFreq0|FFJK1|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK1|temp~0_combout\,
	combout => \DivFreq0|FFJK1|temp~feeder_combout\);

-- Location: FF_X45_Y53_N27
\DivFreq0|FFJK1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkBoard~input_o\,
	d => \DivFreq0|FFJK1|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq0|FFJK1|temp~q\);

-- Location: LCCOMB_X45_Y53_N24
\DivFreq0|FFJK2|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK2|temp~0_combout\ = \DivFreq0|FFJK2|temp~q\ $ (((\DivFreq0|FFJK1|temp~q\ & \DivFreq0|FFJK0|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK1|temp~q\,
	datac => \DivFreq0|FFJK0|temp~q\,
	datad => \DivFreq0|FFJK2|temp~q\,
	combout => \DivFreq0|FFJK2|temp~0_combout\);

-- Location: LCCOMB_X45_Y53_N20
\DivFreq0|FFJK2|temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK2|temp~feeder_combout\ = \DivFreq0|FFJK2|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DivFreq0|FFJK2|temp~0_combout\,
	combout => \DivFreq0|FFJK2|temp~feeder_combout\);

-- Location: FF_X45_Y53_N21
\DivFreq0|FFJK2|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkBoard~input_o\,
	d => \DivFreq0|FFJK2|temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq0|FFJK2|temp~q\);

-- Location: LCCOMB_X45_Y53_N6
\DivFreq0|FFJK3|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq0|FFJK3|temp~0_combout\ = \DivFreq0|FFJK3|temp~q\ $ (((\DivFreq0|FFJK0|temp~q\ & (\DivFreq0|FFJK1|temp~q\ & \DivFreq0|FFJK2|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK0|temp~q\,
	datab => \DivFreq0|FFJK3|temp~q\,
	datac => \DivFreq0|FFJK1|temp~q\,
	datad => \DivFreq0|FFJK2|temp~q\,
	combout => \DivFreq0|FFJK3|temp~0_combout\);

-- Location: FF_X45_Y53_N11
\DivFreq0|FFJK3|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkBoard~inputclkctrl_outclk\,
	asdata => \DivFreq0|FFJK3|temp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq0|FFJK3|temp~q\);

-- Location: LCCOMB_X45_Y53_N28
clkRom : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkRom~combout\ = LCELL((!\DivFreq0|FFJK1|temp~q\ & (!\DivFreq0|FFJK2|temp~q\ & (\DivFreq0|FFJK0|temp~q\ & !\DivFreq0|FFJK3|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK1|temp~q\,
	datab => \DivFreq0|FFJK2|temp~q\,
	datac => \DivFreq0|FFJK0|temp~q\,
	datad => \DivFreq0|FFJK3|temp~q\,
	combout => \clkRom~combout\);

-- Location: CLKCTRL_G11
\clkRom~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkRom~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkRom~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\DivFreq0|FFJK3|temp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DivFreq0|FFJK3|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DivFreq0|FFJK3|temp~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y49_N20
\DivFreq1|FFJK0|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq1|FFJK0|temp~0_combout\ = !\DivFreq1|FFJK0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFreq1|FFJK0|temp~q\,
	combout => \DivFreq1|FFJK0|temp~0_combout\);

-- Location: FF_X52_Y49_N21
\DivFreq1|FFJK0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFreq0|FFJK3|temp~clkctrl_outclk\,
	d => \DivFreq1|FFJK0|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq1|FFJK0|temp~q\);

-- Location: LCCOMB_X52_Y49_N6
\DivFreq1|FFJK1|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq1|FFJK1|temp~0_combout\ = \DivFreq1|FFJK1|temp~q\ $ (\DivFreq1|FFJK0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DivFreq1|FFJK1|temp~q\,
	datad => \DivFreq1|FFJK0|temp~q\,
	combout => \DivFreq1|FFJK1|temp~0_combout\);

-- Location: FF_X52_Y49_N7
\DivFreq1|FFJK1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFreq0|FFJK3|temp~clkctrl_outclk\,
	d => \DivFreq1|FFJK1|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq1|FFJK1|temp~q\);

-- Location: LCCOMB_X52_Y49_N4
\DivFreq1|FFJK2|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq1|FFJK2|temp~0_combout\ = \DivFreq1|FFJK2|temp~q\ $ (((\DivFreq1|FFJK1|temp~q\ & \DivFreq1|FFJK0|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq1|FFJK1|temp~q\,
	datac => \DivFreq1|FFJK2|temp~q\,
	datad => \DivFreq1|FFJK0|temp~q\,
	combout => \DivFreq1|FFJK2|temp~0_combout\);

-- Location: FF_X52_Y49_N5
\DivFreq1|FFJK2|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFreq0|FFJK3|temp~clkctrl_outclk\,
	d => \DivFreq1|FFJK2|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq1|FFJK2|temp~q\);

-- Location: LCCOMB_X52_Y49_N26
\DivFreq1|FFJK3|temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DivFreq1|FFJK3|temp~0_combout\ = \DivFreq1|FFJK3|temp~q\ $ (((\DivFreq1|FFJK1|temp~q\ & (\DivFreq1|FFJK2|temp~q\ & \DivFreq1|FFJK0|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq1|FFJK1|temp~q\,
	datab => \DivFreq1|FFJK2|temp~q\,
	datac => \DivFreq1|FFJK3|temp~q\,
	datad => \DivFreq1|FFJK0|temp~q\,
	combout => \DivFreq1|FFJK3|temp~0_combout\);

-- Location: FF_X52_Y49_N27
\DivFreq1|FFJK3|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DivFreq0|FFJK3|temp~clkctrl_outclk\,
	d => \DivFreq1|FFJK3|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DivFreq1|FFJK3|temp~q\);

-- Location: M9K_X53_Y49_N0
\Rom0|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000003580027000D80025003480024000C80021",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_16_8.hex",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:Rom0|altsyncram:altsyncram_component|altsyncram_o7r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkRom~clkctrl_outclk\,
	portaaddr => \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Rom0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y53_N16
clkAccu : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkAccu~combout\ = LCELL((!\DivFreq0|FFJK1|temp~q\ & (\DivFreq0|FFJK2|temp~q\ & (!\DivFreq0|FFJK0|temp~q\ & !\DivFreq0|FFJK3|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK1|temp~q\,
	datab => \DivFreq0|FFJK2|temp~q\,
	datac => \DivFreq0|FFJK0|temp~q\,
	datad => \DivFreq0|FFJK3|temp~q\,
	combout => \clkAccu~combout\);

-- Location: CLKCTRL_G10
\clkAccu~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkAccu~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkAccu~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y53_N22
clkMux : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkMux~combout\ = LCELL((!\DivFreq0|FFJK3|temp~q\ & (\DivFreq0|FFJK0|temp~q\ & (\DivFreq0|FFJK1|temp~q\ & !\DivFreq0|FFJK2|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK3|temp~q\,
	datab => \DivFreq0|FFJK0|temp~q\,
	datac => \DivFreq0|FFJK1|temp~q\,
	datad => \DivFreq0|FFJK2|temp~q\,
	combout => \clkMux~combout\);

-- Location: CLKCTRL_G12
\clkMux~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkMux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkMux~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y49_N10
\Mux0|Dout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout[1]~5_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(4) & ((\Rom0|altsyncram_component|auto_generated|q_a\(6)) # ((!\Rom0|altsyncram_component|auto_generated|q_a\(7))))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4) & 
-- ((\Rom0|altsyncram_component|auto_generated|q_a\(6) & ((\Rom0|altsyncram_component|auto_generated|q_a\(5)) # (!\Rom0|altsyncram_component|auto_generated|q_a\(7)))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(6) & 
-- ((!\Rom0|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(6),
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	combout => \Mux0|Dout[1]~5_combout\);

-- Location: LCCOMB_X45_Y53_N12
clkRam : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkRam~combout\ = LCELL((\DivFreq0|FFJK1|temp~q\ & (!\DivFreq0|FFJK0|temp~q\ & !\DivFreq0|FFJK3|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DivFreq0|FFJK1|temp~q\,
	datac => \DivFreq0|FFJK0|temp~q\,
	datad => \DivFreq0|FFJK3|temp~q\,
	combout => \clkRam~combout\);

-- Location: CLKCTRL_G13
\clkRam~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkRam~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkRam~clkctrl_outclk\);

-- Location: M9K_X53_Y51_N0
\Ram0|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0003C000E00034000C0002C000A0002400080001C00060001400040000C0002000040000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM_16_4.hex",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:Ram0|altsyncram:altsyncram_component|altsyncram_oar3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~1_combout\,
	portare => VCC,
	clk0 => \clkRam~clkctrl_outclk\,
	portadatain => \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y51_N8
\Sub0|adder1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sub0|adder1|s~combout\ = \Accu0|FFD1|q~q\ $ (\Ram0|altsyncram_component|auto_generated|q_a\(1) $ (((\Accu0|FFD0|q~q\) # (!\Ram0|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD1|q~q\,
	datab => \Accu0|FFD0|q~q\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(1),
	datad => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	combout => \Sub0|adder1|s~combout\);

-- Location: LCCOMB_X54_Y49_N28
\Mux0|Dout[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout[1]~6_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(6) & (\Rom0|altsyncram_component|auto_generated|q_a\(7) & !\Rom0|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(6),
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	combout => \Mux0|Dout[1]~6_combout\);

-- Location: LCCOMB_X54_Y51_N30
\Sum0|adder1|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sum0|adder1|s~combout\ = \Accu0|FFD1|q~q\ $ (\Ram0|altsyncram_component|auto_generated|q_a\(1) $ (((\Accu0|FFD0|q~q\ & \Ram0|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD1|q~q\,
	datab => \Accu0|FFD0|q~q\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(1),
	datad => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	combout => \Sum0|adder1|s~combout\);

-- Location: LCCOMB_X54_Y49_N6
\Mux0|Dout[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout[1]~7_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(4) & (\Rom0|altsyncram_component|auto_generated|q_a\(5))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4) & ((\Rom0|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	combout => \Mux0|Dout[1]~7_combout\);

-- Location: LCCOMB_X54_Y49_N0
\Mux0|Dout~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~8_combout\ = (\Ram0|altsyncram_component|auto_generated|q_a\(1) & ((\Accu0|FFD1|q~q\ $ (\Mux0|Dout[1]~7_combout\)) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4)))) # (!\Ram0|altsyncram_component|auto_generated|q_a\(1) & 
-- (((\Accu0|FFD1|q~q\ & \Mux0|Dout[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	datab => \Accu0|FFD1|q~q\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(1),
	datad => \Mux0|Dout[1]~7_combout\,
	combout => \Mux0|Dout~8_combout\);

-- Location: LCCOMB_X54_Y49_N12
\Mux0|Dout~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~9_combout\ = (\Mux0|Dout[1]~5_combout\ & (\Mux0|Dout[1]~6_combout\)) # (!\Mux0|Dout[1]~5_combout\ & ((\Mux0|Dout[1]~6_combout\ & (\Sum0|adder1|s~combout\)) # (!\Mux0|Dout[1]~6_combout\ & ((\Mux0|Dout~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0|Dout[1]~5_combout\,
	datab => \Mux0|Dout[1]~6_combout\,
	datac => \Sum0|adder1|s~combout\,
	datad => \Mux0|Dout~8_combout\,
	combout => \Mux0|Dout~9_combout\);

-- Location: LCCOMB_X54_Y49_N22
\Mux0|Dout~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~10_combout\ = (\Mux0|Dout[1]~5_combout\ & ((\Mux0|Dout~9_combout\ & ((!\Sub0|adder1|s~combout\))) # (!\Mux0|Dout~9_combout\ & (\Accu0|FFD1|q~q\)))) # (!\Mux0|Dout[1]~5_combout\ & (((\Mux0|Dout~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0|Dout[1]~5_combout\,
	datab => \Accu0|FFD1|q~q\,
	datac => \Sub0|adder1|s~combout\,
	datad => \Mux0|Dout~9_combout\,
	combout => \Mux0|Dout~10_combout\);

-- Location: FF_X54_Y49_N23
\Mux0|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkMux~clkctrl_outclk\,
	d => \Mux0|Dout~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mux0|Dout\(1));

-- Location: FF_X54_Y49_N3
\Accu0|FFD1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkAccu~clkctrl_outclk\,
	asdata => \Mux0|Dout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Accu0|FFD1|q~q\);

-- Location: LCCOMB_X54_Y51_N18
\Sub0|adder1|o~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sub0|adder1|o~0_combout\ = (\Accu0|FFD1|q~q\ & ((\Accu0|FFD0|q~q\) # ((!\Ram0|altsyncram_component|auto_generated|q_a\(0)) # (!\Ram0|altsyncram_component|auto_generated|q_a\(1))))) # (!\Accu0|FFD1|q~q\ & 
-- (!\Ram0|altsyncram_component|auto_generated|q_a\(1) & ((\Accu0|FFD0|q~q\) # (!\Ram0|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD1|q~q\,
	datab => \Accu0|FFD0|q~q\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(1),
	datad => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	combout => \Sub0|adder1|o~0_combout\);

-- Location: LCCOMB_X54_Y49_N2
\Sum0|adder1|o~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sum0|adder1|o~0_combout\ = (\Accu0|FFD1|q~q\ & ((\Ram0|altsyncram_component|auto_generated|q_a\(1)) # ((\Ram0|altsyncram_component|auto_generated|q_a\(0) & \Accu0|FFD0|q~q\)))) # (!\Accu0|FFD1|q~q\ & (\Ram0|altsyncram_component|auto_generated|q_a\(0) & 
-- (\Accu0|FFD0|q~q\ & \Ram0|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	datab => \Accu0|FFD0|q~q\,
	datac => \Accu0|FFD1|q~q\,
	datad => \Ram0|altsyncram_component|auto_generated|q_a\(1),
	combout => \Sum0|adder1|o~0_combout\);

-- Location: LCCOMB_X54_Y49_N14
\Mux0|Dout~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~11_combout\ = (\Ram0|altsyncram_component|auto_generated|q_a\(2) & ((\Accu0|FFD2|q~q\ $ (\Mux0|Dout[1]~7_combout\)) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4)))) # (!\Ram0|altsyncram_component|auto_generated|q_a\(2) & 
-- (((\Accu0|FFD2|q~q\ & \Mux0|Dout[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0|altsyncram_component|auto_generated|q_a\(2),
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	datac => \Accu0|FFD2|q~q\,
	datad => \Mux0|Dout[1]~7_combout\,
	combout => \Mux0|Dout~11_combout\);

-- Location: LCCOMB_X54_Y49_N26
\Mux0|Dout~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~12_combout\ = (\Mux0|Dout[1]~6_combout\ & (((\Mux0|Dout[1]~5_combout\)))) # (!\Mux0|Dout[1]~6_combout\ & ((\Mux0|Dout[1]~5_combout\ & (\Accu0|FFD2|q~q\)) # (!\Mux0|Dout[1]~5_combout\ & ((\Mux0|Dout~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD2|q~q\,
	datab => \Mux0|Dout[1]~6_combout\,
	datac => \Mux0|Dout~11_combout\,
	datad => \Mux0|Dout[1]~5_combout\,
	combout => \Mux0|Dout~12_combout\);

-- Location: LCCOMB_X54_Y49_N30
\Mux0|Dout~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~16_combout\ = \Ram0|altsyncram_component|auto_generated|q_a\(2) $ (\Accu0|FFD2|q~q\ $ (((\Sum0|adder1|o~0_combout\) # (\Mux0|Dout~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0|altsyncram_component|auto_generated|q_a\(2),
	datab => \Sum0|adder1|o~0_combout\,
	datac => \Mux0|Dout~12_combout\,
	datad => \Accu0|FFD2|q~q\,
	combout => \Mux0|Dout~16_combout\);

-- Location: LCCOMB_X54_Y49_N4
\Mux0|Dout~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~17_combout\ = (\Mux0|Dout[1]~6_combout\ & (\Mux0|Dout~16_combout\ $ (((\Sub0|adder1|o~0_combout\ & \Mux0|Dout~12_combout\))))) # (!\Mux0|Dout[1]~6_combout\ & (((\Mux0|Dout~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub0|adder1|o~0_combout\,
	datab => \Mux0|Dout[1]~6_combout\,
	datac => \Mux0|Dout~16_combout\,
	datad => \Mux0|Dout~12_combout\,
	combout => \Mux0|Dout~17_combout\);

-- Location: FF_X54_Y49_N5
\Mux0|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkMux~clkctrl_outclk\,
	d => \Mux0|Dout~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mux0|Dout\(2));

-- Location: FF_X54_Y49_N15
\Accu0|FFD2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkAccu~clkctrl_outclk\,
	asdata => \Mux0|Dout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Accu0|FFD2|q~q\);

-- Location: LCCOMB_X54_Y51_N10
\Sub0|adder3|s~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sub0|adder3|s~0_combout\ = \Accu0|FFD3|q~q\ $ (\Ram0|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Accu0|FFD3|q~q\,
	datad => \Ram0|altsyncram_component|auto_generated|q_a\(3),
	combout => \Sub0|adder3|s~0_combout\);

-- Location: LCCOMB_X54_Y49_N20
\Sub0|adder3|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sub0|adder3|s~combout\ = \Sub0|adder3|s~0_combout\ $ (((\Accu0|FFD2|q~q\ & ((\Sub0|adder1|o~0_combout\) # (!\Ram0|altsyncram_component|auto_generated|q_a\(2)))) # (!\Accu0|FFD2|q~q\ & (!\Ram0|altsyncram_component|auto_generated|q_a\(2) & 
-- \Sub0|adder1|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD2|q~q\,
	datab => \Sub0|adder3|s~0_combout\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(2),
	datad => \Sub0|adder1|o~0_combout\,
	combout => \Sub0|adder3|s~combout\);

-- Location: LCCOMB_X54_Y49_N8
\Mux0|Dout~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~13_combout\ = (\Ram0|altsyncram_component|auto_generated|q_a\(3) & ((\Accu0|FFD3|q~q\ $ (\Mux0|Dout[1]~7_combout\)) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4)))) # (!\Ram0|altsyncram_component|auto_generated|q_a\(3) & 
-- (\Accu0|FFD3|q~q\ & ((\Mux0|Dout[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD3|q~q\,
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(3),
	datad => \Mux0|Dout[1]~7_combout\,
	combout => \Mux0|Dout~13_combout\);

-- Location: LCCOMB_X54_Y49_N18
\Sum0|adder3|s\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sum0|adder3|s~combout\ = \Sub0|adder3|s~0_combout\ $ (((\Ram0|altsyncram_component|auto_generated|q_a\(2) & ((\Sum0|adder1|o~0_combout\) # (\Accu0|FFD2|q~q\))) # (!\Ram0|altsyncram_component|auto_generated|q_a\(2) & (\Sum0|adder1|o~0_combout\ & 
-- \Accu0|FFD2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0|altsyncram_component|auto_generated|q_a\(2),
	datab => \Sum0|adder1|o~0_combout\,
	datac => \Accu0|FFD2|q~q\,
	datad => \Sub0|adder3|s~0_combout\,
	combout => \Sum0|adder3|s~combout\);

-- Location: LCCOMB_X54_Y49_N16
\Mux0|Dout~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~14_combout\ = (\Mux0|Dout[1]~5_combout\ & (\Mux0|Dout[1]~6_combout\)) # (!\Mux0|Dout[1]~5_combout\ & ((\Mux0|Dout[1]~6_combout\ & ((\Sum0|adder3|s~combout\))) # (!\Mux0|Dout[1]~6_combout\ & (\Mux0|Dout~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0|Dout[1]~5_combout\,
	datab => \Mux0|Dout[1]~6_combout\,
	datac => \Mux0|Dout~13_combout\,
	datad => \Sum0|adder3|s~combout\,
	combout => \Mux0|Dout~14_combout\);

-- Location: LCCOMB_X54_Y49_N24
\Mux0|Dout~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~15_combout\ = (\Mux0|Dout[1]~5_combout\ & ((\Mux0|Dout~14_combout\ & (!\Sub0|adder3|s~combout\)) # (!\Mux0|Dout~14_combout\ & ((\Accu0|FFD3|q~q\))))) # (!\Mux0|Dout[1]~5_combout\ & (((\Mux0|Dout~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0|Dout[1]~5_combout\,
	datab => \Sub0|adder3|s~combout\,
	datac => \Accu0|FFD3|q~q\,
	datad => \Mux0|Dout~14_combout\,
	combout => \Mux0|Dout~15_combout\);

-- Location: FF_X54_Y49_N25
\Mux0|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkMux~clkctrl_outclk\,
	d => \Mux0|Dout~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mux0|Dout\(3));

-- Location: FF_X54_Y51_N11
\Accu0|FFD3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkAccu~clkctrl_outclk\,
	asdata => \Mux0|Dout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Accu0|FFD3|q~q\);

-- Location: LCCOMB_X54_Y51_N2
\wren~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wren~0_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(5) & ((!\Rom0|altsyncram_component|auto_generated|q_a\(6)))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(5) & (\Accu0|FFD3|q~q\ & \Rom0|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Accu0|FFD3|q~q\,
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(6),
	combout => \wren~0_combout\);

-- Location: LCCOMB_X54_Y51_N4
\wren~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \wren~1_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(4) & (!\Rom0|altsyncram_component|auto_generated|q_a\(7) & \wren~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	datad => \wren~0_combout\,
	combout => \wren~1_combout\);

-- Location: LCCOMB_X54_Y51_N12
\Mux0|Dout~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~3_combout\ = \Accu0|FFD0|q~q\ $ (((\Ram0|altsyncram_component|auto_generated|q_a\(0) & !\Rom0|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Accu0|FFD0|q~q\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	combout => \Mux0|Dout~3_combout\);

-- Location: LCCOMB_X54_Y51_N26
\Mux0|Dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~0_combout\ = (\Accu0|FFD0|q~q\ & ((\Rom0|altsyncram_component|auto_generated|q_a\(5) $ (\Ram0|altsyncram_component|auto_generated|q_a\(0))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4)))) # (!\Accu0|FFD0|q~q\ & 
-- (\Rom0|altsyncram_component|auto_generated|q_a\(5) & (\Ram0|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	datab => \Accu0|FFD0|q~q\,
	datac => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	combout => \Mux0|Dout~0_combout\);

-- Location: LCCOMB_X54_Y51_N0
\Mux0|Dout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~1_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(5) & ((\Rom0|altsyncram_component|auto_generated|q_a\(4) & ((\Accu0|FFD0|q~q\))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(4) & 
-- (\Ram0|altsyncram_component|auto_generated|q_a\(0))))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(5) & (((\Accu0|FFD0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0|altsyncram_component|auto_generated|q_a\(0),
	datab => \Accu0|FFD0|q~q\,
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(5),
	datad => \Rom0|altsyncram_component|auto_generated|q_a\(4),
	combout => \Mux0|Dout~1_combout\);

-- Location: LCCOMB_X54_Y51_N6
\Mux0|Dout~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~2_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(6) & ((\Accu0|FFD0|q~q\) # ((\Rom0|altsyncram_component|auto_generated|q_a\(7))))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(6) & 
-- (((!\Rom0|altsyncram_component|auto_generated|q_a\(7) & \Mux0|Dout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom0|altsyncram_component|auto_generated|q_a\(6),
	datab => \Accu0|FFD0|q~q\,
	datac => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	datad => \Mux0|Dout~1_combout\,
	combout => \Mux0|Dout~2_combout\);

-- Location: LCCOMB_X54_Y51_N24
\Mux0|Dout~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0|Dout~4_combout\ = (\Rom0|altsyncram_component|auto_generated|q_a\(7) & ((\Mux0|Dout~2_combout\ & (\Mux0|Dout~3_combout\)) # (!\Mux0|Dout~2_combout\ & ((\Mux0|Dout~0_combout\))))) # (!\Rom0|altsyncram_component|auto_generated|q_a\(7) & 
-- (((\Mux0|Dout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0|Dout~3_combout\,
	datab => \Rom0|altsyncram_component|auto_generated|q_a\(7),
	datac => \Mux0|Dout~0_combout\,
	datad => \Mux0|Dout~2_combout\,
	combout => \Mux0|Dout~4_combout\);

-- Location: FF_X54_Y51_N25
\Mux0|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkMux~clkctrl_outclk\,
	d => \Mux0|Dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mux0|Dout\(0));

-- Location: LCCOMB_X54_Y51_N28
\Accu0|FFD0|q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Accu0|FFD0|q~feeder_combout\ = \Mux0|Dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0|Dout\(0),
	combout => \Accu0|FFD0|q~feeder_combout\);

-- Location: FF_X54_Y51_N29
\Accu0|FFD0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkAccu~clkctrl_outclk\,
	d => \Accu0|FFD0|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Accu0|FFD0|q~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;
END structure;


