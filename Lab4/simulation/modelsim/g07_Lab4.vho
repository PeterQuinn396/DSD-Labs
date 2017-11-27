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

-- DATE "11/16/2017 15:32:31"

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

ENTITY 	g07_lab4_testbed IS
    PORT (
	rled : OUT std_logic;
	request_deal_btn : IN std_logic;
	clk : IN std_logic;
	reset_btn : IN std_logic;
	button : IN std_logic;
	adr_dips : IN std_logic_vector(5 DOWNTO 0);
	mode_dips : IN std_logic_vector(1 DOWNTO 0);
	gled : OUT std_logic;
	LED1 : OUT std_logic_vector(6 DOWNTO 0);
	LED2 : OUT std_logic_vector(6 DOWNTO 0);
	LED3 : OUT std_logic_vector(6 DOWNTO 0);
	LED4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END g07_lab4_testbed;

-- Design Ports Information
-- rled	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gled	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED3[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED4[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adr_dips[4]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_dips[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_dips[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_dips[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_dips[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- adr_dips[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode_dips[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode_dips[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_btn	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- request_deal_btn	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g07_lab4_testbed IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rled : std_logic;
SIGNAL ww_request_deal_btn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_btn : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_adr_dips : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_mode_dips : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_gled : std_logic;
SIGNAL ww_LED1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~57\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~38_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~45_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~46_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~47_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~54_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~55_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~59_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~61_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~62_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~63_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~66_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~70_combout\ : std_logic;
SIGNAL \inst9|inst35|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst34|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst118|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst117|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst119|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst37|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst33|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst115|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst31|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst116|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst30|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst113|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst29|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst114|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst128|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst52|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst127|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst110|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst112|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst27|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst111|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst26|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst106|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst21|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst47|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst126|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst125|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst54|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst129|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst58|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst16|dffs[30]~feeder_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \reset_btn~combout\ : std_logic;
SIGNAL \inst_4|inst~0_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst_4|inst~regout\ : std_logic;
SIGNAL \button~combout\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[10]~feeder_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst~regout\ : std_logic;
SIGNAL \request_deal_btn~combout\ : std_logic;
SIGNAL \inst18|inst~0_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst18|inst~regout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|state.WAIT_LOW~regout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|state.WAIT_HIGH~regout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|state.ENABLE_STACK~regout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ : std_logic;
SIGNAL \inst9|inst90~feeder_combout\ : std_logic;
SIGNAL \inst9|inst90~regout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst16|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ : std_logic;
SIGNAL \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\ : std_logic;
SIGNAL \inst9|inst117|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[4]~5_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst9|inst64|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ : std_logic;
SIGNAL \inst9|inst35|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst122|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst41|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst121|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst39|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst120|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst38|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst119|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst37|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst118|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~42_combout\ : std_logic;
SIGNAL \inst9|inst25|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst110|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst26|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst111|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst27|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst112|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst29|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst113|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst30|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst114|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst31|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst115|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst33|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst116|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst34|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~41_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~44_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~37_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~39_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~40_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \inst9|inst46|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst43|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst124|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst42|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst123|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~53_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~56_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\ : std_logic;
SIGNAL \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ : std_logic;
SIGNAL \inst9|inst53|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst128|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst52|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst127|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst48|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~49_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~48_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~50_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~51_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\ : std_logic;
SIGNAL \inst9|inst18|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst105|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst19|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst106|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst21|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst107|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst23|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst108|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst22|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~71_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~67_combout\ : std_logic;
SIGNAL \inst9|inst109|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~64_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~65_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~68_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~69_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\ : std_logic;
SIGNAL \inst9|inst58|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst54|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst129|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst53|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~35_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\ : std_logic;
SIGNAL \inst9|inst25|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst109|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst23|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst108|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst22|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst107|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~32_combout\ : std_logic;
SIGNAL \inst9|inst125|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst48|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst126|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst47|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst38|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst120|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst39|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst121|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst41|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst122|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst42|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst123|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst43|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst124|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst46|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst9|inst105|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst19|$00000|auto_generated|result_node[1]~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\ : std_logic;
SIGNAL \instb|inst|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ : std_logic;
SIGNAL \inst12|Mux1~0_combout\ : std_logic;
SIGNAL \inst12|Mux2~0_combout\ : std_logic;
SIGNAL \inst12|Mux3~0_combout\ : std_logic;
SIGNAL \inst12|Mux4~3_combout\ : std_logic;
SIGNAL \inst12|Mux4~6_combout\ : std_logic;
SIGNAL \inst12|Mux5~3_combout\ : std_logic;
SIGNAL \inst12|Mux5~9_combout\ : std_logic;
SIGNAL \inst12|Mux6~0_combout\ : std_logic;
SIGNAL \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|inst78|LPM_MUX_component|auto_generated|result_node\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst10|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \inst9|inst18|$00000|auto_generated|result_node\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst2|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst3|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst20|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst4|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst5|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst24|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst6|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst7|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst28|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst8|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst9|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst32|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst_0|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst11|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst36|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst12|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst13|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst40|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst14|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst15|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst44|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst16|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst45|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst49|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst50|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst51|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst55|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst56|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst57|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst61|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst62|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst63|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst67|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst68|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst69|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst73|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst74|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst75|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst79|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst80|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst81|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst85|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst86|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst87|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst91|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst92|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst93|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst97|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst99|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst100|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst101|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst16|dffs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mode_dips~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \adr_dips~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst12|ALT_INV_Mux5~9_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst17|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst9|inst1|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);

BEGIN

rled <= ww_rled;
ww_request_deal_btn <= request_deal_btn;
ww_clk <= clk;
ww_reset_btn <= reset_btn;
ww_button <= button;
ww_adr_dips <= adr_dips;
ww_mode_dips <= mode_dips;
gled <= ww_gled;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst9|inst64|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ & \inst9|inst64|LPM_MUX_component|auto_generated|result_node[4]~5_combout\ & 
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & \inst9|inst64|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & \inst9|inst64|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & 
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(8) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(9) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(10) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(11) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(16) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(17) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(18) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(19) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(20) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(8);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(21) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(9);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(22) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(10);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(23) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(11);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(24) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(12);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(25) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(13);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(26) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(14);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(27) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(15);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(28) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(16);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(29) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(17);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(30) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(18);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(31) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(19);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(32) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(20);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(33) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(21);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(34) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(22);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(35) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(23);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(36) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(24);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(37) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(25);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(38) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(26);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(39) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(27);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(40) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(28);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(41) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(29);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(42) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(30);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(43) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(31);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(44) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(32);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(45) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(33);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(46) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(34);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(47) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(35);

\inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst9|inst64|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ & \inst9|inst64|LPM_MUX_component|auto_generated|result_node[4]~5_combout\ & 
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & \inst9|inst64|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & \inst9|inst64|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & 
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(0) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(1) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(2) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(3) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(4) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(5) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(6) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(7) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(12) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(13) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(14) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(15) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(48) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(49) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(50) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(51) <= \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst12|ALT_INV_Mux5~9_combout\ <= NOT \inst12|Mux5~9_combout\;
\inst13|ALT_INV_Mux4~0_combout\ <= NOT \inst13|Mux4~0_combout\;
\inst13|ALT_INV_Mux1~0_combout\ <= NOT \inst13|Mux1~0_combout\;
\inst5|ALT_INV_Mux5~0_combout\ <= NOT \inst5|Mux5~0_combout\;
\inst1|ALT_INV_Mux4~0_combout\ <= NOT \inst1|Mux4~0_combout\;
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;
\inst9|inst17|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0);
\inst9|inst1|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0) <= NOT \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0);

-- Location: LCFF_X37_Y18_N17
\inst16|dffs[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst16|dffs[30]~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(30));

-- Location: LCCOMB_X38_Y18_N14
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst16|dffs\(28) $ (VCC))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) 
-- & ((\inst16|dffs\(28)) # (GND)))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\inst16|dffs\(28)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst16|dffs\(28),
	datad => VCC,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X38_Y18_N20
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCFF_X35_Y21_N17
\inst9|inst51|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst35|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst51|dffs\(1));

-- Location: LCFF_X35_Y21_N15
\inst9|inst49|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst34|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst49|dffs\(1));

-- Location: LCFF_X33_Y21_N25
\inst9|inst55|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst118|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst55|dffs\(1));

-- Location: LCFF_X36_Y21_N5
\inst9|inst50|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst117|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst50|dffs\(1));

-- Location: LCFF_X33_Y21_N15
\inst9|inst57|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst119|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst57|dffs\(1));

-- Location: LCFF_X32_Y21_N17
\inst9|inst56|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst37|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst56|dffs\(1));

-- Location: LCFF_X37_Y21_N17
\inst9|inst16|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst33|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst16|dffs\(1));

-- Location: LCFF_X38_Y21_N5
\inst9|inst44|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst115|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst44|dffs\(1));

-- Location: LCFF_X37_Y21_N15
\inst9|inst15|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst31|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst15|dffs\(1));

-- Location: LCFF_X36_Y21_N15
\inst9|inst45|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst116|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst45|dffs\(1));

-- Location: LCFF_X37_Y20_N13
\inst9|inst40|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst30|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst40|dffs\(1));

-- Location: LCFF_X38_Y20_N25
\inst9|inst13|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst113|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst13|dffs\(1));

-- Location: LCFF_X37_Y20_N15
\inst9|inst12|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst29|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst12|dffs\(1));

-- Location: LCFF_X38_Y21_N23
\inst9|inst14|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst114|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst14|dffs\(1));

-- Location: LCFF_X32_Y19_N13
\inst9|inst93|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst128|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst93|dffs\(1));

-- Location: LCFF_X33_Y19_N17
\inst9|inst92|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst52|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst92|dffs\(1));

-- Location: LCFF_X33_Y18_N15
\inst9|inst91|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst127|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst91|dffs\(1));

-- Location: LCFF_X39_Y20_N13
\inst9|inst9|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst110|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst9|dffs\(1));

-- Location: LCFF_X38_Y20_N15
\inst9|inst36|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst112|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst36|dffs\(1));

-- Location: LCFF_X40_Y20_N9
\inst9|inst11|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst27|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst11|dffs\(1));

-- Location: LCFF_X39_Y20_N11
\inst9|inst_0|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst111|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst_0|dffs\(1));

-- Location: LCFF_X40_Y20_N31
\inst9|inst32|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst26|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst32|dffs\(1));

-- Location: LCFF_X35_Y19_N9
\inst9|inst20|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst106|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst20|dffs\(1));

-- Location: LCFF_X38_Y19_N11
\inst9|inst4|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst21|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst4|dffs\(1));

-- Location: LCFF_X34_Y19_N17
\inst9|inst85|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst47|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst85|dffs\(0));

-- Location: LCFF_X33_Y18_N5
\inst9|inst86|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst126|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst86|dffs\(0));

-- Location: LCFF_X34_Y18_N9
\inst9|inst81|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst125|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst81|dffs\(0));

-- Location: LCFF_X31_Y19_N1
\inst9|inst100|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst54|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst100|dffs\(0));

-- Location: LCFF_X32_Y19_N15
\inst9|inst99|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst129|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst99|dffs\(0));

-- Location: LCFF_X31_Y19_N31
\inst9|inst101|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst58|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst101|dffs\(0));

-- Location: LCFF_X36_Y19_N25
\inst16|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(12));

-- Location: LCFF_X36_Y19_N21
\inst16|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(10));

-- Location: LCFF_X36_Y18_N17
\inst16|dffs[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(24));

-- Location: LCFF_X36_Y18_N15
\inst16|dffs[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(23));

-- Location: LCFF_X36_Y19_N13
\inst16|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(6));

-- Location: LCCOMB_X35_Y18_N2
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst16|dffs\(0) & (\inst16|dffs\(15) $ (VCC))) # (!\inst16|dffs\(0) & (\inst16|dffs\(15) & VCC))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\inst16|dffs\(0) & \inst16|dffs\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(0),
	datab => \inst16|dffs\(15),
	datad => VCC,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X35_Y18_N6
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst16|dffs\(2) $ (\inst16|dffs\(17) $ (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst16|dffs\(2) & ((\inst16|dffs\(17)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\))) # (!\inst16|dffs\(2) & (\inst16|dffs\(17) & 
-- !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(2),
	datab => \inst16|dffs\(17),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X35_Y18_N8
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst16|dffs\(18) & ((\inst16|dffs\(3) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\inst16|dffs\(3) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\)))) # 
-- (!\inst16|dffs\(18) & ((\inst16|dffs\(3) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst16|dffs\(3) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst16|dffs\(18) & (!\inst16|dffs\(3) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst16|dffs\(18) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\) # 
-- (!\inst16|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(18),
	datab => \inst16|dffs\(3),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X35_Y18_N10
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst16|dffs\(19) $ (\inst16|dffs\(4) $ (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst16|dffs\(19) & ((\inst16|dffs\(4)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # (!\inst16|dffs\(19) & (\inst16|dffs\(4) & 
-- !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(19),
	datab => \inst16|dffs\(4),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X35_Y18_N12
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst16|dffs\(5) & ((\inst16|dffs\(20) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\inst16|dffs\(20) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\)))) # 
-- (!\inst16|dffs\(5) & ((\inst16|dffs\(20) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst16|dffs\(20) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst16|dffs\(5) & (!\inst16|dffs\(20) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst16|dffs\(5) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\) # 
-- (!\inst16|dffs\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(5),
	datab => \inst16|dffs\(20),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X35_Y18_N20
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst16|dffs\(24) & ((\inst16|dffs\(9) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # (!\inst16|dffs\(9) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\)))) 
-- # (!\inst16|dffs\(24) & ((\inst16|dffs\(9) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst16|dffs\(9) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst16|dffs\(24) & (!\inst16|dffs\(9) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst16|dffs\(24) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\) # 
-- (!\inst16|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(24),
	datab => \inst16|dffs\(9),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X35_Y18_N26
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst16|dffs\(12) $ (\inst16|dffs\(27) $ (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst16|dffs\(12) & ((\inst16|dffs\(27)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\))) # (!\inst16|dffs\(12) & (\inst16|dffs\(27) & 
-- !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(12),
	datab => \inst16|dffs\(27),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X35_Y18_N28
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst16|dffs\(13) & ((\inst16|dffs\(28) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)) # (!\inst16|dffs\(28) & 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\)))) # (!\inst16|dffs\(13) & ((\inst16|dffs\(28) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst16|dffs\(28) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\) # 
-- (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst16|dffs\(13) & (!\inst16|dffs\(28) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst16|dffs\(13) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\) # 
-- (!\inst16|dffs\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(13),
	datab => \inst16|dffs\(28),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X35_Y18_N30
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = \inst16|dffs\(29) $ (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~27\ $ (!\inst16|dffs\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(29),
	datad => \inst16|dffs\(14),
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X36_Y19_N12
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst16|dffs\(6) & ((\inst16|dffs\(5) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\inst16|dffs\(5) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\)))) # 
-- (!\inst16|dffs\(6) & ((\inst16|dffs\(5) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst16|dffs\(5) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst16|dffs\(6) & (!\inst16|dffs\(5) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst16|dffs\(6) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\) # 
-- (!\inst16|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(6),
	datab => \inst16|dffs\(5),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X36_Y19_N20
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst16|dffs\(10) & ((\inst16|dffs\(9) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # (!\inst16|dffs\(9) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\)))) 
-- # (!\inst16|dffs\(10) & ((\inst16|dffs\(9) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst16|dffs\(9) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst16|dffs\(10) & (!\inst16|dffs\(9) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst16|dffs\(10) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\) # 
-- (!\inst16|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(10),
	datab => \inst16|dffs\(9),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X36_Y19_N24
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst16|dffs\(12) & ((\inst16|dffs\(11) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # (!\inst16|dffs\(11) & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\)))) # (!\inst16|dffs\(12) & ((\inst16|dffs\(11) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst16|dffs\(11) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\) # 
-- (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst16|dffs\(12) & (!\inst16|dffs\(11) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst16|dffs\(12) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\) # 
-- (!\inst16|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(12),
	datab => \inst16|dffs\(11),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X36_Y18_N14
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\ = ((\inst16|dffs\(23) $ (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\ = CARRY((\inst16|dffs\(23) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\))) # (!\inst16|dffs\(23) & 
-- (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(23),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~44_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\);

-- Location: LCCOMB_X36_Y18_N16
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\ = (\inst16|dffs\(24) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\ & VCC)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\)))) # (!\inst16|dffs\(24) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\ = CARRY((\inst16|dffs\(24) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\)) # (!\inst16|dffs\(24) & 
-- ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(24),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~45\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~46_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\);

-- Location: LCCOMB_X36_Y18_N26
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\ = ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ $ (\inst16|dffs\(29) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~57\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & ((\inst16|dffs\(29)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\))) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst16|dffs\(29) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datab => \inst16|dffs\(29),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~57\);

-- Location: LCCOMB_X36_Y18_N28
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\ = \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ $ (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~57\ $ (\inst16|dffs\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => \inst16|dffs\(30),
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~57\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\);

-- Location: LCFF_X31_Y21_N21
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22));

-- Location: LCFF_X31_Y21_N13
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18));

-- Location: LCFF_X31_Y21_N11
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X30_Y20_N17
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20));

-- Location: LCFF_X29_Y20_N25
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\,
	sdata => \inst6|inst~regout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X30_Y20_N13
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18));

-- Location: LCFF_X30_Y21_N25
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCFF_X36_Y12_N17
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20));

-- Location: LCFF_X36_Y12_N11
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X36_Y13_N25
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X31_Y21_N10
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X31_Y21_N12
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X31_Y21_N20
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCCOMB_X30_Y21_N8
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X30_Y21_N24
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X30_Y20_N12
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X30_Y20_N16
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCCOMB_X36_Y13_N24
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X36_Y13_N30
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X36_Y12_N10
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X36_Y12_N16
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCCOMB_X38_Y18_N10
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\ = (\inst16|dffs\(30) & (((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- (!\inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst16|dffs\(30),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\);

-- Location: LCCOMB_X39_Y18_N24
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\);

-- Location: LCCOMB_X34_Y18_N10
\inst3|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\inst2|state.ENABLE_STACK~regout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\))) # (!\inst2|state.ENABLE_STACK~regout\ & 
-- (\adr_dips~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ENABLE_STACK~regout\,
	datab => \adr_dips~combout\(1),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X35_Y21_N24
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst51|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst49|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst51|dffs\(1),
	datab => \inst9|inst49|dffs\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X35_Y21_N26
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~1_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst55|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst50|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst55|dffs\(1),
	datad => \inst9|inst50|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~1_combout\);

-- Location: LCCOMB_X34_Y21_N12
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst62|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst61|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst62|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst61|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X34_Y21_N6
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~3_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst57|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst56|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst57|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst56|dffs\(1),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X35_Y21_N4
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~4_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~2_combout\) # 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~3_combout\)))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~1_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~3_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~4_combout\);

-- Location: LCCOMB_X35_Y20_N0
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~5_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~4_combout\) # 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~0_combout\ & !\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~0_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~4_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X37_Y21_N28
\inst9|inst78|LPM_MUX_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\) # ((\inst9|inst44|dffs\(1))))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst15|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst15|dffs\(1),
	datad => \inst9|inst44|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X36_Y21_N8
\inst9|inst78|LPM_MUX_component|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~1_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\ & ((\inst9|inst45|dffs\(1)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\ & (\inst9|inst16|dffs\(1))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst16|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst45|dffs\(1),
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~0_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X37_Y20_N4
\inst9|inst78|LPM_MUX_component|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~2_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\) # ((\inst9|inst13|dffs\(1))))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst12|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst12|dffs\(1),
	datad => \inst9|inst13|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X37_Y20_N6
\inst9|inst78|LPM_MUX_component|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~3_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~2_combout\ & (((\inst9|inst14|dffs\(1)) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~2_combout\ & (\inst9|inst40|dffs\(1) & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst40|dffs\(1),
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~2_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst14|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X35_Y20_N10
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~1_combout\)) # (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~1_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~3_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~6_combout\);

-- Location: LCCOMB_X34_Y18_N6
\inst3|LPM_MUX_component|auto_generated|result_node[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[5]~10_combout\ = (\inst2|state.ENABLE_STACK~regout\ & (((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))) # (!\inst2|state.ENABLE_STACK~regout\ & (\adr_dips~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adr_dips~combout\(5),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X34_Y19_N10
\inst9|inst78|LPM_MUX_component|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~5_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst86|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst81|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst9|inst86|dffs\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst81|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X32_Y19_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~7_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst93|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst92|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst93|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst92|dffs\(1),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X33_Y18_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~8_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst91|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst87|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst91|dffs\(1),
	datad => \inst9|inst87|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X33_Y19_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~9_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~8_combout\) # 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~8_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X35_Y20_N20
\inst9|inst78|LPM_MUX_component|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~15_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst74|dffs\(1)) # ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & \inst9|inst73|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst74|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst73|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X34_Y20_N22
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\ = (!\inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~6_combout\) # (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~6_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~5_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\);

-- Location: LCCOMB_X39_Y19_N12
\inst9|inst78|LPM_MUX_component|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~21_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst8|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst7|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst9|inst8|dffs\(1),
	datac => \inst9|inst7|dffs\(1),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCCOMB_X39_Y19_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~22_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst9|dffs\(1)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst28|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst28|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst9|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X39_Y19_N4
\inst9|inst78|LPM_MUX_component|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~23_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~22_combout\) # 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~22_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~21_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: LCCOMB_X39_Y20_N4
\inst9|inst78|LPM_MUX_component|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~24_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst36|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst11|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst36|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst11|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X39_Y20_N18
\inst9|inst78|LPM_MUX_component|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~25_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst_0|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst32|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst_0|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst32|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCCOMB_X39_Y19_N26
\inst9|inst78|LPM_MUX_component|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~26_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~23_combout\) # ((\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~25_combout\) # (\inst9|inst78|LPM_MUX_component|auto_generated|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~25_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~23_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~24_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X38_Y19_N6
\inst9|inst78|LPM_MUX_component|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & !\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\);

-- Location: LCCOMB_X34_Y21_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~38_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst62|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst61|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst62|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst61|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~38_combout\);

-- Location: LCCOMB_X34_Y19_N8
\inst9|inst78|LPM_MUX_component|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~45_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst85|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst80|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst85|dffs\(0),
	datad => \inst9|inst80|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~45_combout\);

-- Location: LCCOMB_X34_Y19_N6
\inst9|inst78|LPM_MUX_component|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~46_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst86|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst81|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst86|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datad => \inst9|inst81|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~46_combout\);

-- Location: LCCOMB_X34_Y19_N20
\inst9|inst78|LPM_MUX_component|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~47_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~45_combout\) # 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~45_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~46_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~47_combout\);

-- Location: LCCOMB_X34_Y20_N12
\inst9|inst78|LPM_MUX_component|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~54_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst67|dffs\(0))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & 
-- ((\inst9|inst63|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst67|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst63|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~54_combout\);

-- Location: LCCOMB_X34_Y20_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~55_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~54_combout\ & (((\inst9|inst69|dffs\(0))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~54_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst68|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~54_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst68|dffs\(0),
	datad => \inst9|inst69|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~55_combout\);

-- Location: LCCOMB_X32_Y19_N28
\inst9|inst78|LPM_MUX_component|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst99|dffs\(0))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & 
-- ((\inst9|inst97|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst99|dffs\(0),
	datab => \inst9|inst97|dffs\(0),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\);

-- Location: LCCOMB_X32_Y19_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~59_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\ & (\inst9|inst101|dffs\(0))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\ & ((\inst9|inst100|dffs\(0)))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst101|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst100|dffs\(0),
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~58_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~59_combout\);

-- Location: LCCOMB_X37_Y19_N20
\inst9|inst78|LPM_MUX_component|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~61_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst3|dffs\(0))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & 
-- ((\inst9|inst10|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst10|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~61_combout\);

-- Location: LCCOMB_X37_Y19_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~62_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~61_combout\ & (((\inst9|inst20|dffs\(0)) # (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~61_combout\ & (\inst9|inst2|dffs\(0) & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~61_combout\,
	datab => \inst9|inst2|dffs\(0),
	datac => \inst9|inst20|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~62_combout\);

-- Location: LCCOMB_X39_Y19_N24
\inst9|inst78|LPM_MUX_component|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~63_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst8|dffs\(0)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst7|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst9|inst7|dffs\(0),
	datac => \inst9|inst8|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~63_combout\);

-- Location: LCCOMB_X39_Y20_N16
\inst9|inst78|LPM_MUX_component|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~66_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst36|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst11|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst36|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst11|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~66_combout\);

-- Location: LCCOMB_X38_Y19_N24
\inst9|inst78|LPM_MUX_component|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~70_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst5|dffs\(0)) # ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((\inst9|inst4|dffs\(0) & !\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst4|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~70_combout\);

-- Location: LCCOMB_X35_Y21_N16
\inst9|inst35|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst35|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst55|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst50|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst50|dffs\(1),
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst55|dffs\(1),
	combout => \inst9|inst35|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X35_Y21_N14
\inst9|inst34|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst34|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst50|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst45|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst50|dffs\(1),
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst45|dffs\(1),
	combout => \inst9|inst34|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X33_Y21_N24
\inst9|inst118|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst118|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst56|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst51|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst51|dffs\(1),
	datac => \inst9|inst56|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst118|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X36_Y21_N4
\inst9|inst117|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst117|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst51|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst49|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst49|dffs\(1),
	datab => \inst9|inst51|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst117|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X33_Y21_N14
\inst9|inst119|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst119|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst61|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst56|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst61|dffs\(1),
	datac => \inst9|inst56|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst119|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\inst9|inst37|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst37|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst57|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst55|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst55|dffs\(1),
	datac => \inst9|inst57|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst37|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X37_Y21_N16
\inst9|inst33|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst33|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst45|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst44|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst45|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst44|dffs\(1),
	combout => \inst9|inst33|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X38_Y21_N4
\inst9|inst115|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst115|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst16|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst15|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst15|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst16|dffs\(1),
	combout => \inst9|inst115|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X37_Y21_N14
\inst9|inst31|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst31|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst44|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst14|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst14|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst44|dffs\(1),
	combout => \inst9|inst31|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X36_Y21_N14
\inst9|inst116|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst116|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst49|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst16|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst49|dffs\(1),
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst16|dffs\(1),
	combout => \inst9|inst116|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X37_Y20_N12
\inst9|inst30|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst30|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst14|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst13|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst13|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst14|dffs\(1),
	combout => \inst9|inst30|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X38_Y20_N24
\inst9|inst113|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst113|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst40|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst12|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst12|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst40|dffs\(1),
	combout => \inst9|inst113|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X37_Y20_N14
\inst9|inst29|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst29|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst13|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst36|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst36|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst13|dffs\(1),
	combout => \inst9|inst29|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X38_Y21_N22
\inst9|inst114|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst114|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst15|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst40|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst40|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst15|dffs\(1),
	combout => \inst9|inst114|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X32_Y19_N12
\inst9|inst128|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst128|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst97|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst92|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst97|dffs\(1),
	datac => \inst9|inst92|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst128|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X33_Y19_N16
\inst9|inst52|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst52|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst93|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst91|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst93|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst91|dffs\(1),
	combout => \inst9|inst52|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X33_Y18_N14
\inst9|inst127|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst127|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst92|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst87|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst87|dffs\(1),
	datac => \inst9|inst92|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst127|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X39_Y20_N12
\inst9|inst110|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst110|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst32|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst8|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst8|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst32|dffs\(1),
	combout => \inst9|inst110|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X38_Y20_N14
\inst9|inst112|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst112|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst12|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst11|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst12|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst11|dffs\(1),
	combout => \inst9|inst112|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X40_Y20_N8
\inst9|inst27|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst27|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst36|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst_0|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst36|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst_0|dffs\(1),
	combout => \inst9|inst27|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X39_Y20_N10
\inst9|inst111|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst111|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst11|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst32|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst11|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst32|dffs\(1),
	combout => \inst9|inst111|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X40_Y20_N30
\inst9|inst26|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst26|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst_0|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst9|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst_0|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst9|dffs\(1),
	combout => \inst9|inst26|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X35_Y19_N8
\inst9|inst106|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst106|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst4|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst3|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst3|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst4|dffs\(1),
	combout => \inst9|inst106|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X38_Y19_N10
\inst9|inst21|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst21|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst5|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst20|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst20|dffs\(1),
	datac => \inst9|inst5|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst21|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCCOMB_X34_Y19_N16
\inst9|inst47|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst47|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst86|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst81|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst81|dffs\(0),
	datab => \inst9|inst90~regout\,
	datad => \inst9|inst86|dffs\(0),
	combout => \inst9|inst47|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X33_Y18_N4
\inst9|inst126|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst126|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst87|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst85|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst85|dffs\(0),
	datac => \inst9|inst87|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst126|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X34_Y18_N8
\inst9|inst125|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst125|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst85|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst80|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst80|dffs\(0),
	datac => \inst9|inst85|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst125|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X31_Y19_N0
\inst9|inst54|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst54|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst101|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst99|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst101|dffs\(0),
	datac => \inst9|inst99|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst54|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X32_Y19_N14
\inst9|inst129|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst129|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst100|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst97|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst97|dffs\(0),
	datac => \inst9|inst100|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst129|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X31_Y19_N30
\inst9|inst58|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst58|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst100|dffs\(0) & !\inst9|inst90~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst100|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst58|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X31_Y21_N30
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17),
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X36_Y13_N4
\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6)) # ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10)) # 
-- ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	combout => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X30_Y20_N30
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\adr_dips[1]~I\ : cycloneii_io
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
	padio => ww_adr_dips(1),
	combout => \adr_dips~combout\(1));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\adr_dips[5]~I\ : cycloneii_io
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
	padio => ww_adr_dips(5),
	combout => \adr_dips~combout\(5));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode_dips[0]~I\ : cycloneii_io
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
	padio => ww_mode_dips(0),
	combout => \mode_dips~combout\(0));

-- Location: LCCOMB_X37_Y18_N16
\inst16|dffs[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|dffs[30]~feeder_combout\ = \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~58_combout\,
	combout => \inst16|dffs[30]~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N24
\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\ = \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y18_N4
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (((\inst9|inst90~regout\) # (VCC)))
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst9|inst90~regout\ $ (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_btn~I\ : cycloneii_io
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
	padio => ww_reset_btn,
	combout => \reset_btn~combout\);

-- Location: LCCOMB_X32_Y21_N12
\inst_4|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst~0_combout\ = !\reset_btn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_btn~combout\,
	combout => \inst_4|inst~0_combout\);

-- Location: LCCOMB_X31_Y22_N8
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X31_Y21_N16
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCCOMB_X31_Y21_N18
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X37_Y12_N20
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X31_Y22_N0
\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6)) # ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9)) # 
-- ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	combout => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X31_Y22_N16
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X31_Y22_N17
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X31_Y22_N12
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X31_Y22_N13
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X31_Y22_N2
\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3)) # ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5)) # 
-- ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X31_Y22_N4
\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1)) # ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0)) # 
-- ((\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\) # (\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datad => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	combout => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X32_Y21_N20
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X32_Y21_N14
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X32_Y22_N16
\inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst_4|inst~regout\) # ((\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # 
-- ((\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst~regout\,
	datab => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	datac => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X31_Y21_N19
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21));

-- Location: LCCOMB_X31_Y21_N22
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCFF_X31_Y21_N23
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23));

-- Location: LCCOMB_X31_Y21_N24
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\ = !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\);

-- Location: LCCOMB_X31_Y21_N6
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X31_Y21_N7
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X31_Y21_N28
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & 
-- (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X31_Y22_N10
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X31_Y22_N11
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X31_Y22_N6
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X31_Y22_N20
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X31_Y22_N21
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X32_Y21_N18
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X32_Y21_N28
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- (\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ & \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\,
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X32_Y21_N30
\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & 
-- (\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ & \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X31_Y21_N26
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\ = (\inst_4|inst~regout\) # ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\) # 
-- (\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst~regout\,
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\,
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\);

-- Location: LCFF_X31_Y22_N9
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \inst_4|inst~regout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X31_Y22_N14
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X31_Y22_N15
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X31_Y22_N18
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X31_Y22_N19
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X31_Y22_N22
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X31_Y22_N23
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X31_Y22_N24
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X31_Y22_N25
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X31_Y22_N26
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X31_Y22_N27
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X31_Y22_N28
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X31_Y22_N29
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X31_Y22_N30
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X31_Y22_N31
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X31_Y21_N0
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X31_Y21_N1
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X31_Y21_N2
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X31_Y21_N3
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X31_Y21_N4
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X31_Y21_N5
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X31_Y21_N8
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X31_Y21_N9
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X31_Y21_N14
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCFF_X31_Y21_N15
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19));

-- Location: LCFF_X31_Y21_N17
\inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	sdata => \~GND~combout\,
	sload => \inst_4|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst_4|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20));

-- Location: LCCOMB_X32_Y21_N22
\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19)) # ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20)) # 
-- ((\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (\inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datab => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst_4|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	combout => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X32_Y21_N24
\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # ((\inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # 
-- (!\inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datac => \inst_4|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datad => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	combout => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: LCFF_X32_Y21_N13
\inst_4|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst_4|inst~0_combout\,
	aclr => \inst_4|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_4|inst~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\button~I\ : cycloneii_io
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
	padio => ww_button,
	combout => \button~combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst6|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = !\button~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button~combout\,
	combout => \inst6|inst~0_combout\);

-- Location: LCCOMB_X30_Y21_N10
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X30_Y21_N12
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X30_Y21_N14
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X29_Y20_N2
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X30_Y21_N11
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X30_Y21_N16
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X30_Y21_N17
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X30_Y21_N18
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X30_Y21_N19
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X30_Y21_N4
\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2)) # ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3)) # 
-- ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	combout => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X29_Y20_N22
\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10)) # ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12)) # 
-- ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0)) # ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- ((\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\) # (\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	datad => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	combout => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X29_Y20_N8
\inst6|inst6|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # ((\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # 
-- ((\inst6|inst~regout\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datab => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datad => \inst6|inst~regout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X30_Y20_N21
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22));

-- Location: LCCOMB_X30_Y20_N10
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCFF_X30_Y20_N11
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCCOMB_X30_Y20_N28
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17),
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X30_Y20_N6
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X30_Y20_N7
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X29_Y20_N0
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & 
-- (\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ & \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: LCFF_X30_Y21_N13
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X30_Y21_N6
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & 
-- (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X30_Y21_N28
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X29_Y20_N20
\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[10]~feeder_combout\ = \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[10]~feeder_combout\);

-- Location: LCFF_X29_Y20_N21
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[10]~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X29_Y20_N6
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & 
-- (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- (\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ & \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\,
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X30_Y20_N24
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\ = !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\ = (\inst6|inst~regout\) # ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\) # 
-- ((\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ & \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~regout\,
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\,
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\);

-- Location: LCFF_X30_Y21_N15
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X30_Y21_N20
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X29_Y20_N18
\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[6]~feeder_combout\ = \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[6]~feeder_combout\);

-- Location: LCFF_X29_Y20_N19
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[6]~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X30_Y21_N22
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X30_Y21_N23
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X30_Y21_N26
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X30_Y21_N27
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X30_Y21_N30
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X29_Y20_N30
\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\ = \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\);

-- Location: LCFF_X29_Y20_N31
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X30_Y20_N0
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X30_Y20_N1
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X30_Y20_N2
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X30_Y20_N3
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X30_Y20_N4
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X30_Y20_N5
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X30_Y20_N8
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X30_Y20_N9
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X30_Y20_N14
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCFF_X30_Y20_N15
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19));

-- Location: LCCOMB_X30_Y20_N18
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & (!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & ((\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCFF_X30_Y20_N19
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21));

-- Location: LCFF_X30_Y20_N23
\inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	sdata => \~GND~combout\,
	sload => \inst6|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst6|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23));

-- Location: LCCOMB_X30_Y20_N26
\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20)) # ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23)) # 
-- ((\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19)) # (\inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datab => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => \inst6|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N26
\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # ((\inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # 
-- (!\inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datac => \inst6|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datad => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	combout => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: LCFF_X29_Y20_N29
\inst6|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|inst~0_combout\,
	aclr => \inst6|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst~regout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\request_deal_btn~I\ : cycloneii_io
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
	padio => ww_request_deal_btn,
	combout => \request_deal_btn~combout\);

-- Location: LCCOMB_X37_Y12_N12
\inst18|inst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst~0_combout\ = !\request_deal_btn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \request_deal_btn~combout\,
	combout => \inst18|inst~0_combout\);

-- Location: LCCOMB_X37_Y12_N10
\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\ = \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\);

-- Location: LCCOMB_X36_Y13_N8
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X36_Y13_N10
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X36_Y13_N12
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X36_Y13_N14
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X36_Y13_N16
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X36_Y13_N18
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X36_Y13_N20
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X36_Y13_N22
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X37_Y12_N26
\inst18|inst6|LPM_COUNTER_component|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0)) # (\inst18|inst~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0),
	datad => \inst18|inst~regout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCFF_X36_Y13_N23
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X37_Y12_N4
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X36_Y12_N20
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCFF_X36_Y12_N21
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22));

-- Location: LCCOMB_X36_Y12_N28
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18),
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X37_Y12_N14
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7) & 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X36_Y12_N6
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X36_Y12_N7
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X36_Y12_N30
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X36_Y13_N26
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X36_Y13_N27
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X36_Y13_N28
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X36_Y13_N29
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCFF_X36_Y13_N21
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X36_Y13_N0
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6) & \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(9),
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X37_Y12_N16
\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\ = \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\);

-- Location: LCFF_X37_Y12_N17
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[0]~feeder_combout\,
	sdata => \inst18|inst~regout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X36_Y13_N15
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X36_Y13_N13
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X36_Y13_N19
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X35_Y13_N24
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2) & \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X36_Y13_N6
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ & 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0) & \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X37_Y12_N22
\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ & 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~6_combout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X36_Y12_N22
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X36_Y12_N24
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\ = !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\);

-- Location: LCCOMB_X37_Y12_N8
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\ = (\inst18|inst~regout\) # ((\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\) # 
-- (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst~regout\,
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~7_combout\,
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~0_combout\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\);

-- Location: LCFF_X37_Y12_N11
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q[11]~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X36_Y12_N0
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X36_Y12_N1
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X36_Y12_N2
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X36_Y12_N3
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X36_Y12_N4
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X36_Y12_N5
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X36_Y12_N8
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X36_Y12_N9
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X36_Y12_N12
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18) & !\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCFF_X36_Y12_N13
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(18));

-- Location: LCCOMB_X36_Y12_N14
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCFF_X36_Y12_N15
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19));

-- Location: LCCOMB_X36_Y12_N18
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & (!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21) & ((\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCFF_X36_Y12_N19
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(21));

-- Location: LCFF_X36_Y12_N23
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23));

-- Location: LCCOMB_X36_Y12_N26
\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20)) # ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23)) # 
-- ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19)) # (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCFF_X36_Y13_N11
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCFF_X36_Y13_N17
\inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst18|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[23]~0_combout\,
	ena => \inst18|inst6|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X36_Y13_N2
\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2)) # ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5)) # 
-- ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X37_Y12_N18
\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ = (\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0)) # ((\inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- (\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	combout => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X37_Y12_N24
\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\) # ((\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # 
-- ((\inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # (!\inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datab => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datac => \inst18|inst6|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datad => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	combout => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: LCFF_X37_Y12_N13
\inst18|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst18|inst~0_combout\,
	aclr => \inst18|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|inst~regout\);

-- Location: LCCOMB_X37_Y18_N22
\inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (!\inst2|state.ENABLE_STACK~regout\ & ((\inst2|state.WAIT_LOW~regout\) # (!\inst18|inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ENABLE_STACK~regout\,
	datab => \inst18|inst~regout\,
	datac => \inst2|state.WAIT_LOW~regout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: LCFF_X37_Y18_N23
\inst2|state.WAIT_LOW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector0~0_combout\,
	aclr => \inst_4|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.WAIT_LOW~regout\);

-- Location: LCCOMB_X37_Y18_N18
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (!\inst18|inst~regout\ & ((\inst2|state.WAIT_HIGH~regout\) # (!\inst2|state.WAIT_LOW~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|inst~regout\,
	datac => \inst2|state.WAIT_HIGH~regout\,
	datad => \inst2|state.WAIT_LOW~regout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: LCFF_X37_Y18_N19
\inst2|state.WAIT_HIGH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector1~0_combout\,
	aclr => \inst_4|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.WAIT_HIGH~regout\);

-- Location: LCCOMB_X37_Y18_N24
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst18|inst~regout\ & \inst2|state.WAIT_HIGH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst~regout\,
	datad => \inst2|state.WAIT_HIGH~regout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: LCFF_X37_Y18_N25
\inst2|state.ENABLE_STACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Selector2~0_combout\,
	aclr => \inst_4|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.ENABLE_STACK~regout\);

-- Location: LCCOMB_X37_Y18_N20
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\ = (\inst6|inst~regout\ & (\inst2|state.ENABLE_STACK~regout\ & \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst~regout\,
	datac => \inst2|state.ENABLE_STACK~regout\,
	datad => \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0),
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\);

-- Location: LCCOMB_X37_Y18_N30
\inst9|inst90~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst90~feeder_combout\ = \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	combout => \inst9|inst90~feeder_combout\);

-- Location: LCFF_X37_Y18_N31
\inst9|inst90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst90~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst90~regout\);

-- Location: LCFF_X38_Y18_N25
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst90~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X37_Y18_N6
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (((VCC) # 
-- (!\inst9|inst90~regout\))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & (((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (GND))))
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst9|inst90~regout\ $ (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X38_Y18_N11
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst90~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X37_Y18_N8
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & VCC)))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (((\inst9|inst90~regout\) # (VCC)))))
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst9|inst90~regout\ $ (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X38_Y18_N28
\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q[2]~feeder_combout\ = \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q[2]~feeder_combout\);

-- Location: LCFF_X38_Y18_N29
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q[2]~feeder_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst90~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X37_Y18_N10
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (((VCC) # 
-- (!\inst9|inst90~regout\))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3)) # ((GND))))
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (!\inst9|inst90~regout\)) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst9|inst90~regout\,
	datad => VCC,
	cin => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X38_Y18_N19
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst90~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X37_Y18_N12
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((VCC)))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (((\inst9|inst90~regout\) # (VCC)))))
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (\inst9|inst90~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|inst90~regout\,
	datad => VCC,
	cin => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X38_Y18_N27
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst90~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X38_Y18_N26
\inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X37_Y18_N2
\inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)) # ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)) # 
-- (!\inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst9|inst1|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: LCCOMB_X37_Y18_N14
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ $ (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	cin => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\);

-- Location: LCFF_X38_Y18_N9
\inst9|inst83|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst83|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst90~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X1_Y23_N24
\inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3)) # ((!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4)) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5)))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0) = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)) # ((\inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\) # 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst9|inst17|LPM_COMPARE_component|auto_generated|aneb_result_wire\(0));

-- Location: LCCOMB_X36_Y19_N0
\inst16|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|dffs[0]~feeder_combout\ = \inst16|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|dffs\(0),
	combout => \inst16|dffs[0]~feeder_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode_dips[1]~I\ : cycloneii_io
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
	padio => ww_mode_dips(1),
	combout => \mode_dips~combout\(1));

-- Location: LCCOMB_X37_Y18_N28
\inst17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (\mode_dips~combout\(0) & (\inst6|inst~regout\ & (!\inst2|state.ENABLE_STACK~regout\ & \mode_dips~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_dips~combout\(0),
	datab => \inst6|inst~regout\,
	datac => \inst2|state.ENABLE_STACK~regout\,
	datad => \mode_dips~combout\(1),
	combout => \inst17~0_combout\);

-- Location: LCFF_X36_Y19_N1
\inst16|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst16|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(0));

-- Location: LCCOMB_X36_Y19_N2
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst16|dffs\(1) & (\inst16|dffs\(0) $ (VCC))) # (!\inst16|dffs\(1) & (\inst16|dffs\(0) & VCC))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\inst16|dffs\(1) & \inst16|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(1),
	datab => \inst16|dffs\(0),
	datad => VCC,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCFF_X36_Y19_N3
\inst16|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	sdata => \inst17~0_combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(1));

-- Location: LCCOMB_X36_Y19_N4
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst16|dffs\(2) & ((\inst16|dffs\(1) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)) # (!\inst16|dffs\(1) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\)))) # 
-- (!\inst16|dffs\(2) & ((\inst16|dffs\(1) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst16|dffs\(1) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst16|dffs\(2) & (!\inst16|dffs\(1) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst16|dffs\(2) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\) # 
-- (!\inst16|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(2),
	datab => \inst16|dffs\(1),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCFF_X36_Y19_N5
\inst16|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(2));

-- Location: LCCOMB_X36_Y19_N6
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst16|dffs\(3) $ (\inst16|dffs\(2) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst16|dffs\(3) & ((\inst16|dffs\(2)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\))) # (!\inst16|dffs\(3) & (\inst16|dffs\(2) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(3),
	datab => \inst16|dffs\(2),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X36_Y19_N8
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst16|dffs\(3) & ((\inst16|dffs\(4) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\inst16|dffs\(4) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\)))) # 
-- (!\inst16|dffs\(3) & ((\inst16|dffs\(4) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst16|dffs\(4) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst16|dffs\(3) & (!\inst16|dffs\(4) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst16|dffs\(3) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\) # 
-- (!\inst16|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(3),
	datab => \inst16|dffs\(4),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCFF_X36_Y19_N9
\inst16|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(4));

-- Location: LCCOMB_X36_Y19_N10
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst16|dffs\(5) $ (\inst16|dffs\(4) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst16|dffs\(5) & ((\inst16|dffs\(4)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # (!\inst16|dffs\(5) & (\inst16|dffs\(4) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(5),
	datab => \inst16|dffs\(4),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCFF_X36_Y19_N11
\inst16|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	sdata => \inst17~0_combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(5));

-- Location: LCCOMB_X36_Y19_N14
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst16|dffs\(6) $ (\inst16|dffs\(7) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst16|dffs\(6) & ((\inst16|dffs\(7)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # (!\inst16|dffs\(6) & (\inst16|dffs\(7) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(6),
	datab => \inst16|dffs\(7),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCFF_X36_Y19_N15
\inst16|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(7));

-- Location: LCCOMB_X36_Y19_N16
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst16|dffs\(8) & ((\inst16|dffs\(7) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)) # (!\inst16|dffs\(7) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\)))) # 
-- (!\inst16|dffs\(8) & ((\inst16|dffs\(7) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst16|dffs\(7) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst16|dffs\(8) & (!\inst16|dffs\(7) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst16|dffs\(8) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\) # 
-- (!\inst16|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(8),
	datab => \inst16|dffs\(7),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCFF_X36_Y19_N17
\inst16|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(8));

-- Location: LCCOMB_X36_Y19_N18
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst16|dffs\(8) $ (\inst16|dffs\(9) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst16|dffs\(8) & ((\inst16|dffs\(9)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # (!\inst16|dffs\(8) & (\inst16|dffs\(9) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(8),
	datab => \inst16|dffs\(9),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCFF_X36_Y19_N19
\inst16|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(9));

-- Location: LCCOMB_X36_Y19_N22
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst16|dffs\(10) $ (\inst16|dffs\(11) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst16|dffs\(10) & ((\inst16|dffs\(11)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # (!\inst16|dffs\(10) & (\inst16|dffs\(11) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(10),
	datab => \inst16|dffs\(11),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCFF_X36_Y19_N23
\inst16|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(11));

-- Location: LCCOMB_X36_Y19_N26
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst16|dffs\(12) $ (\inst16|dffs\(13) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst16|dffs\(12) & ((\inst16|dffs\(13)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\))) # (!\inst16|dffs\(12) & (\inst16|dffs\(13) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(12),
	datab => \inst16|dffs\(13),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCFF_X36_Y19_N27
\inst16|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(13));

-- Location: LCCOMB_X36_Y19_N28
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst16|dffs\(13) & ((\inst16|dffs\(14) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)) # (!\inst16|dffs\(14) & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\)))) # (!\inst16|dffs\(13) & ((\inst16|dffs\(14) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst16|dffs\(14) & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\) # 
-- (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst16|dffs\(13) & (!\inst16|dffs\(14) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst16|dffs\(13) & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\) # 
-- (!\inst16|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(13),
	datab => \inst16|dffs\(14),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCFF_X36_Y19_N29
\inst16|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(14));

-- Location: LCCOMB_X36_Y19_N30
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst16|dffs\(15) $ (\inst16|dffs\(14) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst16|dffs\(15) & ((\inst16|dffs\(14)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # (!\inst16|dffs\(15) & (\inst16|dffs\(14) & 
-- !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(15),
	datab => \inst16|dffs\(14),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X36_Y18_N0
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((\inst16|dffs\(16) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC)) # (!\inst16|dffs\(16) & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\)))) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((\inst16|dffs\(16) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst16|dffs\(16) & 
-- ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (!\inst16|dffs\(16) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (!\inst16|dffs\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst16|dffs\(16),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCFF_X36_Y18_N1
\inst16|dffs[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(16));

-- Location: LCFF_X36_Y19_N31
\inst16|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(15));

-- Location: LCCOMB_X35_Y18_N4
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst16|dffs\(1) & ((\inst16|dffs\(16) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)) # (!\inst16|dffs\(16) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\)))) # 
-- (!\inst16|dffs\(1) & ((\inst16|dffs\(16) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst16|dffs\(16) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst16|dffs\(1) & (!\inst16|dffs\(16) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst16|dffs\(1) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\) # 
-- (!\inst16|dffs\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(1),
	datab => \inst16|dffs\(16),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X36_Y18_N2
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst16|dffs\(17) $ (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst16|dffs\(17) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\))) # (!\inst16|dffs\(17) & 
-- (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(17),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X36_Y18_N4
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst16|dffs\(18) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\ & VCC)) # (!\inst16|dffs\(18) & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\)))) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst16|dffs\(18) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\)) # (!\inst16|dffs\(18) & 
-- ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst16|dffs\(18) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\) # (!\inst16|dffs\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datab => \inst16|dffs\(18),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\);

-- Location: LCFF_X36_Y18_N5
\inst16|dffs[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(18));

-- Location: LCCOMB_X36_Y18_N6
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\ = ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ $ (\inst16|dffs\(19) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & ((\inst16|dffs\(19)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\))) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst16|dffs\(19) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datab => \inst16|dffs\(19),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~35\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\);

-- Location: LCFF_X36_Y18_N7
\inst16|dffs[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~36_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(19));

-- Location: LCCOMB_X36_Y18_N8
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\ = (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((\inst16|dffs\(20) & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\ & VCC)) # (!\inst16|dffs\(20) & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\)))) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((\inst16|dffs\(20) & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\)) # (!\inst16|dffs\(20) & 
-- ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst16|dffs\(20) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\) # (!\inst16|dffs\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datab => \inst16|dffs\(20),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~37\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\);

-- Location: LCFF_X36_Y18_N9
\inst16|dffs[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~38_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(20));

-- Location: LCCOMB_X36_Y18_N10
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\ = ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ $ (\inst16|dffs\(21) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((\inst16|dffs\(21)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\))) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst16|dffs\(21) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datab => \inst16|dffs\(21),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~39\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\);

-- Location: LCFF_X36_Y18_N11
\inst16|dffs[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~40_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(21));

-- Location: LCFF_X36_Y19_N7
\inst16|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	sdata => \inst17~0_combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(3));

-- Location: LCFF_X36_Y18_N3
\inst16|dffs[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(17));

-- Location: LCCOMB_X35_Y18_N14
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst16|dffs\(6) $ (\inst16|dffs\(21) $ (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst16|dffs\(6) & ((\inst16|dffs\(21)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # (!\inst16|dffs\(6) & (\inst16|dffs\(21) & 
-- !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(6),
	datab => \inst16|dffs\(21),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X36_Y18_N12
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\ = (\inst16|dffs\(22) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\ & VCC)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\)))) # (!\inst16|dffs\(22) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\ = CARRY((\inst16|dffs\(22) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\)) # (!\inst16|dffs\(22) & 
-- ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(22),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~41\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~43\);

-- Location: LCFF_X36_Y18_N13
\inst16|dffs[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~42_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(22));

-- Location: LCCOMB_X35_Y18_N16
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst16|dffs\(7) & ((\inst16|dffs\(22) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)) # (!\inst16|dffs\(22) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\)))) 
-- # (!\inst16|dffs\(7) & ((\inst16|dffs\(22) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst16|dffs\(22) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst16|dffs\(7) & (!\inst16|dffs\(22) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst16|dffs\(7) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\) # 
-- (!\inst16|dffs\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(7),
	datab => \inst16|dffs\(22),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X35_Y18_N18
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst16|dffs\(23) $ (\inst16|dffs\(8) $ (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst16|dffs\(23) & ((\inst16|dffs\(8)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # (!\inst16|dffs\(23) & (\inst16|dffs\(8) & 
-- !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(23),
	datab => \inst16|dffs\(8),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X36_Y18_N18
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\ = ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ $ (\inst16|dffs\(25) $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\ = CARRY((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((\inst16|dffs\(25)) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\))) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst16|dffs\(25) & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst16|dffs\(25),
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~47\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\);

-- Location: LCFF_X36_Y18_N19
\inst16|dffs[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~48_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(25));

-- Location: LCCOMB_X35_Y18_N22
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst16|dffs\(10) $ (\inst16|dffs\(25) $ (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst16|dffs\(10) & ((\inst16|dffs\(25)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # (!\inst16|dffs\(10) & (\inst16|dffs\(25) & 
-- !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(10),
	datab => \inst16|dffs\(25),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X36_Y18_N20
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\ = (\inst16|dffs\(26) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\ & VCC)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\)))) # (!\inst16|dffs\(26) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\ = CARRY((\inst16|dffs\(26) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\)) # (!\inst16|dffs\(26) & 
-- ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(26),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~49\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\);

-- Location: LCFF_X36_Y18_N21
\inst16|dffs[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~50_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(26));

-- Location: LCCOMB_X35_Y18_N24
\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst16|dffs\(11) & ((\inst16|dffs\(26) & (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # (!\inst16|dffs\(26) & 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\)))) # (!\inst16|dffs\(11) & ((\inst16|dffs\(26) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst16|dffs\(26) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\) # 
-- (GND)))))
-- \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst16|dffs\(11) & (!\inst16|dffs\(26) & !\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst16|dffs\(11) & ((!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\) # 
-- (!\inst16|dffs\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(11),
	datab => \inst16|dffs\(26),
	datad => VCC,
	cin => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X36_Y18_N22
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\ = ((\inst16|dffs\(27) $ (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ $ (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\)))) # (GND)
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\ = CARRY((\inst16|dffs\(27) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\) # (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\))) # (!\inst16|dffs\(27) & 
-- (\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(27),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~51\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\);

-- Location: LCFF_X36_Y18_N23
\inst16|dffs[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~52_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(27));

-- Location: LCCOMB_X36_Y18_N24
\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\ = (\inst16|dffs\(28) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\ & VCC)) # 
-- (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\)))) # (!\inst16|dffs\(28) & ((\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & 
-- (!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\)) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\) # (GND)))))
-- \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\ = CARRY((\inst16|dffs\(28) & (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & !\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\)) # (!\inst16|dffs\(28) & 
-- ((!\inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\) # (!\inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(28),
	datab => \inst|u1|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~53\,
	combout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	cout => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~55\);

-- Location: LCFF_X36_Y18_N27
\inst16|dffs[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~56_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(29));

-- Location: LCCOMB_X38_Y18_N0
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst16|dffs\(29) $ (VCC))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) 
-- & ((\inst16|dffs\(29)) # (GND)))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\inst16|dffs\(29)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst16|dffs\(29),
	datad => VCC,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X38_Y18_N2
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) 
-- # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X38_Y18_N24
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ = (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\);

-- Location: LCCOMB_X38_Y18_N4
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & 
-- VCC)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND)))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X38_Y18_N6
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X38_Y18_N12
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[6]~0_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X38_Y18_N30
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst16|dffs\(29))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ & (\inst16|dffs\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(29),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\);

-- Location: LCFF_X36_Y18_N25
\inst16|dffs[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|u2|LPM_ADD_SUB_component|auto_generated|op_1~54_combout\,
	sdata => \~GND~combout\,
	sload => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|dffs\(28));

-- Location: LCCOMB_X38_Y18_N16
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X38_Y18_N18
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X38_Y18_N8
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[14]~0_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[14]~3_combout\);

-- Location: LCCOMB_X38_Y18_N22
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X39_Y18_N22
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & (((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\);

-- Location: LCCOMB_X39_Y18_N20
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ = (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\);

-- Location: LCCOMB_X39_Y18_N0
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[12]~2_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\);

-- Location: LCCOMB_X39_Y18_N26
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst16|dffs\(28)))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\ & (((\inst16|dffs\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \inst16|dffs\(28),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[21]~1_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\);

-- Location: LCCOMB_X39_Y18_N6
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\inst16|dffs\(27) & ((GND) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))) # (!\inst16|dffs\(27) & 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (GND)))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\inst16|dffs\(27)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(27),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X39_Y18_N8
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X39_Y18_N10
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\ $ 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X39_Y18_N12
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X39_Y18_N14
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\ $ (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) $ 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\ & 
-- ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4)))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\ & 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X39_Y18_N16
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X39_Y18_N18
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\)) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[20]~4_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\adr_dips[4]~I\ : cycloneii_io
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
	padio => ww_adr_dips(4),
	combout => \adr_dips~combout\(4));

-- Location: LCCOMB_X39_Y18_N28
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\)) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[19]~5_combout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\);

-- Location: LCCOMB_X39_Y18_N4
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst16|dffs\(27))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst16|dffs\(27))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(27),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\);

-- Location: LCCOMB_X40_Y18_N12
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\inst16|dffs\(26) & ((GND) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))) # (!\inst16|dffs\(26) & 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (GND)))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\inst16|dffs\(26)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(26),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X40_Y18_N14
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ 
-- & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X40_Y18_N16
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\ $ (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) $ 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\ & 
-- ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2)))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\ & 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X40_Y18_N18
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X40_Y18_N20
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\ $ 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\ & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\,
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X34_Y18_N14
\inst3|LPM_MUX_component|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ = (\inst2|state.ENABLE_STACK~regout\ & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\)))) # (!\inst2|state.ENABLE_STACK~regout\ & (((\adr_dips~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \adr_dips~combout\(4),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X34_Y18_N28
\inst3|LPM_MUX_component|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[4]~0_combout\) # ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\ & \inst2|state.ENABLE_STACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[4]~0_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\adr_dips[2]~I\ : cycloneii_io
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
	padio => ww_adr_dips(2),
	combout => \adr_dips~combout\(2));

-- Location: LCCOMB_X34_Y18_N26
\inst3|LPM_MUX_component|auto_generated|result_node[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[2]~8_combout\ = (\inst2|state.ENABLE_STACK~regout\ & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))) # (!\inst2|state.ENABLE_STACK~regout\ & (((\adr_dips~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \adr_dips~combout\(2),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[2]~8_combout\);

-- Location: LCCOMB_X39_Y18_N2
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\)))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~6_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\);

-- Location: LCCOMB_X34_Y18_N16
\inst3|LPM_MUX_component|auto_generated|result_node[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~8_combout\) # ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\ & \inst2|state.ENABLE_STACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~8_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\adr_dips[3]~I\ : cycloneii_io
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
	padio => ww_adr_dips(3),
	combout => \adr_dips~combout\(3));

-- Location: LCCOMB_X34_Y18_N2
\inst3|LPM_MUX_component|auto_generated|result_node[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[3]~6_combout\ = (\inst2|state.ENABLE_STACK~regout\ & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\))) # (!\inst2|state.ENABLE_STACK~regout\ & (((\adr_dips~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datac => \adr_dips~combout\(3),
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[3]~6_combout\);

-- Location: LCCOMB_X40_Y18_N22
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) 
-- # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) 
-- # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- !\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X40_Y18_N24
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X34_Y18_N4
\inst3|LPM_MUX_component|auto_generated|result_node[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[3]~6_combout\) # ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & \inst2|state.ENABLE_STACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[3]~6_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\);

-- Location: LCCOMB_X31_Y20_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\ = ((\inst9|inst78|LPM_MUX_component|auto_generated|_~59_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- !\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~59_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\);

-- Location: LCCOMB_X36_Y21_N12
\inst9|inst117|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst117|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst51|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst49|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst49|dffs\(0),
	datab => \inst9|inst51|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst117|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y18_N8
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst16|dffs\(26))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\)))) # 
-- (!\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|dffs\(26),
	datab => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y18_N26
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\))) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))) # (!\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~11_combout\,
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X40_Y18_N4
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))) # (!\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~10_combout\,
	datab => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X40_Y18_N30
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))) # (!\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~9_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X40_Y18_N0
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[4]~5_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\)))) # (!\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~8_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[4]~5_combout\);

-- Location: LCCOMB_X40_Y18_N2
\inst9|inst64|LPM_MUX_component|auto_generated|result_node[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst64|LPM_MUX_component|auto_generated|result_node[5]~6_combout\ = ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\)) # (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\)))) # (!\inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\,
	datab => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[6]~0_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	combout => \inst9|inst64|LPM_MUX_component|auto_generated|result_node[5]~6_combout\);

-- Location: M4K_X41_Y18
\inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000800000000C00000000E00000000F00000000F80000000FC0000000FE0000000FF0000000FF8000000FFC000000FFE000000FFF000000FFF800000FFFC00000FFFE00000FFFF00000FFFF80000FFFFC0000FFFFE0000FFFFF0000FFFFF8000FFFFFC000FFFFFE000FFFFFF000FFFFFF800FFFFFFC00FFFFFFE00FFFFFFF00FFFFFFF80FFFFFFFC0FFFFFFFE0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF8FFFFFFFFCFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g07_LUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g07_stack52:inst9|g07_pop_enable:inst104a|LUT:lut1|altsyncram:altsyncram_component|altsyncram_7q71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCFF_X36_Y21_N13
\inst9|inst50|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst117|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst50|dffs\(0));

-- Location: LCCOMB_X35_Y21_N18
\inst9|inst35|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst35|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst55|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst50|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst55|dffs\(0),
	datab => \inst9|inst50|dffs\(0),
	datac => \inst9|inst90~regout\,
	combout => \inst9|inst35|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X35_Y21_N19
\inst9|inst51|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst35|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst51|dffs\(0));

-- Location: LCCOMB_X34_Y20_N30
\inst9|inst122|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst122|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst73|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst68|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst73|dffs\(0),
	datac => \inst9|inst68|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst122|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X34_Y20_N31
\inst9|inst69|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst122|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst69|dffs\(0));

-- Location: LCCOMB_X33_Y20_N0
\inst9|inst41|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst41|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst69|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst67|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst69|dffs\(0),
	datac => \inst9|inst67|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst41|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y20_N1
\inst9|inst68|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst41|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst68|dffs\(0));

-- Location: LCCOMB_X33_Y20_N30
\inst9|inst121|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst121|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst68|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst63|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst68|dffs\(0),
	datac => \inst9|inst63|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst121|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y20_N31
\inst9|inst67|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst121|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst67|dffs\(0));

-- Location: LCCOMB_X34_Y20_N24
\inst9|inst39|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst39|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst67|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst62|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst62|dffs\(0),
	datac => \inst9|inst67|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst39|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X34_Y20_N25
\inst9|inst63|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst39|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst63|dffs\(0));

-- Location: LCCOMB_X34_Y21_N28
\inst9|inst120|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst120|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst63|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst61|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst61|dffs\(0),
	datac => \inst9|inst63|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst120|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X34_Y21_N29
\inst9|inst62|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst120|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst62|dffs\(0));

-- Location: LCCOMB_X34_Y21_N10
\inst9|inst38|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst38|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst62|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst57|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst57|dffs\(0),
	datac => \inst9|inst62|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst38|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X34_Y21_N11
\inst9|inst61|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst38|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst61|dffs\(0));

-- Location: LCCOMB_X33_Y21_N12
\inst9|inst119|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst119|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst61|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst56|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst56|dffs\(0),
	datac => \inst9|inst61|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst119|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y21_N13
\inst9|inst57|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst119|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst57|dffs\(0));

-- Location: LCCOMB_X32_Y21_N26
\inst9|inst37|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst37|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst57|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst55|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst55|dffs\(0),
	datac => \inst9|inst57|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst37|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X32_Y21_N27
\inst9|inst56|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst37|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst56|dffs\(0));

-- Location: LCCOMB_X33_Y21_N30
\inst9|inst118|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst118|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst56|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst51|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst56|dffs\(0),
	datac => \inst9|inst51|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst118|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y21_N31
\inst9|inst55|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst118|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst55|dffs\(0));

-- Location: LCCOMB_X34_Y18_N12
\inst3|LPM_MUX_component|auto_generated|result_node[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|state.ENABLE_STACK~regout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))) # 
-- (!\inst2|state.ENABLE_STACK~regout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\);

-- Location: LCCOMB_X35_Y21_N2
\inst9|inst78|LPM_MUX_component|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~42_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst55|dffs\(0)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst51|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst9|inst51|dffs\(0),
	datac => \inst9|inst55|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~42_combout\);

-- Location: LCCOMB_X40_Y19_N0
\inst9|inst25|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst25|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst9|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst28|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst28|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst9|dffs\(0),
	combout => \inst9|inst25|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X40_Y19_N1
\inst9|inst8|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst25|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst8|dffs\(0));

-- Location: LCCOMB_X39_Y20_N8
\inst9|inst110|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst110|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst32|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst8|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst8|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst32|dffs\(0),
	combout => \inst9|inst110|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X39_Y20_N9
\inst9|inst9|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst110|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst9|dffs\(0));

-- Location: LCCOMB_X40_Y20_N2
\inst9|inst26|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst26|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst_0|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst9|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst_0|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst9|dffs\(0),
	combout => \inst9|inst26|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: M4K_X41_Y19
\inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000008000C000E000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F800FC00FE00FF00FF00FF00FF00FF00FF80FFC0FFE0FFF0FFF8FFFCFFFEFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g07_LUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g07_stack52:inst9|g07_pop_enable:inst104a|LUT:lut1|altsyncram:altsyncram_component|altsyncram_7q71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|inst104a|lut1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X40_Y20_N3
\inst9|inst32|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst26|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst32|dffs\(0));

-- Location: LCCOMB_X39_Y20_N14
\inst9|inst111|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst111|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst11|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst32|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst11|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst32|dffs\(0),
	combout => \inst9|inst111|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X39_Y20_N15
\inst9|inst_0|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst111|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst_0|dffs\(0));

-- Location: LCCOMB_X40_Y20_N24
\inst9|inst27|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst27|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst36|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst_0|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst36|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst_0|dffs\(0),
	combout => \inst9|inst27|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X40_Y20_N25
\inst9|inst11|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst27|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst11|dffs\(0));

-- Location: LCCOMB_X38_Y20_N26
\inst9|inst112|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst112|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst12|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst11|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst12|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst11|dffs\(0),
	combout => \inst9|inst112|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y20_N27
\inst9|inst36|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst112|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst36|dffs\(0));

-- Location: LCCOMB_X38_Y20_N16
\inst9|inst29|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst29|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst13|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst36|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst36|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst13|dffs\(0),
	combout => \inst9|inst29|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y20_N19
\inst9|inst12|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst29|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst12|dffs\(0));

-- Location: LCCOMB_X38_Y20_N28
\inst9|inst113|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst113|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst40|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst12|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst12|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst40|dffs\(0),
	combout => \inst9|inst113|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y20_N29
\inst9|inst13|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst113|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst13|dffs\(0));

-- Location: LCCOMB_X37_Y20_N28
\inst9|inst30|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst30|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst14|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst13|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst13|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst14|dffs\(0),
	combout => \inst9|inst30|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y20_N29
\inst9|inst40|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst30|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst40|dffs\(0));

-- Location: LCCOMB_X38_Y21_N20
\inst9|inst114|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst114|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst15|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst40|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst40|dffs\(0),
	datac => \inst9|inst15|dffs\(0),
	combout => \inst9|inst114|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y21_N21
\inst9|inst14|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst114|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst14|dffs\(0));

-- Location: LCCOMB_X37_Y21_N6
\inst9|inst31|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst31|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst44|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst14|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst44|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst14|dffs\(0),
	combout => \inst9|inst31|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y21_N7
\inst9|inst15|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst31|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst15|dffs\(0));

-- Location: LCCOMB_X38_Y21_N30
\inst9|inst115|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst115|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst16|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst15|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst15|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst16|dffs\(0),
	combout => \inst9|inst115|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y21_N31
\inst9|inst44|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst115|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst44|dffs\(0));

-- Location: LCCOMB_X37_Y21_N12
\inst9|inst33|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst33|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst45|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst44|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst45|dffs\(0),
	datad => \inst9|inst44|dffs\(0),
	combout => \inst9|inst33|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y21_N13
\inst9|inst16|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst33|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst16|dffs\(0));

-- Location: LCCOMB_X36_Y21_N30
\inst9|inst116|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst116|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst49|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst16|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst49|dffs\(0),
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst16|dffs\(0),
	combout => \inst9|inst116|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X36_Y21_N31
\inst9|inst45|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst116|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst45|dffs\(0));

-- Location: LCCOMB_X35_Y21_N12
\inst9|inst34|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst34|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst50|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst45|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst50|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst45|dffs\(0),
	combout => \inst9|inst34|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X35_Y21_N13
\inst9|inst49|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst34|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst49|dffs\(0));

-- Location: LCCOMB_X35_Y21_N8
\inst9|inst78|LPM_MUX_component|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~41_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst50|dffs\(0)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst49|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst9|inst49|dffs\(0),
	datac => \inst9|inst50|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~41_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\adr_dips[0]~I\ : cycloneii_io
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
	padio => ww_adr_dips(0),
	combout => \adr_dips~combout\(0));

-- Location: LCCOMB_X34_Y18_N18
\inst3|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (\inst2|state.ENABLE_STACK~regout\ & (\inst16|dffs\(26))) # (!\inst2|state.ENABLE_STACK~regout\ & ((\adr_dips~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|dffs\(26),
	datac => \adr_dips~combout\(0),
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X34_Y18_N20
\inst3|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[0]~4_combout\)))) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst2|state.ENABLE_STACK~regout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\)) # 
-- (!\inst2|state.ENABLE_STACK~regout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst2|state.ENABLE_STACK~regout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X37_Y21_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst44|dffs\(0)))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & 
-- (\inst9|inst15|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst15|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datad => \inst9|inst44|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\);

-- Location: LCCOMB_X36_Y21_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~44_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\ & (\inst9|inst45|dffs\(0))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\ & ((\inst9|inst16|dffs\(0)))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst45|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst16|dffs\(0),
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~43_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~44_combout\);

-- Location: LCCOMB_X35_Y21_N20
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~44_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~42_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~42_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~41_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~44_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10_combout\);

-- Location: LCCOMB_X34_Y21_N16
\inst9|inst78|LPM_MUX_component|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~37_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst57|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst56|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst57|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst56|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~37_combout\);

-- Location: LCCOMB_X37_Y20_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~39_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\) # (\inst9|inst13|dffs\(0))))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst12|dffs\(0) & (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst9|inst12|dffs\(0),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst13|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~39_combout\);

-- Location: LCCOMB_X37_Y20_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~40_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~39_combout\ & ((\inst9|inst14|dffs\(0)) # ((!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~39_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & \inst9|inst40|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst14|dffs\(0),
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~39_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst40|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~40_combout\);

-- Location: LCCOMB_X35_Y21_N10
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~38_combout\) # 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~37_combout\)))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~38_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~37_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~40_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9_combout\);

-- Location: LCCOMB_X35_Y20_N2
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9_combout\))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10_combout\)) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~10_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~9_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X35_Y20_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- !\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X35_Y20_N24
\inst9|inst78|LPM_MUX_component|auto_generated|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- !\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X34_Y19_N2
\inst9|inst46|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst46|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst81|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst79|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst81|dffs\(0),
	datac => \inst9|inst79|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst46|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X34_Y19_N3
\inst9|inst80|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst46|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst80|dffs\(0));

-- Location: LCCOMB_X35_Y20_N12
\inst9|inst43|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst43|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst79|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst74|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst74|dffs\(0),
	datac => \inst9|inst79|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst43|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X35_Y20_N13
\inst9|inst75|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst43|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst75|dffs\(0));

-- Location: LCCOMB_X36_Y20_N26
\inst9|inst124|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst124|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst80|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst75|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst80|dffs\(0),
	datad => \inst9|inst75|dffs\(0),
	combout => \inst9|inst124|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X36_Y20_N27
\inst9|inst79|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst124|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst79|dffs\(0));

-- Location: LCCOMB_X35_Y20_N6
\inst9|inst42|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst42|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst74|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst69|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst74|dffs\(0),
	datac => \inst9|inst69|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst42|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X35_Y20_N7
\inst9|inst73|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst42|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst73|dffs\(0));

-- Location: LCCOMB_X36_Y20_N4
\inst9|inst123|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst123|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst75|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst73|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst73|dffs\(0),
	datad => \inst9|inst75|dffs\(0),
	combout => \inst9|inst123|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X36_Y20_N5
\inst9|inst74|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst123|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst74|dffs\(0));

-- Location: LCCOMB_X35_Y20_N28
\inst9|inst78|LPM_MUX_component|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\) # (\inst9|inst74|dffs\(0))))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst73|dffs\(0) & (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst73|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst74|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\);

-- Location: LCCOMB_X35_Y20_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~53_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\ & ((\inst9|inst79|dffs\(0)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\ & (\inst9|inst75|dffs\(0))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst75|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst79|dffs\(0),
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~52_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~53_combout\);

-- Location: LCCOMB_X35_Y20_N8
\inst9|inst78|LPM_MUX_component|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~56_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~55_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\ 
-- & \inst9|inst78|LPM_MUX_component|auto_generated|_~53_combout\)))) # (!\inst9|inst78|LPM_MUX_component|auto_generated|_~55_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\ & 
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~55_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~53_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~56_combout\);

-- Location: LCCOMB_X39_Y18_N30
\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\)) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\)) # 
-- (!\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~7_combout\,
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\);

-- Location: LCCOMB_X34_Y18_N24
\inst3|LPM_MUX_component|auto_generated|result_node[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[5]~10_combout\) # ((\inst2|state.ENABLE_STACK~regout\ & 
-- (\inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[5]~10_combout\,
	datab => \inst2|state.ENABLE_STACK~regout\,
	datac => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst4|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~12_combout\,
	combout => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\);

-- Location: LCCOMB_X33_Y19_N30
\inst9|inst53|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst53|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst99|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst93|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst99|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst93|dffs\(0),
	combout => \inst9|inst53|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y19_N31
\inst9|inst97|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst53|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst97|dffs\(0));

-- Location: LCCOMB_X32_Y19_N24
\inst9|inst128|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst128|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst97|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst92|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst92|dffs\(0),
	datab => \inst9|inst97|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst128|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X32_Y19_N25
\inst9|inst93|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst128|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst93|dffs\(0));

-- Location: LCCOMB_X33_Y19_N4
\inst9|inst52|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst52|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst93|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst91|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst91|dffs\(0),
	datad => \inst9|inst93|dffs\(0),
	combout => \inst9|inst52|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y19_N5
\inst9|inst92|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst52|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst92|dffs\(0));

-- Location: LCCOMB_X33_Y18_N30
\inst9|inst127|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst127|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst92|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst87|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst87|dffs\(0),
	datab => \inst9|inst92|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst127|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X33_Y18_N31
\inst9|inst91|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst127|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst91|dffs\(0));

-- Location: LCCOMB_X32_Y18_N20
\inst9|inst48|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst48|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst91|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst86|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst86|dffs\(0),
	datab => \inst9|inst91|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst48|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X32_Y18_N21
\inst9|inst87|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst48|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst87|dffs\(0));

-- Location: LCCOMB_X33_Y18_N2
\inst9|inst78|LPM_MUX_component|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~49_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst91|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst87|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst9|inst91|dffs\(0),
	datac => \inst9|inst87|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~49_combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst9|inst78|LPM_MUX_component|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~48_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst93|dffs\(0)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst92|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst92|dffs\(0),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst93|dffs\(0),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~48_combout\);

-- Location: LCCOMB_X33_Y19_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~50_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~49_combout\) # 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~49_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~48_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~50_combout\);

-- Location: LCCOMB_X34_Y19_N26
\inst9|inst78|LPM_MUX_component|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~51_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~47_combout\) # (\inst9|inst78|LPM_MUX_component|auto_generated|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~47_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~50_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~51_combout\);

-- Location: LCCOMB_X35_Y20_N18
\inst9|inst78|LPM_MUX_component|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~56_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~51_combout\) # 
-- ((\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~56_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~51_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\);

-- Location: LCCOMB_X35_Y20_N30
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~11_combout\ & 
-- !\inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~11_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\);

-- Location: LCCOMB_X37_Y19_N26
\inst9|inst18|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst18|$00000|auto_generated|result_node[0]~0_combout\ = (\inst9|inst2|dffs\(0) & \inst9|inst90~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst18|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X37_Y19_N27
\inst9|inst10|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst18|$00000|auto_generated|result_node[0]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst10|dffs\(0));

-- Location: LCCOMB_X37_Y18_N0
\inst9|inst105|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst105|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst3|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst10|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst10|dffs\(0),
	datad => \inst9|inst3|dffs\(0),
	combout => \inst9|inst105|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y18_N1
\inst9|inst2|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst105|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst2|dffs\(0));

-- Location: LCCOMB_X37_Y19_N8
\inst9|inst19|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst19|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst20|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst2|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|dffs\(0),
	datac => \inst9|inst20|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst19|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X37_Y19_N9
\inst9|inst3|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst19|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst3|dffs\(0));

-- Location: LCCOMB_X35_Y19_N4
\inst9|inst106|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst106|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst4|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst3|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst3|dffs\(0),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst4|dffs\(0),
	combout => \inst9|inst106|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X35_Y19_N5
\inst9|inst20|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst106|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst20|dffs\(0));

-- Location: LCCOMB_X38_Y19_N26
\inst9|inst21|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst21|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst5|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst20|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst20|dffs\(0),
	datac => \inst9|inst5|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst21|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y19_N27
\inst9|inst4|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst21|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst4|dffs\(0));

-- Location: LCCOMB_X35_Y19_N22
\inst9|inst107|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst107|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst24|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst4|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst24|dffs\(0),
	datad => \inst9|inst4|dffs\(0),
	combout => \inst9|inst107|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X35_Y19_N23
\inst9|inst5|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst107|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst5|dffs\(0));

-- Location: LCCOMB_X40_Y19_N14
\inst9|inst23|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst23|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst28|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst6|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst28|dffs\(0),
	datab => \inst9|inst6|dffs\(0),
	datac => \inst9|inst90~regout\,
	combout => \inst9|inst23|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X40_Y19_N15
\inst9|inst7|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst23|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst7|dffs\(0));

-- Location: LCCOMB_X39_Y19_N2
\inst9|inst108|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst108|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & (\inst9|inst7|dffs\(0))) # (!\inst9|inst90~regout\ & ((\inst9|inst24|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst7|dffs\(0),
	datad => \inst9|inst24|dffs\(0),
	combout => \inst9|inst108|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X39_Y19_N3
\inst9|inst6|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst108|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst6|dffs\(0));

-- Location: LCCOMB_X38_Y19_N16
\inst9|inst22|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst22|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst6|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst5|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst5|dffs\(0),
	datad => \inst9|inst6|dffs\(0),
	combout => \inst9|inst22|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X38_Y19_N17
\inst9|inst24|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst22|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst24|dffs\(0));

-- Location: LCCOMB_X38_Y19_N30
\inst9|inst78|LPM_MUX_component|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~71_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~70_combout\ & (((\inst9|inst6|dffs\(0))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~70_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst24|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~70_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst24|dffs\(0),
	datad => \inst9|inst6|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~71_combout\);

-- Location: LCCOMB_X38_Y19_N4
\inst9|inst78|LPM_MUX_component|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & !\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCCOMB_X38_Y19_N14
\inst9|inst78|LPM_MUX_component|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ & (!\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & 
-- \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X39_Y20_N6
\inst9|inst78|LPM_MUX_component|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~67_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst_0|dffs\(0))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst9|inst32|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst_0|dffs\(0),
	datad => \inst9|inst32|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~67_combout\);

-- Location: LCCOMB_X39_Y19_N20
\inst9|inst109|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst109|$00000|auto_generated|result_node[0]~1_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst8|dffs\(0)))) # (!\inst9|inst90~regout\ & (\inst9|inst7|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst7|dffs\(0),
	datac => \inst9|inst8|dffs\(0),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst109|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X39_Y19_N21
\inst9|inst28|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst109|$00000|auto_generated|result_node[0]~1_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst28|dffs\(0));

-- Location: LCCOMB_X39_Y19_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~64_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst9|dffs\(0)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst28|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst28|dffs\(0),
	datad => \inst9|inst9|dffs\(0),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~64_combout\);

-- Location: LCCOMB_X39_Y19_N28
\inst9|inst78|LPM_MUX_component|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~65_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~63_combout\) # 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~63_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~64_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~65_combout\);

-- Location: LCCOMB_X39_Y19_N18
\inst9|inst78|LPM_MUX_component|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~68_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~65_combout\) # ((\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~66_combout\) # (\inst9|inst78|LPM_MUX_component|auto_generated|_~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~66_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~67_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~65_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~68_combout\);

-- Location: LCCOMB_X38_Y19_N22
\inst9|inst78|LPM_MUX_component|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~69_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~62_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\ 
-- & \inst9|inst78|LPM_MUX_component|auto_generated|_~68_combout\)))) # (!\inst9|inst78|LPM_MUX_component|auto_generated|_~62_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\ & 
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~62_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~68_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~69_combout\);

-- Location: LCCOMB_X38_Y19_N12
\inst9|inst78|LPM_MUX_component|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~69_combout\) # 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\ & \inst9|inst78|LPM_MUX_component|auto_generated|_~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~71_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~57_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~69_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\);

-- Location: LCCOMB_X31_Y20_N22
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\ & 
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4));

-- Location: LCCOMB_X31_Y19_N14
\inst9|inst58|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst58|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst100|dffs\(1) & !\inst9|inst90~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst100|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst58|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X31_Y19_N15
\inst9|inst101|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst58|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst101|dffs\(1));

-- Location: LCCOMB_X31_Y19_N16
\inst9|inst54|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst54|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst101|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst99|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst99|dffs\(1),
	datac => \inst9|inst101|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst54|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X31_Y19_N17
\inst9|inst100|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst54|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst100|dffs\(1));

-- Location: LCCOMB_X32_Y19_N26
\inst9|inst129|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst129|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst100|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst97|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst100|dffs\(1),
	datad => \inst9|inst97|dffs\(1),
	combout => \inst9|inst129|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X32_Y19_N27
\inst9|inst99|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst129|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst99|dffs\(1));

-- Location: LCCOMB_X33_Y19_N22
\inst9|inst53|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst53|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst99|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst93|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst93|dffs\(1),
	datab => \inst9|inst99|dffs\(1),
	datac => \inst9|inst90~regout\,
	combout => \inst9|inst53|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X33_Y19_N23
\inst9|inst97|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst53|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst97|dffs\(1));

-- Location: LCCOMB_X32_Y19_N2
\inst9|inst78|LPM_MUX_component|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst99|dffs\(1))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & 
-- ((\inst9|inst97|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst99|dffs\(1),
	datab => \inst9|inst97|dffs\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\);

-- Location: LCCOMB_X32_Y19_N16
\inst9|inst78|LPM_MUX_component|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~35_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\ & (\inst9|inst101|dffs\(1))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\ & ((\inst9|inst100|dffs\(1)))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst101|dffs\(1),
	datab => \inst9|inst100|dffs\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~34_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~35_combout\);

-- Location: LCCOMB_X31_Y20_N8
\inst9|inst78|LPM_MUX_component|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & (\inst9|inst78|LPM_MUX_component|auto_generated|_~35_combout\ & 
-- !\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~35_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\);

-- Location: LCCOMB_X40_Y19_N24
\inst9|inst25|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst25|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst9|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst28|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|dffs\(1),
	datab => \inst9|inst28|dffs\(1),
	datac => \inst9|inst90~regout\,
	combout => \inst9|inst25|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X40_Y19_N25
\inst9|inst8|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst25|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst8|dffs\(1));

-- Location: LCCOMB_X39_Y19_N16
\inst9|inst109|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst109|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst8|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst7|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst8|dffs\(1),
	datac => \inst9|inst7|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst109|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X39_Y19_N17
\inst9|inst28|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst109|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst28|dffs\(1));

-- Location: LCCOMB_X40_Y19_N10
\inst9|inst23|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst23|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst28|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst6|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst28|dffs\(1),
	combout => \inst9|inst23|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X40_Y19_N11
\inst9|inst7|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst23|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst7|dffs\(1));

-- Location: LCCOMB_X39_Y19_N30
\inst9|inst108|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst108|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst7|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst24|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst7|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst24|dffs\(1),
	combout => \inst9|inst108|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X39_Y19_N31
\inst9|inst6|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst108|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst6|dffs\(1));

-- Location: LCCOMB_X38_Y19_N20
\inst9|inst22|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst22|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst6|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst5|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datac => \inst9|inst5|dffs\(1),
	datad => \inst9|inst6|dffs\(1),
	combout => \inst9|inst22|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X38_Y19_N21
\inst9|inst24|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst22|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst24|dffs\(1));

-- Location: LCCOMB_X35_Y19_N10
\inst9|inst107|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst107|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst24|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst4|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst24|dffs\(1),
	combout => \inst9|inst107|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X35_Y19_N11
\inst9|inst5|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst107|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst5|dffs\(1));

-- Location: LCCOMB_X38_Y19_N8
\inst9|inst78|LPM_MUX_component|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((\inst9|inst5|dffs\(1)) # (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst4|dffs\(1) & ((!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst5|dffs\(1),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\);

-- Location: LCCOMB_X38_Y19_N2
\inst9|inst78|LPM_MUX_component|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~32_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\ & ((\inst9|inst6|dffs\(1)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\ & (\inst9|inst24|dffs\(1))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst24|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~31_combout\,
	datad => \inst9|inst6|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~32_combout\);

-- Location: LCCOMB_X34_Y18_N0
\inst9|inst125|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst125|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst85|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst80|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst80|dffs\(1),
	datac => \inst9|inst85|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst125|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y18_N1
\inst9|inst81|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst125|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst81|dffs\(1));

-- Location: LCCOMB_X34_Y18_N30
\inst9|inst48|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst48|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst91|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst86|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst91|dffs\(1),
	datab => \inst9|inst86|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst48|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y18_N31
\inst9|inst87|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst48|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst87|dffs\(1));

-- Location: LCCOMB_X33_Y18_N16
\inst9|inst126|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst126|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst87|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst85|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst85|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst87|dffs\(1),
	combout => \inst9|inst126|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X33_Y18_N17
\inst9|inst86|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst126|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst86|dffs\(1));

-- Location: LCCOMB_X34_Y19_N28
\inst9|inst47|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst47|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst86|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst81|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst81|dffs\(1),
	datac => \inst9|inst90~regout\,
	datad => \inst9|inst86|dffs\(1),
	combout => \inst9|inst47|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y19_N29
\inst9|inst85|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst47|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst85|dffs\(1));

-- Location: LCCOMB_X34_Y21_N30
\inst9|inst38|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst38|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst62|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst57|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst57|dffs\(1),
	datac => \inst9|inst62|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst38|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y21_N31
\inst9|inst61|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst38|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst61|dffs\(1));

-- Location: LCCOMB_X34_Y21_N8
\inst9|inst120|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst120|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst63|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst61|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst61|dffs\(1),
	datac => \inst9|inst63|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst120|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y21_N9
\inst9|inst62|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst120|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst62|dffs\(1));

-- Location: LCCOMB_X34_Y20_N20
\inst9|inst39|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst39|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst67|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst62|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst67|dffs\(1),
	datab => \inst9|inst62|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst39|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y20_N21
\inst9|inst63|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst39|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst63|dffs\(1));

-- Location: LCCOMB_X33_Y20_N14
\inst9|inst121|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst121|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst68|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst63|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst63|dffs\(1),
	datac => \inst9|inst68|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst121|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X33_Y20_N15
\inst9|inst67|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst121|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst67|dffs\(1));

-- Location: LCCOMB_X33_Y20_N16
\inst9|inst41|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst41|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst69|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst67|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst69|dffs\(1),
	datac => \inst9|inst67|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst41|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X33_Y20_N17
\inst9|inst68|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst41|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst68|dffs\(1));

-- Location: LCCOMB_X34_Y20_N2
\inst9|inst122|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst122|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst73|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst68|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst68|dffs\(1),
	datac => \inst9|inst73|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst122|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y20_N3
\inst9|inst69|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst122|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst69|dffs\(1));

-- Location: LCCOMB_X34_Y20_N0
\inst9|inst42|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst42|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst74|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst69|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst69|dffs\(1),
	datac => \inst9|inst74|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst42|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X35_Y20_N31
\inst9|inst73|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst9|inst42|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	sload => VCC,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst73|dffs\(1));

-- Location: LCCOMB_X36_Y20_N24
\inst9|inst123|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst123|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst75|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst73|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst75|dffs\(1),
	datac => \inst9|inst73|dffs\(1),
	combout => \inst9|inst123|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X36_Y20_N25
\inst9|inst74|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst123|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst74|dffs\(1));

-- Location: LCCOMB_X35_Y20_N16
\inst9|inst43|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst43|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst79|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst74|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst79|dffs\(1),
	datac => \inst9|inst74|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst43|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X35_Y20_N17
\inst9|inst75|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst43|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst75|dffs\(1));

-- Location: LCCOMB_X36_Y20_N22
\inst9|inst124|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst124|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst80|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst75|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst90~regout\,
	datab => \inst9|inst75|dffs\(1),
	datad => \inst9|inst80|dffs\(1),
	combout => \inst9|inst124|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X36_Y20_N23
\inst9|inst79|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst124|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst79|dffs\(1));

-- Location: LCCOMB_X34_Y19_N22
\inst9|inst46|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst46|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst81|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst79|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst81|dffs\(1),
	datac => \inst9|inst79|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst46|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X34_Y19_N23
\inst9|inst80|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst46|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst80|dffs\(1));

-- Location: LCCOMB_X34_Y19_N12
\inst9|inst78|LPM_MUX_component|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~4_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst85|dffs\(1))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst80|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst9|inst85|dffs\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst80|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X34_Y19_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~6_combout\ = (!\inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~5_combout\) # 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~5_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[2]~9_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~4_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X34_Y19_N18
\inst9|inst78|LPM_MUX_component|auto_generated|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~10_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~9_combout\) # (\inst9|inst78|LPM_MUX_component|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~9_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[3]~7_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~6_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~10_combout\);

-- Location: LCCOMB_X34_Y20_N28
\inst9|inst78|LPM_MUX_component|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~13_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst67|dffs\(1))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & 
-- ((\inst9|inst63|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst67|dffs\(1),
	datab => \inst9|inst63|dffs\(1),
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X34_Y20_N26
\inst9|inst78|LPM_MUX_component|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~14_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~13_combout\ & (((\inst9|inst69|dffs\(1)) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~13_combout\ & (\inst9|inst68|dffs\(1) & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst68|dffs\(1),
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~13_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datad => \inst9|inst69|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X35_Y20_N26
\inst9|inst78|LPM_MUX_component|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~16_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~15_combout\ & (((\inst9|inst79|dffs\(1))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~15_combout\ & (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (\inst9|inst75|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~15_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst75|dffs\(1),
	datad => \inst9|inst79|dffs\(1),
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X35_Y20_N4
\inst9|inst78|LPM_MUX_component|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~17_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~16_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~14_combout\ 
-- & \inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\)))) # (!\inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\ & (\inst9|inst78|LPM_MUX_component|auto_generated|_~14_combout\ & 
-- (\inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~11_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~14_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~12_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~16_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCCOMB_X34_Y20_N16
\inst9|inst78|LPM_MUX_component|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~10_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~17_combout\) # 
-- ((\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ & \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~10_combout\,
	datac => \inst3|LPM_MUX_component|auto_generated|result_node[5]~11_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~17_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X37_Y19_N22
\inst9|inst18|$00000|auto_generated|result_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst18|$00000|auto_generated|result_node\(1) = (\inst9|inst2|dffs\(1)) # (!\inst9|inst90~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst2|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst18|$00000|auto_generated|result_node\(1));

-- Location: LCFF_X37_Y19_N23
\inst9|inst10|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst18|$00000|auto_generated|result_node\(1),
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst10|dffs\(1));

-- Location: LCCOMB_X37_Y18_N26
\inst9|inst105|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst105|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & ((\inst9|inst3|dffs\(1)))) # (!\inst9|inst90~regout\ & (\inst9|inst10|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst90~regout\,
	datac => \inst9|inst10|dffs\(1),
	datad => \inst9|inst3|dffs\(1),
	combout => \inst9|inst105|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X37_Y18_N27
\inst9|inst2|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst105|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst2|dffs\(1));

-- Location: LCCOMB_X37_Y19_N28
\inst9|inst19|$00000|auto_generated|result_node[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst19|$00000|auto_generated|result_node[1]~0_combout\ = (\inst9|inst90~regout\ & (\inst9|inst20|dffs\(1))) # (!\inst9|inst90~regout\ & ((\inst9|inst2|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst20|dffs\(1),
	datac => \inst9|inst2|dffs\(1),
	datad => \inst9|inst90~regout\,
	combout => \inst9|inst19|$00000|auto_generated|result_node[1]~0_combout\);

-- Location: LCFF_X37_Y19_N29
\inst9|inst3|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst9|inst19|$00000|auto_generated|result_node[1]~0_combout\,
	aclr => \inst_4|inst~regout\,
	ena => \inst9|inst104a|lut1|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst3|dffs\(1));

-- Location: LCCOMB_X37_Y19_N12
\inst9|inst78|LPM_MUX_component|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (((\inst9|inst2|dffs\(1)) # (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\)))) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & (\inst9|inst10|dffs\(1) & ((!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst10|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \inst9|inst2|dffs\(1),
	datad => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: LCCOMB_X37_Y19_N2
\inst9|inst78|LPM_MUX_component|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~28_combout\ = (\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\ & (\inst9|inst20|dffs\(1))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\ & ((\inst9|inst3|dffs\(1)))))) # (!\inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst20|dffs\(1),
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[1]~3_combout\,
	datac => \inst9|inst3|dffs\(1),
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~27_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~28_combout\);

-- Location: LCCOMB_X38_Y19_N28
\inst9|inst78|LPM_MUX_component|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~29_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~26_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\ 
-- & \inst9|inst78|LPM_MUX_component|auto_generated|_~28_combout\)))) # (!\inst9|inst78|LPM_MUX_component|auto_generated|_~26_combout\ & (((\inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\ & 
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~26_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~20_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~19_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~28_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~29_combout\);

-- Location: LCCOMB_X38_Y19_N0
\inst9|inst78|LPM_MUX_component|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~29_combout\) # 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\ & \inst9|inst78|LPM_MUX_component|auto_generated|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|_~30_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~32_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~18_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~29_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\);

-- Location: LCCOMB_X31_Y20_N16
\instb|inst|inst5|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instb|inst|inst5|inst4~0_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\) # 
-- (!\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\,
	combout => \instb|inst|inst5|inst4~0_combout\);

-- Location: LCCOMB_X31_Y20_N26
\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\ & 
-- ((\inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\) # (!\inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~7_combout\,
	datab => \inst3|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datac => \inst9|inst78|LPM_MUX_component|auto_generated|_~36_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~33_combout\,
	combout => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\);

-- Location: LCCOMB_X31_Y20_N14
\inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & \instb|inst|inst5|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4),
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y20_N20
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & ((!\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\) # (!\instb|inst|inst5|inst4~0_combout\))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & ((\instb|inst|inst5|inst4~0_combout\) # (\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4),
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y20_N30
\inst1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & (\instb|inst|inst5|inst4~0_combout\ & !\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\)) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & (!\instb|inst|inst5|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4),
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y20_N28
\inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & (\instb|inst|inst5|inst4~0_combout\ $ (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\))) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & (\instb|inst|inst5|inst4~0_combout\ & !\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4),
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\inst1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & (\instb|inst|inst5|inst4~0_combout\ & !\inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\)) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4) & (!\instb|inst|inst5|inst4~0_combout\ & \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|result_node\(4),
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[5]~8_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y20_N24
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\ & (!\instb|inst|inst5|inst4~0_combout\ & ((!\inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\,
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\ & (\instb|inst|inst5|inst4~0_combout\ & ((!\inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\) # 
-- (!\inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\,
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y20_N12
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = ((!\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\ & ((!\inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\) # (!\inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\)))) # 
-- (!\instb|inst|inst5|inst4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\,
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y20_N18
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\instb|inst|inst5|inst4~0_combout\ & ((\inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\) # ((\inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\ & 
-- \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst78|LPM_MUX_component|auto_generated|result_node[4]~12_combout\,
	datab => \inst9|inst78|LPM_MUX_component|auto_generated|_~60_combout\,
	datac => \instb|inst|inst5|inst4~0_combout\,
	datad => \inst9|inst78|LPM_MUX_component|auto_generated|_~72_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) $ 
-- (((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5)))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\);

-- Location: LCCOMB_X1_Y23_N2
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4)))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (((!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ & 
-- !\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\)))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # 
-- ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\ & \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\);

-- Location: LCCOMB_X1_Y23_N30
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ 
-- & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\);

-- Location: LCCOMB_X1_Y23_N12
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\)) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\ & (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ & 
-- !\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\)) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\ & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LCCOMB_X1_Y23_N4
\inst13|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ $ (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\)))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ $ 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y23_N18
\inst13|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\) # 
-- ((!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\)))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & 
-- ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ $ (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\inst13|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ & 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\)) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\inst13|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & 
-- !\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\)))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\inst13|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & (((!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & 
-- \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & 
-- (((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\)) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\inst13|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\))))) # 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\ & 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ $ (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\inst13|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ $ (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\)))) # 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\ & (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\ & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0) $ 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~2_combout\,
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[28]~4_combout\,
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~3_combout\,
	combout => \inst13|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y22_N12
\inst12|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~0_combout\ = (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & (((!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst12|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y22_N2
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5)))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2))))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\);

-- Location: LCCOMB_X1_Y22_N24
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4)) # 
-- (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\) # ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\ & 
-- ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	combout => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\);

-- Location: LCCOMB_X1_Y22_N22
\inst12|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux1~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & ((\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\) # 
-- (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\))) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & 
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst12|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y22_N20
\inst12|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux2~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\) # ((!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & 
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst12|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y22_N6
\inst12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux3~0_combout\ = (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ & 
-- \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\)) # (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ $ 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst12|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\inst12|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux4~3_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1)))) # 
-- (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst12|Mux4~3_combout\);

-- Location: LCCOMB_X1_Y22_N0
\inst12|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux4~6_combout\ = (\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst12|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst12|Mux4~3_combout\,
	combout => \inst12|Mux4~6_combout\);

-- Location: LCCOMB_X1_Y22_N26
\inst12|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux5~3_combout\ = (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst12|Mux5~3_combout\);

-- Location: LCCOMB_X1_Y22_N28
\inst12|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux5~9_combout\ = (((!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2) & \inst12|Mux5~3_combout\)) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5))) # (!\inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst9|inst83|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst12|Mux5~3_combout\,
	combout => \inst12|Mux5~9_combout\);

-- Location: LCCOMB_X1_Y22_N8
\inst12|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Mux6~0_combout\ = (!\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\ & (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\ $ 
-- (\inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_3~0_combout\,
	datac => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst11|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~1_combout\,
	combout => \inst12|Mux6~0_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rled~I\ : cycloneii_io
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
	datain => \inst9|inst1|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rled);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gled~I\ : cycloneii_io
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
	datain => \inst9|inst17|LPM_COMPARE_component|auto_generated|ALT_INV_aneb_result_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_gled);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[6]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[5]~I\ : cycloneii_io
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
	datain => \inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[4]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[3]~I\ : cycloneii_io
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
	datain => \inst1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[2]~I\ : cycloneii_io
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
	datain => \inst1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED1[0]~I\ : cycloneii_io
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
	datain => \inst1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED1(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[6]~I\ : cycloneii_io
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
	datain => \inst5|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[5]~I\ : cycloneii_io
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
	datain => \inst5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[4]~I\ : cycloneii_io
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
	datain => \inst5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[1]~I\ : cycloneii_io
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
	datain => \inst5|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED2[0]~I\ : cycloneii_io
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
	datain => \inst5|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED2(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[6]~I\ : cycloneii_io
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
	datain => \inst13|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(6));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[5]~I\ : cycloneii_io
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
	datain => \inst13|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(5));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[4]~I\ : cycloneii_io
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
	datain => \inst13|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(4));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[3]~I\ : cycloneii_io
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
	datain => \inst13|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[2]~I\ : cycloneii_io
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
	datain => \inst13|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[1]~I\ : cycloneii_io
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
	datain => \inst13|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(1));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED3[0]~I\ : cycloneii_io
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
	datain => \inst13|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED3(0));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[6]~I\ : cycloneii_io
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
	datain => \inst12|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[5]~I\ : cycloneii_io
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
	datain => \inst12|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(5));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[4]~I\ : cycloneii_io
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
	datain => \inst12|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(4));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[3]~I\ : cycloneii_io
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
	datain => \inst12|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(3));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[2]~I\ : cycloneii_io
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
	datain => \inst12|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(2));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[1]~I\ : cycloneii_io
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
	datain => \inst12|ALT_INV_Mux5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED4[0]~I\ : cycloneii_io
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
	datain => \inst12|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED4(0));
END structure;


