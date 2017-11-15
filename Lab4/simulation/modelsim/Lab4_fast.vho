-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/15/2017 17:40:45"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g07_rules IS
    PORT (
	play_pile_top_card : IN std_logic_vector(5 DOWNTO 0);
	card_play : IN std_logic_vector(5 DOWNTO 0);
	legal_play : OUT std_logic;
	sum : OUT std_logic_vector(5 DOWNTO 0)
	);
END g07_rules;

-- Design Ports Information
-- legal_play	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[0]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[3]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[4]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sum[5]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- card_play[0]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_play[4]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_play[2]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_play[1]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_play[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_play[5]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[1]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[0]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[3]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[5]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g07_rules IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_play_pile_top_card : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_card_play : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_legal_play : std_logic;
SIGNAL ww_sum : std_logic_vector(5 DOWNTO 0);
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \u1|inst|inst5|inst4~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \u1|inst5|inst2|inst1~0_combout\ : std_logic;
SIGNAL \ace~0_combout\ : std_logic;
SIGNAL \ace~1_combout\ : std_logic;
SIGNAL \u1|inst|inst5|inst4~0_combout\ : std_logic;
SIGNAL \u1|inst|inst5|inst4~2_combout\ : std_logic;
SIGNAL \u1|inst|inst6|inst1~combout\ : std_logic;
SIGNAL \new_card_value_int[0]~20_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \u1|inst|inst7|inst1~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \new_card_value_int[1]~21_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~14_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~13_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~10_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~11_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~17_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~18_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~23_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \u1|inst4|inst1|inst2~combout\ : std_logic;
SIGNAL \u1|inst5|inst1|inst4~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \new_card_value_int[3]~19_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ace~2_combout\ : std_logic;
SIGNAL \new_sum_int~7_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \new_sum_int~8_combout\ : std_logic;
SIGNAL \new_card_value_int[2]~22_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \new_sum_int~11_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \new_sum_int~10_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \new_sum_int~9_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \new_sum_int[5]~12_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \ace~3_combout\ : std_logic;
SIGNAL \legal_play~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \play_pile_top_card~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \card_play~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL new_sum_int : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_play_pile_top_card <= play_pile_top_card;
ww_card_play <= card_play;
legal_play <= ww_legal_play;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X10_Y26_N10
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\new_sum_int~10_combout\ & (\Add2~3\ $ (GND))) # (!\new_sum_int~10_combout\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\new_sum_int~10_combout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \new_sum_int~10_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X10_Y26_N12
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\new_sum_int~11_combout\ & (\Add2~5\ & VCC)) # (!\new_sum_int~11_combout\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\new_sum_int~11_combout\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \new_sum_int~11_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X7_Y26_N14
\u1|inst|inst5|inst4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst|inst5|inst4~1_combout\ = (\card_play~combout\(5) & ((\card_play~combout\(4)) # ((\card_play~combout\(3))))) # (!\card_play~combout\(5) & (\card_play~combout\(3) & ((\card_play~combout\(4)) # (\card_play~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datab => \card_play~combout\(4),
	datac => \card_play~combout\(1),
	datad => \card_play~combout\(3),
	combout => \u1|inst|inst5|inst4~1_combout\);

-- Location: LCCOMB_X10_Y26_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \card_play~combout\(1) $ (!\card_play~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_play~combout\(1),
	datad => \card_play~combout\(5),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X9_Y26_N8
\u1|inst5|inst2|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst5|inst2|inst1~0_combout\ = \card_play~combout\(2) $ (((\card_play~combout\(5) & (\card_play~combout\(4) & \u1|inst|inst5|inst4~2_combout\)) # (!\card_play~combout\(5) & (\card_play~combout\(4) $ (\u1|inst|inst5|inst4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datab => \card_play~combout\(2),
	datac => \card_play~combout\(4),
	datad => \u1|inst|inst5|inst4~2_combout\,
	combout => \u1|inst5|inst2|inst1~0_combout\);

-- Location: LCCOMB_X10_Y26_N30
\ace~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ace~0_combout\ = (!\new_sum_int~11_combout\ & (new_sum_int(0) & (\LessThan1~2_combout\ & !\new_sum_int[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_sum_int~11_combout\,
	datab => new_sum_int(0),
	datac => \LessThan1~2_combout\,
	datad => \new_sum_int[5]~12_combout\,
	combout => \ace~0_combout\);

-- Location: LCCOMB_X10_Y26_N24
\ace~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ace~1_combout\ = (\ace~0_combout\ & (\new_sum_int~8_combout\ & (\new_sum_int~10_combout\ & !\new_sum_int~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ace~0_combout\,
	datab => \new_sum_int~8_combout\,
	datac => \new_sum_int~10_combout\,
	datad => \new_sum_int~9_combout\,
	combout => \ace~1_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_play[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_card_play(5),
	combout => \card_play~combout\(5));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_play_pile_top_card(1),
	combout => \play_pile_top_card~combout\(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_play_pile_top_card(0),
	combout => \play_pile_top_card~combout\(0));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_play_pile_top_card(2),
	combout => \play_pile_top_card~combout\(2));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_play_pile_top_card(3),
	combout => \play_pile_top_card~combout\(3));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_play[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_card_play(0),
	combout => \card_play~combout\(0));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_play[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_card_play(4),
	combout => \card_play~combout\(4));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_play[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_card_play(1),
	combout => \card_play~combout\(1));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_play[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_card_play(3),
	combout => \card_play~combout\(3));

-- Location: LCCOMB_X7_Y26_N16
\u1|inst|inst5|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst|inst5|inst4~0_combout\ = (\card_play~combout\(5) & ((\card_play~combout\(3)) # ((!\card_play~combout\(4) & \card_play~combout\(1))))) # (!\card_play~combout\(5) & (\card_play~combout\(3) & (\card_play~combout\(4) $ (!\card_play~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datab => \card_play~combout\(4),
	datac => \card_play~combout\(1),
	datad => \card_play~combout\(3),
	combout => \u1|inst|inst5|inst4~0_combout\);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_play[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_card_play(2),
	combout => \card_play~combout\(2));

-- Location: LCCOMB_X8_Y26_N22
\u1|inst|inst5|inst4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst|inst5|inst4~2_combout\ = (\u1|inst|inst5|inst4~1_combout\ & ((\u1|inst|inst5|inst4~0_combout\) # ((\card_play~combout\(2))))) # (!\u1|inst|inst5|inst4~1_combout\ & (\u1|inst|inst5|inst4~0_combout\ & (\card_play~combout\(2) & 
-- \card_play~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|inst|inst5|inst4~1_combout\,
	datab => \u1|inst|inst5|inst4~0_combout\,
	datac => \card_play~combout\(2),
	datad => \card_play~combout\(0),
	combout => \u1|inst|inst5|inst4~2_combout\);

-- Location: LCCOMB_X8_Y26_N14
\u1|inst|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst|inst6|inst1~combout\ = \card_play~combout\(4) $ (\u1|inst|inst5|inst4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_play~combout\(4),
	datad => \u1|inst|inst5|inst4~2_combout\,
	combout => \u1|inst|inst6|inst1~combout\);

-- Location: LCCOMB_X9_Y26_N4
\new_card_value_int[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[0]~20_combout\ = (\LessThan0~0_combout\) # ((!\Equal0~0_combout\ & (\card_play~combout\(0) $ (\u1|inst|inst6|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \card_play~combout\(0),
	datad => \u1|inst|inst6|inst1~combout\,
	combout => \new_card_value_int[0]~20_combout\);

-- Location: LCCOMB_X8_Y26_N12
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\new_card_value_int[3]~23_combout\ & (((\new_card_value_int[1]~21_combout\ & !\new_card_value_int[0]~20_combout\)) # (!\new_card_value_int[2]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_card_value_int[2]~22_combout\,
	datab => \new_card_value_int[1]~21_combout\,
	datac => \new_card_value_int[0]~20_combout\,
	datad => \new_card_value_int[3]~23_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y26_N30
\u1|inst|inst7|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst|inst7|inst1~0_combout\ = \card_play~combout\(5) $ (((\card_play~combout\(4) & \u1|inst|inst5|inst4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datac => \card_play~combout\(4),
	datad => \u1|inst|inst5|inst4~2_combout\,
	combout => \u1|inst|inst7|inst1~0_combout\);

-- Location: LCCOMB_X8_Y26_N24
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \card_play~combout\(1) $ (\u1|inst|inst7|inst1~0_combout\ $ (((\u1|inst|inst6|inst1~combout\) # (!\card_play~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(1),
	datab => \u1|inst|inst6|inst1~combout\,
	datac => \card_play~combout\(0),
	datad => \u1|inst|inst7|inst1~0_combout\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X9_Y26_N18
\new_card_value_int[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[1]~21_combout\ = (\Equal0~0_combout\) # ((\LessThan0~0_combout\) # (!\Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~3_combout\,
	combout => \new_card_value_int[1]~21_combout\);

-- Location: LCCOMB_X8_Y26_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\new_card_value_int[2]~22_combout\ & (!\new_card_value_int[1]~21_combout\ & (!\new_card_value_int[0]~20_combout\ & !\new_card_value_int[3]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_card_value_int[2]~22_combout\,
	datab => \new_card_value_int[1]~21_combout\,
	datac => \new_card_value_int[0]~20_combout\,
	datad => \new_card_value_int[3]~23_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y26_N26
\new_card_value_int[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~14_combout\ = (\card_play~combout\(1) & ((\card_play~combout\(2)) # ((\card_play~combout\(4) & \card_play~combout\(0))))) # (!\card_play~combout\(1) & (\card_play~combout\(2) & (\card_play~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(1),
	datab => \card_play~combout\(2),
	datac => \card_play~combout\(4),
	datad => \card_play~combout\(0),
	combout => \new_card_value_int[3]~14_combout\);

-- Location: LCCOMB_X8_Y26_N16
\new_card_value_int[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~13_combout\ = (\card_play~combout\(2) & (!\card_play~combout\(4) & ((!\card_play~combout\(0)) # (!\card_play~combout\(1))))) # (!\card_play~combout\(2) & ((\card_play~combout\(1)) # ((\card_play~combout\(4)) # 
-- (\card_play~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(1),
	datab => \card_play~combout\(2),
	datac => \card_play~combout\(4),
	datad => \card_play~combout\(0),
	combout => \new_card_value_int[3]~13_combout\);

-- Location: LCCOMB_X8_Y26_N20
\new_card_value_int[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~10_combout\ = (\card_play~combout\(2) & ((\card_play~combout\(4)) # ((\card_play~combout\(1) & \card_play~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(1),
	datab => \card_play~combout\(2),
	datac => \card_play~combout\(4),
	datad => \card_play~combout\(0),
	combout => \new_card_value_int[3]~10_combout\);

-- Location: LCCOMB_X8_Y26_N0
\new_card_value_int[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~11_combout\ = (\card_play~combout\(1) & (!\card_play~combout\(2) & (!\card_play~combout\(4)))) # (!\card_play~combout\(1) & (((!\card_play~combout\(4) & !\card_play~combout\(0))) # (!\card_play~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(1),
	datab => \card_play~combout\(2),
	datac => \card_play~combout\(4),
	datad => \card_play~combout\(0),
	combout => \new_card_value_int[3]~11_combout\);

-- Location: LCCOMB_X8_Y26_N10
\new_card_value_int[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~17_combout\ = (\card_play~combout\(5) & (\card_play~combout\(3))) # (!\card_play~combout\(5) & ((\card_play~combout\(3) & ((\new_card_value_int[3]~11_combout\))) # (!\card_play~combout\(3) & (\new_card_value_int[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datab => \card_play~combout\(3),
	datac => \new_card_value_int[3]~10_combout\,
	datad => \new_card_value_int[3]~11_combout\,
	combout => \new_card_value_int[3]~17_combout\);

-- Location: LCCOMB_X8_Y26_N28
\new_card_value_int[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~18_combout\ = (\card_play~combout\(5) & ((\new_card_value_int[3]~17_combout\ & (\new_card_value_int[3]~14_combout\)) # (!\new_card_value_int[3]~17_combout\ & ((\new_card_value_int[3]~13_combout\))))) # (!\card_play~combout\(5) & 
-- (((\new_card_value_int[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datab => \new_card_value_int[3]~14_combout\,
	datac => \new_card_value_int[3]~13_combout\,
	datad => \new_card_value_int[3]~17_combout\,
	combout => \new_card_value_int[3]~18_combout\);

-- Location: LCCOMB_X8_Y26_N6
\new_card_value_int[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~23_combout\ = (\LessThan0~0_combout\) # ((\Equal0~0_combout\) # (\new_card_value_int[3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \new_card_value_int[3]~18_combout\,
	combout => \new_card_value_int[3]~23_combout\);

-- Location: LCCOMB_X9_Y26_N0
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & ((\card_play~combout\(4) & (\card_play~combout\(0) $ (!\u1|inst|inst5|inst4~2_combout\))) # (!\card_play~combout\(4) & (!\card_play~combout\(0) & \u1|inst|inst5|inst4~2_combout\)))) # (!\Add0~0_combout\ & 
-- (!\card_play~combout\(4) & (\card_play~combout\(0) & !\u1|inst|inst5|inst4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \card_play~combout\(4),
	datac => \card_play~combout\(0),
	datad => \u1|inst|inst5|inst4~2_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X9_Y26_N16
\u1|inst4|inst1|inst2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst4|inst1|inst2~combout\ = (\card_play~combout\(5) & (\card_play~combout\(4) $ (\u1|inst|inst5|inst4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(5),
	datac => \card_play~combout\(4),
	datad => \u1|inst|inst5|inst4~2_combout\,
	combout => \u1|inst4|inst1|inst2~combout\);

-- Location: LCCOMB_X9_Y26_N6
\u1|inst5|inst1|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|inst5|inst1|inst4~0_combout\ = (\card_play~combout\(1) & ((\card_play~combout\(0)) # ((!\u1|inst|inst6|inst1~combout\) # (!\u1|inst|inst7|inst1~0_combout\)))) # (!\card_play~combout\(1) & (!\u1|inst|inst7|inst1~0_combout\ & ((\card_play~combout\(0)) # 
-- (!\u1|inst|inst6|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_play~combout\(1),
	datab => \card_play~combout\(0),
	datac => \u1|inst|inst7|inst1~0_combout\,
	datad => \u1|inst|inst6|inst1~combout\,
	combout => \u1|inst5|inst1|inst4~0_combout\);

-- Location: LCCOMB_X9_Y26_N10
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \u1|inst5|inst2|inst1~0_combout\ $ (\Add0~1_combout\ $ (\u1|inst4|inst1|inst2~combout\ $ (\u1|inst5|inst1|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|inst5|inst2|inst1~0_combout\,
	datab => \Add0~1_combout\,
	datac => \u1|inst4|inst1|inst2~combout\,
	datad => \u1|inst5|inst1|inst4~0_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X8_Y26_N18
\new_card_value_int[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[3]~19_combout\ = (!\Equal0~0_combout\ & !\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \new_card_value_int[3]~19_combout\);

-- Location: LCCOMB_X8_Y26_N8
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\new_card_value_int[0]~20_combout\ & (((\Add0~2_combout\ & !\Add0~3_combout\)) # (!\new_card_value_int[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_card_value_int[0]~20_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~3_combout\,
	datad => \new_card_value_int[3]~19_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X7_Y26_N2
\ace~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ace~2_combout\ = (\ace~3_combout\ & ((!\new_card_value_int[3]~23_combout\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ace~3_combout\,
	datac => \Equal2~0_combout\,
	datad => \new_card_value_int[3]~23_combout\,
	combout => \ace~2_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_play_pile_top_card(5),
	combout => \play_pile_top_card~combout\(5));

-- Location: LCCOMB_X8_Y26_N2
\new_sum_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_sum_int~7_combout\ = (\LessThan1~2_combout\) # ((!\ace~3_combout\ & ((!\new_card_value_int[3]~23_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ace~3_combout\,
	datab => \LessThan1~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \new_card_value_int[3]~23_combout\,
	combout => \new_sum_int~7_combout\);

-- Location: LCCOMB_X9_Y26_N20
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\play_pile_top_card~combout\(0) & (\new_card_value_int[0]~20_combout\ $ (GND))) # (!\play_pile_top_card~combout\(0) & (!\new_card_value_int[0]~20_combout\ & VCC))
-- \Add1~1\ = CARRY((\play_pile_top_card~combout\(0) & !\new_card_value_int[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(0),
	datab => \new_card_value_int[0]~20_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X9_Y26_N22
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\play_pile_top_card~combout\(1) & ((\new_card_value_int[1]~21_combout\ & (\Add1~1\ & VCC)) # (!\new_card_value_int[1]~21_combout\ & (!\Add1~1\)))) # (!\play_pile_top_card~combout\(1) & ((\new_card_value_int[1]~21_combout\ & 
-- (!\Add1~1\)) # (!\new_card_value_int[1]~21_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\play_pile_top_card~combout\(1) & (!\new_card_value_int[1]~21_combout\ & !\Add1~1\)) # (!\play_pile_top_card~combout\(1) & ((!\Add1~1\) # (!\new_card_value_int[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(1),
	datab => \new_card_value_int[1]~21_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X10_Y26_N2
\new_sum_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_sum_int~8_combout\ = (\new_sum_int~7_combout\ & ((\Add1~2_combout\))) # (!\new_sum_int~7_combout\ & (!\new_sum_int~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_sum_int~8_combout\,
	datac => \new_sum_int~7_combout\,
	datad => \Add1~2_combout\,
	combout => \new_sum_int~8_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_play_pile_top_card(4),
	combout => \play_pile_top_card~combout\(4));

-- Location: LCCOMB_X9_Y26_N14
\new_card_value_int[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_card_value_int[2]~22_combout\ = (\Equal0~0_combout\) # ((\LessThan0~0_combout\) # (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \new_card_value_int[2]~22_combout\);

-- Location: LCCOMB_X9_Y26_N24
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\play_pile_top_card~combout\(2) $ (\new_card_value_int[2]~22_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\play_pile_top_card~combout\(2) & ((!\Add1~3\) # (!\new_card_value_int[2]~22_combout\))) # (!\play_pile_top_card~combout\(2) & (!\new_card_value_int[2]~22_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \new_card_value_int[2]~22_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X9_Y26_N26
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\play_pile_top_card~combout\(3) & ((\new_card_value_int[3]~23_combout\ & (\Add1~5\ & VCC)) # (!\new_card_value_int[3]~23_combout\ & (!\Add1~5\)))) # (!\play_pile_top_card~combout\(3) & ((\new_card_value_int[3]~23_combout\ & 
-- (!\Add1~5\)) # (!\new_card_value_int[3]~23_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\play_pile_top_card~combout\(3) & (!\new_card_value_int[3]~23_combout\ & !\Add1~5\)) # (!\play_pile_top_card~combout\(3) & ((!\Add1~5\) # (!\new_card_value_int[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(3),
	datab => \new_card_value_int[3]~23_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X9_Y26_N28
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\play_pile_top_card~combout\(4) & (\Add1~7\ $ (GND))) # (!\play_pile_top_card~combout\(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\play_pile_top_card~combout\(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \play_pile_top_card~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X10_Y26_N18
\new_sum_int~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_sum_int~11_combout\ = (\new_sum_int~7_combout\ & ((\Add1~8_combout\))) # (!\new_sum_int~7_combout\ & (\Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datac => \new_sum_int~7_combout\,
	datad => \Add1~8_combout\,
	combout => \new_sum_int~11_combout\);

-- Location: LCCOMB_X10_Y26_N28
\new_sum_int~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_sum_int~10_combout\ = (\new_sum_int~7_combout\ & ((\Add1~6_combout\))) # (!\new_sum_int~7_combout\ & (\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \new_sum_int~7_combout\,
	datad => \Add1~6_combout\,
	combout => \new_sum_int~10_combout\);

-- Location: LCCOMB_X10_Y26_N6
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(\new_sum_int~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_sum_int~8_combout\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X10_Y26_N8
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\new_sum_int~9_combout\ & (\Add2~1_cout\ & VCC)) # (!\new_sum_int~9_combout\ & (!\Add2~1_cout\))
-- \Add2~3\ = CARRY((!\new_sum_int~9_combout\ & !\Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \new_sum_int~9_combout\,
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X10_Y26_N0
\new_sum_int~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_sum_int~9_combout\ = (\new_sum_int~7_combout\ & ((\Add1~4_combout\))) # (!\new_sum_int~7_combout\ & (\Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \new_sum_int~7_combout\,
	datac => \Add2~2_combout\,
	datad => \Add1~4_combout\,
	combout => \new_sum_int~9_combout\);

-- Location: LCCOMB_X10_Y26_N14
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Add2~7\ $ (\new_sum_int[5]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \new_sum_int[5]~12_combout\,
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X9_Y26_N30
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X9_Y26_N2
\new_sum_int[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \new_sum_int[5]~12_combout\ = (\new_sum_int~7_combout\ & ((\Add1~10_combout\))) # (!\new_sum_int~7_combout\ & (\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_sum_int~7_combout\,
	datac => \Add2~8_combout\,
	datad => \Add1~10_combout\,
	combout => \new_sum_int[5]~12_combout\);

-- Location: LCCOMB_X10_Y26_N22
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\new_sum_int[5]~12_combout\) # ((\new_sum_int~9_combout\ & (\new_sum_int~8_combout\ & \new_sum_int~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_sum_int~9_combout\,
	datab => \new_sum_int~8_combout\,
	datac => \new_sum_int~11_combout\,
	datad => \new_sum_int[5]~12_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X10_Y26_N20
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!\LessThan1~1_combout\ & ((!\new_sum_int~10_combout\) # (!\new_sum_int~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datac => \new_sum_int~11_combout\,
	datad => \new_sum_int~10_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X7_Y26_N0
\ace~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ace~3_combout\ = (\ace~1_combout\) # ((\play_pile_top_card~combout\(5) & ((\LessThan1~2_combout\) # (!\ace~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ace~1_combout\,
	datab => \ace~2_combout\,
	datac => \play_pile_top_card~combout\(5),
	datad => \LessThan1~2_combout\,
	combout => \ace~3_combout\);

-- Location: LCCOMB_X7_Y26_N20
\legal_play~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \legal_play~2_combout\ = (\ace~3_combout\) # ((\LessThan1~2_combout\) # ((\new_card_value_int[3]~23_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_card_value_int[3]~23_combout\,
	datab => \ace~3_combout\,
	datac => \Equal2~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \legal_play~2_combout\);

-- Location: LCCOMB_X9_Y26_N12
\new_sum_int[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- new_sum_int(0) = (\new_sum_int~7_combout\ & ((\Add1~0_combout\))) # (!\new_sum_int~7_combout\ & (new_sum_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_sum_int(0),
	datac => \Add1~0_combout\,
	datad => \new_sum_int~7_combout\,
	combout => new_sum_int(0));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\legal_play~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \legal_play~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_legal_play);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => new_sum_int(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(0));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \new_sum_int~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(1));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \new_sum_int~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \new_sum_int~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(3));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \new_sum_int~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(4));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sum[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ace~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sum(5));
END structure;


