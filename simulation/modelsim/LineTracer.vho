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

-- DATE "12/17/2018 18:15:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LineTracer IS
    PORT (
	Counter_CK : IN std_logic;
	Sensor : IN std_logic_vector(7 DOWNTO 0);
	LED : OUT std_logic_vector(7 DOWNTO 0);
	Con : IN std_logic;
	MT_L : BUFFER std_logic;
	MT_R : BUFFER std_logic;
	Sg0 : OUT std_logic_vector(6 DOWNTO 0);
	Sg1 : OUT std_logic_vector(6 DOWNTO 0);
	Sg2 : OUT std_logic_vector(6 DOWNTO 0);
	Sg3 : OUT std_logic_vector(6 DOWNTO 0);
	BT1 : IN std_logic;
	BT2 : IN std_logic;
	BT3 : IN std_logic
	);
END LineTracer;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MT_L	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MT_R	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensor[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Con	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT3	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT2	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Counter_CK	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT1	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LineTracer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Counter_CK : std_logic;
SIGNAL ww_Sensor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Con : std_logic;
SIGNAL ww_MT_L : std_logic;
SIGNAL ww_MT_R : std_logic;
SIGNAL ww_Sg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Sg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Sg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Sg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BT1 : std_logic;
SIGNAL ww_BT2 : std_logic;
SIGNAL ww_BT3 : std_logic;
SIGNAL \BT1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_CK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Con~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \ConL[14]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \ConL[14]~2_combout\ : std_logic;
SIGNAL \ConR[6]~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ConL[13]~3_combout\ : std_logic;
SIGNAL \ConL[13]~4_combout\ : std_logic;
SIGNAL \ConL[1]~5_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \ConL[13]~6_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \ConL[13]~7_combout\ : std_logic;
SIGNAL \ConL[13]~8_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \ConL[4]~13_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ConL[7]~14_combout\ : std_logic;
SIGNAL \ConL[7]~15_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \ConL[7]~16_combout\ : std_logic;
SIGNAL \ConL[7]~17_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \ConL[6]~18_combout\ : std_logic;
SIGNAL \ConL[6]~19_combout\ : std_logic;
SIGNAL \ConL[6]~20_combout\ : std_logic;
SIGNAL \ConL[6]~21_combout\ : std_logic;
SIGNAL \ConL[6]~22_combout\ : std_logic;
SIGNAL \ConL[6]~23_combout\ : std_logic;
SIGNAL \ConL[6]~24_combout\ : std_logic;
SIGNAL \ConL[5]~25_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \ConL[5]~26_combout\ : std_logic;
SIGNAL \ConL[5]~27_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \ConL[5]~28_combout\ : std_logic;
SIGNAL \ConL[5]~29_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \ConL[5]~30_combout\ : std_logic;
SIGNAL \ConL[5]~31_combout\ : std_logic;
SIGNAL \ConL[4]~32_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \ConL[2]~34_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \ConL[2]~35_combout\ : std_logic;
SIGNAL \ConL[2]~36_combout\ : std_logic;
SIGNAL \ConL[1]~37_combout\ : std_logic;
SIGNAL \ConL[1]~38_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \ConL[1]~39_combout\ : std_logic;
SIGNAL \ConL[1]~40_combout\ : std_logic;
SIGNAL \ConL[0]~41_combout\ : std_logic;
SIGNAL \ConR[0]~6_combout\ : std_logic;
SIGNAL \ConR[0]~7_combout\ : std_logic;
SIGNAL \ConR[0]~8_combout\ : std_logic;
SIGNAL \ConR[0]~9_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \ConR[0]~10_combout\ : std_logic;
SIGNAL \ConR[0]~11_combout\ : std_logic;
SIGNAL \ConR[14]~12_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \ConL[5]~42_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \ConR[7]~13_combout\ : std_logic;
SIGNAL \ConR[7]~14_combout\ : std_logic;
SIGNAL \ConR[6]~15_combout\ : std_logic;
SIGNAL \ConR[6]~16_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \ConR[6]~17_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \ConR[6]~18_combout\ : std_logic;
SIGNAL \ConR[6]~19_combout\ : std_logic;
SIGNAL \ConR[6]~20_combout\ : std_logic;
SIGNAL \ConR[6]~21_combout\ : std_logic;
SIGNAL \ConR[6]~22_combout\ : std_logic;
SIGNAL \ConR[5]~23_combout\ : std_logic;
SIGNAL \ConR[5]~24_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \ConR[5]~25_combout\ : std_logic;
SIGNAL \ConR[5]~26_combout\ : std_logic;
SIGNAL \ConR[5]~27_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \ConR[2]~28_combout\ : std_logic;
SIGNAL \ConR[2]~29_combout\ : std_logic;
SIGNAL \ConR[2]~30_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \ConR[1]~31_combout\ : std_logic;
SIGNAL \ConR[1]~32_combout\ : std_logic;
SIGNAL \ConR[1]~33_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \CT~2_combout\ : std_logic;
SIGNAL \CT~4_combout\ : std_logic;
SIGNAL \ConR[1]~35_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Con~input_o\ : std_logic;
SIGNAL \Counter_CK~input_o\ : std_logic;
SIGNAL \Counter_CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Con~inputclkctrl_outclk\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \MT_L~output_o\ : std_logic;
SIGNAL \MT_R~output_o\ : std_logic;
SIGNAL \Sg0[0]~output_o\ : std_logic;
SIGNAL \Sg0[1]~output_o\ : std_logic;
SIGNAL \Sg0[2]~output_o\ : std_logic;
SIGNAL \Sg0[3]~output_o\ : std_logic;
SIGNAL \Sg0[4]~output_o\ : std_logic;
SIGNAL \Sg0[5]~output_o\ : std_logic;
SIGNAL \Sg0[6]~output_o\ : std_logic;
SIGNAL \Sg1[0]~output_o\ : std_logic;
SIGNAL \Sg1[1]~output_o\ : std_logic;
SIGNAL \Sg1[2]~output_o\ : std_logic;
SIGNAL \Sg1[3]~output_o\ : std_logic;
SIGNAL \Sg1[4]~output_o\ : std_logic;
SIGNAL \Sg1[5]~output_o\ : std_logic;
SIGNAL \Sg1[6]~output_o\ : std_logic;
SIGNAL \Sg2[0]~output_o\ : std_logic;
SIGNAL \Sg2[1]~output_o\ : std_logic;
SIGNAL \Sg2[2]~output_o\ : std_logic;
SIGNAL \Sg2[3]~output_o\ : std_logic;
SIGNAL \Sg2[4]~output_o\ : std_logic;
SIGNAL \Sg2[5]~output_o\ : std_logic;
SIGNAL \Sg2[6]~output_o\ : std_logic;
SIGNAL \Sg3[0]~output_o\ : std_logic;
SIGNAL \Sg3[1]~output_o\ : std_logic;
SIGNAL \Sg3[2]~output_o\ : std_logic;
SIGNAL \Sg3[3]~output_o\ : std_logic;
SIGNAL \Sg3[4]~output_o\ : std_logic;
SIGNAL \Sg3[5]~output_o\ : std_logic;
SIGNAL \Sg3[6]~output_o\ : std_logic;
SIGNAL \Sensor[0]~input_o\ : std_logic;
SIGNAL \Sensor[1]~input_o\ : std_logic;
SIGNAL \Sensor[2]~input_o\ : std_logic;
SIGNAL \Sensor[3]~input_o\ : std_logic;
SIGNAL \Sensor[4]~input_o\ : std_logic;
SIGNAL \Sensor[5]~input_o\ : std_logic;
SIGNAL \Sensor[6]~input_o\ : std_logic;
SIGNAL \Sensor[7]~input_o\ : std_logic;
SIGNAL \CT1~3_combout\ : std_logic;
SIGNAL \CT1~4_combout\ : std_logic;
SIGNAL \CT1~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \CT1~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \CT1~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \CT1~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \BT3~input_o\ : std_logic;
SIGNAL \BT2~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ConL[15]~0_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \CT1~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ConL[12]~9_combout\ : std_logic;
SIGNAL \ConL[12]~10_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \ConL[4]~33_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~30_combout\ : std_logic;
SIGNAL \LessThan1~32_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \ConR[15]~5_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \ConL[6]~12_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \ConL[5]~11_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \Mux41~6_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux43~6_combout\ : std_logic;
SIGNAL \Mux43~7_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \ConR[4]~34_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Sg0[0]$latch~combout\ : std_logic;
SIGNAL \Sg0[1]$latch~combout\ : std_logic;
SIGNAL \Sg0[2]$latch~combout\ : std_logic;
SIGNAL \Sg0[3]$latch~combout\ : std_logic;
SIGNAL \Sg0[6]$latch~combout\ : std_logic;
SIGNAL \Velocity_int3[0]~5_combout\ : std_logic;
SIGNAL \BT1~input_o\ : std_logic;
SIGNAL \BT1~inputclkctrl_outclk\ : std_logic;
SIGNAL \Velocity_int1[0]~4_combout\ : std_logic;
SIGNAL \ConST[0]~0_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \CT~1_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \CT~3_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \CT~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \CT~5_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \CT~6_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \CT~7_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Velocity_int1[3]~1_combout\ : std_logic;
SIGNAL \Velocity_int1[2]~2_combout\ : std_logic;
SIGNAL \Velocity_int1~3_combout\ : std_logic;
SIGNAL \Velocity_int1~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Velocity_int3[3]~0_combout\ : std_logic;
SIGNAL \Velocity_int3[3]~1_combout\ : std_logic;
SIGNAL \Velocity_int3~2_combout\ : std_logic;
SIGNAL \Velocity_int3[2]~3_combout\ : std_logic;
SIGNAL \Velocity_int3~4_combout\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \Velocity_int4[0]~6_combout\ : std_logic;
SIGNAL \Velocity_int2[0]~5_combout\ : std_logic;
SIGNAL \Velocity_int2[3]~1_combout\ : std_logic;
SIGNAL \Velocity_int2[3]~2_combout\ : std_logic;
SIGNAL \Velocity_int2~0_combout\ : std_logic;
SIGNAL \Velocity_int2~4_combout\ : std_logic;
SIGNAL \Velocity_int2[2]~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Velocity_int4[3]~0_combout\ : std_logic;
SIGNAL \Velocity_int4[3]~1_combout\ : std_logic;
SIGNAL \Velocity_int4~3_combout\ : std_logic;
SIGNAL \Velocity_int4~2_combout\ : std_logic;
SIGNAL \Velocity_int4[3]~4_combout\ : std_logic;
SIGNAL \Velocity_int4[3]~5_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL Velocity_int4 : std_logic_vector(3 DOWNTO 0);
SIGNAL Velocity_int3 : std_logic_vector(3 DOWNTO 0);
SIGNAL Velocity_int2 : std_logic_vector(3 DOWNTO 0);
SIGNAL Velocity_int1 : std_logic_vector(3 DOWNTO 0);
SIGNAL Fg : std_logic_vector(31 DOWNTO 0);
SIGNAL CT1 : std_logic_vector(22 DOWNTO 0);
SIGNAL CT : std_logic_vector(22 DOWNTO 0);
SIGNAL \U4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_Counter_CK <= Counter_CK;
ww_Sensor <= Sensor;
LED <= ww_LED;
ww_Con <= Con;
MT_L <= ww_MT_L;
MT_R <= ww_MT_R;
Sg0 <= ww_Sg0;
Sg1 <= ww_Sg1;
Sg2 <= ww_Sg2;
Sg3 <= ww_Sg3;
ww_BT1 <= BT1;
ww_BT2 <= BT2;
ww_BT3 <= BT3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\BT1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BT1~input_o\);

\Counter_CK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Counter_CK~input_o\);

\Con~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Con~input_o\);
\U4|ALT_INV_Mux0~0_combout\ <= NOT \U4|Mux0~0_combout\;
\U3|ALT_INV_Mux0~0_combout\ <= NOT \U3|Mux0~0_combout\;

-- Location: LCCOMB_X26_Y7_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CT1(0) $ (VCC)
-- \Add0~1\ = CARRY(CT1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CT1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X26_Y7_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (CT1(6) & (\Add0~11\ $ (GND))) # (!CT1(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((CT1(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y7_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (CT1(8) & (\Add0~15\ $ (GND))) # (!CT1(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((CT1(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y26_N10
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = CT(0) $ (VCC)
-- \Add5~1\ = CARRY(CT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CT(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X32_Y26_N26
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (CT(8) & (\Add5~15\ $ (GND))) # (!CT(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((CT(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X32_Y25_N0
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (CT(11) & (!\Add5~21\)) # (!CT(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!CT(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X32_Y25_N4
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (CT(13) & (!\Add5~25\)) # (!CT(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!CT(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X32_Y25_N10
\Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (CT(16) & (\Add5~31\ $ (GND))) # (!CT(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((CT(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X21_Y5_N12
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Sensor[2]~input_o\ & (((\Sensor[3]~input_o\)))) # (!\Sensor[2]~input_o\ & (\Sensor[0]~input_o\ & ((\Sensor[1]~input_o\) # (\Sensor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[1]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X21_Y5_N14
\ConL[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[14]~1_combout\ = ((!Fg(0) & ((!\Mux15~0_combout\) # (!\Mux27~0_combout\)))) # (!\Sensor[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => Fg(0),
	datac => \Mux15~0_combout\,
	datad => \Sensor[7]~input_o\,
	combout => \ConL[14]~1_combout\);

-- Location: LCCOMB_X21_Y3_N24
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Sensor[3]~input_o\ & ((\Sensor[2]~input_o\) # (\Sensor[0]~input_o\ $ (!\Sensor[1]~input_o\)))) # (!\Sensor[3]~input_o\ & (\Sensor[0]~input_o\ & (\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[0]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y3_N26
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Sensor[6]~input_o\ & ((\Sensor[5]~input_o\ & (!\Sensor[4]~input_o\)) # (!\Sensor[5]~input_o\ & ((\Sensor[3]~input_o\))))) # (!\Sensor[6]~input_o\ & (\Sensor[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X21_Y3_N16
\Mux51~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Sensor[2]~input_o\ & (\Sensor[1]~input_o\ & \Sensor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X21_Y3_N18
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Sensor[6]~input_o\ & (\Mux51~1_combout\)) # (!\Sensor[6]~input_o\ & ((\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux51~1_combout\,
	datac => \Sensor[6]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X21_Y3_N8
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux15~0_combout\ & ((\Mux1~0_combout\) # ((\Mux1~3_combout\ & \Mux1~1_combout\)))) # (!\Mux15~0_combout\ & (\Mux1~3_combout\ & (\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X21_Y3_N22
\ConL[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[14]~2_combout\ = (\ConL[14]~1_combout\) # ((!\Mux1~4_combout\ & Fg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~4_combout\,
	datac => Fg(0),
	datad => \ConL[14]~1_combout\,
	combout => \ConL[14]~2_combout\);

-- Location: LCCOMB_X22_Y4_N12
\ConR[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~4_combout\ = (\Sensor[7]~input_o\ & \Sensor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datac => \Sensor[2]~input_o\,
	combout => \ConR[6]~4_combout\);

-- Location: LCCOMB_X20_Y4_N14
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Sensor[4]~input_o\ & (\Sensor[3]~input_o\ $ (((\Sensor[6]~input_o\ & \Sensor[5]~input_o\))))) # (!\Sensor[4]~input_o\ & (\Sensor[6]~input_o\ & ((\Sensor[3]~input_o\) # (\Sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X20_Y4_N20
\ConL[13]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[13]~3_combout\ = (\ConR[6]~4_combout\ & (\Mux2~0_combout\ & (Fg(0) & \Mux51~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[6]~4_combout\,
	datab => \Mux2~0_combout\,
	datac => Fg(0),
	datad => \Mux51~2_combout\,
	combout => \ConL[13]~3_combout\);

-- Location: LCCOMB_X20_Y4_N30
\ConL[13]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[13]~4_combout\ = (\Sensor[7]~input_o\ & ((\Sensor[6]~input_o\) # ((\Sensor[4]~input_o\ & \Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \ConL[13]~4_combout\);

-- Location: LCCOMB_X24_Y4_N26
\ConL[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[1]~5_combout\ = (\Sensor[6]~input_o\ & !Fg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datac => Fg(0),
	combout => \ConL[1]~5_combout\);

-- Location: LCCOMB_X24_Y4_N22
\Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Sensor[4]~input_o\ & (((\Sensor[1]~input_o\) # (\Sensor[3]~input_o\)))) # (!\Sensor[4]~input_o\ & (\Sensor[2]~input_o\ & (\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[2]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X24_Y4_N8
\ConL[13]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[13]~6_combout\ = (\Sensor[5]~input_o\ & (!\Mux28~1_combout\ & ((\Sensor[0]~input_o\)))) # (!\Sensor[5]~input_o\ & (((!\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux28~0_combout\,
	datac => \Sensor[5]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \ConL[13]~6_combout\);

-- Location: LCCOMB_X24_Y4_N2
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (((!\Sensor[3]~input_o\) # (!\Sensor[5]~input_o\)) # (!\Sensor[4]~input_o\)) # (!\Sensor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[2]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => \Sensor[5]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X24_Y4_N28
\ConL[13]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[13]~7_combout\ = (\ConL[1]~5_combout\ & ((\ConL[13]~6_combout\) # ((\Mux15~1_combout\ & !\Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[1]~5_combout\,
	datab => \Mux15~1_combout\,
	datac => \ConL[13]~6_combout\,
	datad => \Sensor[0]~input_o\,
	combout => \ConL[13]~7_combout\);

-- Location: LCCOMB_X20_Y4_N8
\ConL[13]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[13]~8_combout\ = (\ConL[13]~7_combout\) # ((\ConL[13]~3_combout\) # ((!\ConL[13]~4_combout\ & !Fg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[13]~4_combout\,
	datab => Fg(0),
	datac => \ConL[13]~7_combout\,
	datad => \ConL[13]~3_combout\,
	combout => \ConL[13]~8_combout\);

-- Location: LCCOMB_X20_Y4_N26
\Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Sensor[2]~input_o\ & (!\Sensor[6]~input_o\ & (\Sensor[3]~input_o\))) # (!\Sensor[2]~input_o\ & (\Sensor[6]~input_o\ & ((\Sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[2]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Sensor[1]~input_o\ & (\Sensor[5]~input_o\ & (\Sensor[7]~input_o\ & \Sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[1]~input_o\,
	datab => \Sensor[5]~input_o\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\Mux30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Sensor[6]~input_o\ & (\Sensor[5]~input_o\ & (Fg(0) & !\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[5]~input_o\,
	datac => Fg(0),
	datad => \Sensor[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Mux30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Sensor[4]~input_o\ & (\Mux30~1_combout\ & (\Sensor[2]~input_o\ $ (!\Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Mux30~1_combout\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X19_Y4_N22
\Mux30~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Sensor[1]~input_o\ & ((\Sensor[4]~input_o\ & (!Fg(0) & !\Sensor[6]~input_o\)) # (!\Sensor[4]~input_o\ & (Fg(0) & \Sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => Fg(0),
	datac => \Sensor[6]~input_o\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Mux30~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~2_combout\) # ((\Mux30~3_combout\ & (\Mux30~4_combout\ & !\Sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \Mux30~3_combout\,
	datac => \Mux30~4_combout\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X19_Y4_N18
\Mux30~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux30~8_combout\) # ((\Mux30~5_combout\ & (\Sensor[3]~input_o\ & \Sensor[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~8_combout\,
	datab => \Mux30~5_combout\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[7]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X23_Y5_N20
\Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Sensor[5]~input_o\ & (((!\Mux1~0_combout\ & \Sensor[4]~input_o\)))) # (!\Sensor[5]~input_o\ & (!\Sensor[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X23_Y5_N18
\Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = ((\Mux31~0_combout\) # (!\Sensor[7]~input_o\)) # (!\Sensor[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Mux31~0_combout\,
	datad => \Sensor[7]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X22_Y3_N28
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Sensor[4]~input_o\ & \Sensor[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sensor[4]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X23_Y5_N8
\Mux31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (Fg(0) & ((\Mux31~1_combout\) # ((!\Mux51~1_combout\ & !\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~1_combout\,
	datab => Fg(0),
	datac => \Mux15~2_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X23_Y5_N14
\Mux31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Sensor[1]~input_o\ & (\Sensor[2]~input_o\ & ((!\Sensor[6]~input_o\) # (!\Sensor[5]~input_o\)))) # (!\Sensor[1]~input_o\ & (\Sensor[5]~input_o\ & (\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[6]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X23_Y5_N24
\Mux31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (!Fg(0) & (\Mux31~3_combout\ & \Sensor[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Fg(0),
	datac => \Mux31~3_combout\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X23_Y5_N12
\Mux31~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux31~4_combout\) # ((\ConL[5]~11_combout\ & (\Sensor[6]~input_o\ & !\Sensor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[5]~11_combout\,
	datab => \Mux31~4_combout\,
	datac => \Sensor[6]~input_o\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X23_Y5_N10
\Mux31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~2_combout\) # ((\Mux31~5_combout\ & (\ConL[6]~12_combout\ & \Sensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \ConL[6]~12_combout\,
	datac => \Mux31~2_combout\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X22_Y4_N6
\ConL[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[4]~13_combout\ = (!Fg(0) & (\Sensor[1]~input_o\ & \Sensor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Fg(0),
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \ConL[4]~13_combout\);

-- Location: LCCOMB_X20_Y4_N12
\Mux40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Sensor[6]~input_o\ & (\Sensor[7]~input_o\ & \Sensor[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X21_Y4_N12
\Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux40~0_combout\ & ((\Sensor[4]~input_o\) # (\ConL[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~0_combout\,
	datac => \Sensor[4]~input_o\,
	datad => \ConL[4]~13_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X21_Y4_N22
\Mux32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Sensor[0]~input_o\ & (\Sensor[3]~input_o\ $ (\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[0]~input_o\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X21_Y4_N4
\Mux32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux32~1_combout\ & (!Fg(0) & ((\Sensor[3]~input_o\) # (\Sensor[2]~input_o\)))) # (!\Mux32~1_combout\ & (((\Sensor[3]~input_o\ & \Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~1_combout\,
	datab => Fg(0),
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X21_Y4_N10
\Mux32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = ((!\Mux32~2_combout\ & ((\Sensor[4]~input_o\) # (!\Sensor[2]~input_o\)))) # (!\Mux32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~0_combout\,
	datab => \Sensor[4]~input_o\,
	datac => \Mux32~2_combout\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X21_Y3_N28
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Sensor[6]~input_o\ & ((\Sensor[3]~input_o\ & ((!\Sensor[5]~input_o\) # (!\Sensor[4]~input_o\))) # (!\Sensor[3]~input_o\ & ((\Sensor[5]~input_o\))))) # (!\Sensor[6]~input_o\ & (\Sensor[4]~input_o\ & (\Sensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X21_Y3_N6
\ConL[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[7]~14_combout\ = (\Sensor[1]~input_o\ & (\Sensor[0]~input_o\ & ((!\Sensor[2]~input_o\)))) # (!\Sensor[1]~input_o\ & (\Sensor[3]~input_o\ & (\Sensor[0]~input_o\ $ (!\Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[0]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \ConL[7]~14_combout\);

-- Location: LCCOMB_X21_Y3_N12
\ConL[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[7]~15_combout\ = (\ConL[7]~14_combout\ & ((\Mux15~0_combout\) # ((\Mux8~0_combout\ & \Mux51~1_combout\)))) # (!\ConL[7]~14_combout\ & (\Mux8~0_combout\ & ((\Mux51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[7]~14_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux15~0_combout\,
	datad => \Mux51~1_combout\,
	combout => \ConL[7]~15_combout\);

-- Location: LCCOMB_X22_Y3_N30
\Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Sensor[0]~input_o\ & (\Sensor[1]~input_o\ & ((\Sensor[4]~input_o\) # (!\Sensor[5]~input_o\)))) # (!\Sensor[0]~input_o\ & (\Sensor[4]~input_o\ & ((\Sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[0]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X22_Y3_N16
\ConL[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[7]~16_combout\ = (\Mux33~0_combout\ & (\Sensor[6]~input_o\ & (\Sensor[3]~input_o\ & \Sensor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \ConL[7]~16_combout\);

-- Location: LCCOMB_X22_Y3_N26
\ConL[7]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[7]~17_combout\ = (Fg(0) & (\ConL[7]~15_combout\ & (\Sensor[7]~input_o\))) # (!Fg(0) & (((!\ConL[7]~16_combout\) # (!\Sensor[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[7]~15_combout\,
	datab => Fg(0),
	datac => \Sensor[7]~input_o\,
	datad => \ConL[7]~16_combout\,
	combout => \ConL[7]~17_combout\);

-- Location: LCCOMB_X23_Y5_N4
\Mux34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Sensor[1]~input_o\ & (\Sensor[6]~input_o\ $ (((\Sensor[2]~input_o\ & \Sensor[3]~input_o\))))) # (!\Sensor[1]~input_o\ & (\Sensor[6]~input_o\ & ((\Sensor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X23_Y5_N6
\ConL[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~18_combout\ = (\Mux15~2_combout\ & (!Fg(0) & (\Mux34~0_combout\ & \ConL[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => Fg(0),
	datac => \Mux34~0_combout\,
	datad => \ConL[6]~12_combout\,
	combout => \ConL[6]~18_combout\);

-- Location: LCCOMB_X22_Y4_N4
\ConL[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~19_combout\ = (\Sensor[5]~input_o\ & (((!\Sensor[4]~input_o\ & \Sensor[6]~input_o\)))) # (!\Sensor[5]~input_o\ & (\Sensor[3]~input_o\ & (\Sensor[4]~input_o\ & !\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[4]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \ConL[6]~19_combout\);

-- Location: LCCOMB_X22_Y4_N2
\ConL[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~20_combout\ = (\ConL[6]~18_combout\) # ((\ConL[4]~13_combout\ & (\ConR[6]~4_combout\ & \ConL[6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[4]~13_combout\,
	datab => \ConR[6]~4_combout\,
	datac => \ConL[6]~19_combout\,
	datad => \ConL[6]~18_combout\,
	combout => \ConL[6]~20_combout\);

-- Location: LCCOMB_X22_Y4_N16
\ConL[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~21_combout\ = (\ConR[6]~4_combout\ & ((\Sensor[5]~input_o\ & ((\Sensor[6]~input_o\))) # (!\Sensor[5]~input_o\ & (\Mux51~2_combout\ & !\Sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \ConR[6]~4_combout\,
	datac => \Mux51~2_combout\,
	datad => \Sensor[6]~input_o\,
	combout => \ConL[6]~21_combout\);

-- Location: LCCOMB_X21_Y4_N8
\ConL[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~22_combout\ = (\Sensor[3]~input_o\ & \Sensor[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datac => \Sensor[4]~input_o\,
	combout => \ConL[6]~22_combout\);

-- Location: LCCOMB_X22_Y4_N22
\ConL[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~23_combout\ = (\Sensor[6]~input_o\ & ((\Sensor[0]~input_o\ & ((\Sensor[1]~input_o\))) # (!\Sensor[0]~input_o\ & (\ConL[6]~22_combout\)))) # (!\Sensor[6]~input_o\ & (\ConL[6]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[6]~22_combout\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \ConL[6]~23_combout\);

-- Location: LCCOMB_X22_Y4_N8
\ConL[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~24_combout\ = (\ConL[6]~20_combout\) # ((Fg(0) & ((!\ConL[6]~21_combout\) # (!\ConL[6]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[6]~23_combout\,
	datab => \ConL[6]~21_combout\,
	datac => Fg(0),
	datad => \ConL[6]~20_combout\,
	combout => \ConL[6]~24_combout\);

-- Location: LCCOMB_X22_Y3_N20
\ConL[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~25_combout\ = (!Fg(0) & (!\Sensor[2]~input_o\ & ((!\Mux15~2_combout\) # (!\Mux51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~2_combout\,
	datab => \Mux15~2_combout\,
	datac => Fg(0),
	datad => \Sensor[2]~input_o\,
	combout => \ConL[5]~25_combout\);

-- Location: LCCOMB_X22_Y3_N14
\Mux35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Sensor[4]~input_o\ & (\Sensor[3]~input_o\ & (!\Sensor[0]~input_o\ & \Sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[0]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X22_Y3_N8
\ConL[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~26_combout\ = (\ConL[5]~25_combout\) # ((!Fg(0) & (!\Mux35~0_combout\ & !\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Mux35~0_combout\,
	datac => \Sensor[1]~input_o\,
	datad => \ConL[5]~25_combout\,
	combout => \ConL[5]~26_combout\);

-- Location: LCCOMB_X23_Y5_N28
\ConL[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~27_combout\ = (!Fg(0) & ((!\Sensor[7]~input_o\) # (!\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => Fg(0),
	datad => \Sensor[7]~input_o\,
	combout => \ConL[5]~27_combout\);

-- Location: LCCOMB_X23_Y5_N30
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Sensor[3]~input_o\ & \Sensor[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[3]~input_o\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X23_Y4_N2
\ConL[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~28_combout\ = (Fg(0) & \Sensor[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datad => \Sensor[6]~input_o\,
	combout => \ConL[5]~28_combout\);

-- Location: LCCOMB_X23_Y5_N0
\ConL[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~29_combout\ = (\ConL[5]~11_combout\ & (\ConL[6]~12_combout\ & (\ConL[5]~28_combout\ & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[5]~11_combout\,
	datab => \ConL[6]~12_combout\,
	datac => \ConL[5]~28_combout\,
	datad => \Mux9~0_combout\,
	combout => \ConL[5]~29_combout\);

-- Location: LCCOMB_X22_Y4_N30
\Mux35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Sensor[5]~input_o\ & ((\Sensor[0]~input_o\) # ((\Sensor[3]~input_o\ & \Sensor[4]~input_o\)))) # (!\Sensor[5]~input_o\ & (\Sensor[3]~input_o\ & ((\Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[4]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X21_Y3_N2
\ConL[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~30_combout\ = (!Fg(0) & (\Sensor[2]~input_o\ & (\Sensor[1]~input_o\ & !\Mux35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Mux35~1_combout\,
	combout => \ConL[5]~30_combout\);

-- Location: LCCOMB_X22_Y5_N2
\ConL[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~31_combout\ = (\ConL[5]~26_combout\) # ((\ConL[5]~29_combout\) # ((\ConL[5]~30_combout\) # (\ConL[5]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[5]~26_combout\,
	datab => \ConL[5]~29_combout\,
	datac => \ConL[5]~30_combout\,
	datad => \ConL[5]~27_combout\,
	combout => \ConL[5]~31_combout\);

-- Location: LCCOMB_X20_Y6_N10
\ConL[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[4]~32_combout\ = (Fg(0) & (\Sensor[3]~input_o\ & (\Sensor[2]~input_o\ $ (!\Sensor[0]~input_o\)))) # (!Fg(0) & (((!\Sensor[2]~input_o\ & \Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => Fg(0),
	datad => \Sensor[0]~input_o\,
	combout => \ConL[4]~32_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (Fg(0) & (\Sensor[4]~input_o\ & (\Sensor[6]~input_o\ $ (!\Sensor[5]~input_o\)))) # (!Fg(0) & ((\Sensor[6]~input_o\) # ((\Sensor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[5]~input_o\,
	datac => Fg(0),
	datad => \Sensor[4]~input_o\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Mux37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\Sensor[0]~input_o\ & (((\Mux1~5_combout\ & !\Mux37~3_combout\)) # (!\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Sensor[0]~input_o\,
	datac => \Mux37~3_combout\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X22_Y4_N18
\ConL[2]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[2]~34_combout\ = (!\Sensor[4]~input_o\ & (((\Sensor[5]~input_o\) # (!\Mux51~2_combout\)) # (!\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Mux51~2_combout\,
	datad => \Sensor[5]~input_o\,
	combout => \ConL[2]~34_combout\);

-- Location: LCCOMB_X22_Y4_N28
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Sensor[6]~input_o\ & (\Sensor[5]~input_o\ & ((\Sensor[1]~input_o\) # (!\Sensor[0]~input_o\)))) # (!\Sensor[6]~input_o\ & (((\Sensor[1]~input_o\ & \Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\ConL[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[2]~35_combout\ = (((\Sensor[4]~input_o\ & !\Mux13~0_combout\)) # (!\Mux1~5_combout\)) # (!\Sensor[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Mux1~5_combout\,
	datac => \Sensor[4]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \ConL[2]~35_combout\);

-- Location: LCCOMB_X22_Y4_N0
\ConL[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[2]~36_combout\ = (\ConL[6]~20_combout\) # ((Fg(0) & ((\ConL[2]~35_combout\) # (\ConL[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[2]~35_combout\,
	datab => \ConL[2]~34_combout\,
	datac => Fg(0),
	datad => \ConL[6]~20_combout\,
	combout => \ConL[2]~36_combout\);

-- Location: LCCOMB_X21_Y3_N0
\ConL[1]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[1]~37_combout\ = (\Sensor[6]~input_o\ & (\Sensor[7]~input_o\ & (!Fg(0) & \Sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[7]~input_o\,
	datac => Fg(0),
	datad => \Sensor[0]~input_o\,
	combout => \ConL[1]~37_combout\);

-- Location: LCCOMB_X21_Y3_N30
\ConL[1]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[1]~38_combout\ = (\Sensor[4]~input_o\ & (\Mux39~0_combout\ & (\Sensor[3]~input_o\ & \Sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Mux39~0_combout\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \ConL[1]~38_combout\);

-- Location: LCCOMB_X21_Y3_N4
\Mux38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Sensor[3]~input_o\ & (\Sensor[1]~input_o\ $ (((\Sensor[4]~input_o\ & \Sensor[5]~input_o\))))) # (!\Sensor[3]~input_o\ & (((\Sensor[1]~input_o\ & \Sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X21_Y3_N10
\ConL[1]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[1]~39_combout\ = (\ConL[1]~37_combout\ & ((\ConL[1]~38_combout\) # ((\Mux38~0_combout\ & \Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[1]~38_combout\,
	datab => \ConL[1]~37_combout\,
	datac => \Mux38~0_combout\,
	datad => \Sensor[2]~input_o\,
	combout => \ConL[1]~39_combout\);

-- Location: LCCOMB_X21_Y3_N20
\ConL[1]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[1]~40_combout\ = (\ConL[1]~39_combout\) # ((Fg(0) & ((!\Mux1~4_combout\) # (!\Sensor[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Sensor[7]~input_o\,
	datac => \Mux1~4_combout\,
	datad => \ConL[1]~39_combout\,
	combout => \ConL[1]~40_combout\);

-- Location: LCCOMB_X21_Y3_N14
\ConL[0]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[0]~41_combout\ = (Fg(0) & ((!\Sensor[7]~input_o\) # (!\Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~4_combout\,
	datac => Fg(0),
	datad => \Sensor[7]~input_o\,
	combout => \ConL[0]~41_combout\);

-- Location: LCCOMB_X21_Y5_N4
\ConR[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[0]~6_combout\ = (!\Sensor[1]~input_o\ & (Fg(0) & \Sensor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[1]~input_o\,
	datab => Fg(0),
	datad => \Sensor[0]~input_o\,
	combout => \ConR[0]~6_combout\);

-- Location: LCCOMB_X21_Y5_N18
\ConR[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[0]~7_combout\ = (\ConR[0]~6_combout\ & (((!\Mux51~0_combout\) # (!\Sensor[2]~input_o\)) # (!\Sensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \ConR[0]~6_combout\,
	datac => \Sensor[2]~input_o\,
	datad => \Mux51~0_combout\,
	combout => \ConR[0]~7_combout\);

-- Location: LCCOMB_X21_Y5_N8
\ConR[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[0]~8_combout\ = (Fg(0) & !\Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Fg(0),
	datad => \Sensor[0]~input_o\,
	combout => \ConR[0]~8_combout\);

-- Location: LCCOMB_X21_Y5_N6
\ConR[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[0]~9_combout\ = (\ConR[0]~8_combout\ & (((!\Mux51~0_combout\) # (!\Mux39~0_combout\)) # (!\Sensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \ConR[0]~8_combout\,
	datac => \Mux39~0_combout\,
	datad => \Mux51~0_combout\,
	combout => \ConR[0]~9_combout\);

-- Location: LCCOMB_X22_Y5_N6
\Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Sensor[3]~input_o\ & ((\Sensor[4]~input_o\) # ((\Sensor[6]~input_o\)))) # (!\Sensor[3]~input_o\ & (((\Sensor[5]~input_o\ & \Sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[5]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X21_Y5_N28
\Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Sensor[2]~input_o\ & (!\Mux15~3_combout\ & ((\Sensor[7]~input_o\)))) # (!\Sensor[2]~input_o\ & (((!\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Sensor[2]~input_o\,
	datac => \Mux15~0_combout\,
	datad => \Sensor[7]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X21_Y5_N22
\ConR[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[0]~10_combout\ = (\Sensor[1]~input_o\ & ((\Mux15~4_combout\) # ((!\Sensor[7]~input_o\ & \Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Mux15~4_combout\,
	datac => \Mux15~1_combout\,
	datad => \Sensor[1]~input_o\,
	combout => \ConR[0]~10_combout\);

-- Location: LCCOMB_X21_Y5_N0
\ConR[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[0]~11_combout\ = (\ConR[0]~7_combout\) # ((\ConR[0]~9_combout\) # ((\ConR[0]~10_combout\ & Fg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[0]~10_combout\,
	datab => \ConR[0]~7_combout\,
	datac => Fg(0),
	datad => \ConR[0]~9_combout\,
	combout => \ConR[0]~11_combout\);

-- Location: LCCOMB_X20_Y6_N8
\ConR[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[14]~12_combout\ = (\ConR[0]~11_combout\) # ((!Fg(0) & ((!\Mux14~0_combout\) # (!\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux14~0_combout\,
	datac => Fg(0),
	datad => \ConR[0]~11_combout\,
	combout => \ConR[14]~12_combout\);

-- Location: LCCOMB_X21_Y5_N10
\Mux39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (!\Sensor[0]~input_o\ & (((\Mux51~3_combout\ & \Mux39~0_combout\)) # (!Fg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Mux51~3_combout\,
	datac => \Mux39~0_combout\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X21_Y4_N26
\Mux40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Sensor[4]~input_o\ & ((Fg(0) & (!\Sensor[2]~input_o\ & !\Sensor[0]~input_o\)) # (!Fg(0) & ((\Sensor[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[4]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X21_Y4_N30
\Mux41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Sensor[3]~input_o\ & (\Sensor[4]~input_o\ & (Fg(0) $ (!\Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => Fg(0),
	datad => \Sensor[2]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X22_Y5_N30
\Mux42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Sensor[4]~input_o\ & (\Sensor[1]~input_o\ $ (((\Sensor[3]~input_o\))))) # (!\Sensor[4]~input_o\ & (\Sensor[1]~input_o\ & (\Sensor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X23_Y5_N22
\Mux43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Sensor[6]~input_o\ & (\Sensor[5]~input_o\ & (\Sensor[1]~input_o\ $ (\Sensor[2]~input_o\)))) # (!\Sensor[6]~input_o\ & (((\Sensor[1]~input_o\ & \Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[6]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X23_Y5_N16
\Mux43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux9~0_combout\ & (\ConL[6]~12_combout\ & (\Mux43~0_combout\ & !Fg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \ConL[6]~12_combout\,
	datac => \Mux43~0_combout\,
	datad => Fg(0),
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X20_Y6_N30
\Mux43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (!\Sensor[3]~input_o\ & (!\Sensor[2]~input_o\ & (\Sensor[1]~input_o\ & \Sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X20_Y5_N12
\Mux43~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux43~1_combout\) # ((\ConR[0]~9_combout\) # ((\Mux51~0_combout\ & \Mux43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux43~1_combout\,
	datac => \Mux43~2_combout\,
	datad => \ConR[0]~9_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X24_Y4_N30
\Mux44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\ConL[1]~5_combout\ & (!\Sensor[7]~input_o\ & ((!\Sensor[1]~input_o\) # (!\Sensor[4]~input_o\)))) # (!\ConL[1]~5_combout\ & (((!\Sensor[1]~input_o\)) # (!\Sensor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[1]~5_combout\,
	datab => \Sensor[4]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[7]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X24_Y4_N24
\ConL[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~42_combout\ = (!\Sensor[6]~input_o\ & !Fg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datac => Fg(0),
	combout => \ConL[5]~42_combout\);

-- Location: LCCOMB_X24_Y4_N18
\Mux44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (!\Sensor[5]~input_o\ & (((!\Sensor[3]~input_o\) # (!\ConL[5]~42_combout\)) # (!\Sensor[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \ConL[5]~42_combout\,
	datac => \Sensor[5]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X24_Y4_N4
\Mux44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Sensor[7]~input_o\ & ((Fg(0) & (\Sensor[6]~input_o\ & \Sensor[3]~input_o\)) # (!Fg(0) & ((\Sensor[6]~input_o\) # (\Sensor[3]~input_o\))))) # (!\Sensor[7]~input_o\ & (((\Sensor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => Fg(0),
	datac => \Sensor[6]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X23_Y5_N2
\Mux44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Sensor[1]~input_o\ & (((\Mux15~2_combout\ & !\Mux44~2_combout\)) # (!\Sensor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Mux44~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X24_Y4_N10
\Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = ((!\Sensor[1]~input_o\ & ((\Sensor[2]~input_o\) # (!\Mux9~0_combout\)))) # (!\Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[2]~input_o\,
	datab => \Mux9~0_combout\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Mux44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = (\Mux44~3_combout\) # ((\Mux44~1_combout\) # ((\Mux44~0_combout\) # (\Mux44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~3_combout\,
	datab => \Mux44~1_combout\,
	datac => \Mux44~0_combout\,
	datad => \Mux44~4_combout\,
	combout => \Mux44~5_combout\);

-- Location: LCCOMB_X22_Y3_N10
\Mux45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Sensor[0]~input_o\ & ((\Sensor[7]~input_o\ & (\Sensor[6]~input_o\)) # (!\Sensor[7]~input_o\ & ((\Sensor[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[0]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X22_Y3_N0
\ConR[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[7]~13_combout\ = (((!\Mux15~2_combout\) # (!\Sensor[3]~input_o\)) # (!\Sensor[1]~input_o\)) # (!\Mux45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Mux15~2_combout\,
	combout => \ConR[7]~13_combout\);

-- Location: LCCOMB_X22_Y3_N22
\ConR[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[7]~14_combout\ = (Fg(0) & (\ConL[7]~15_combout\ & (\Sensor[7]~input_o\))) # (!Fg(0) & (((\ConR[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[7]~15_combout\,
	datab => Fg(0),
	datac => \Sensor[7]~input_o\,
	datad => \ConR[7]~13_combout\,
	combout => \ConR[7]~14_combout\);

-- Location: LCCOMB_X20_Y6_N20
\ConR[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~15_combout\ = (\Sensor[3]~input_o\ & ((!\Sensor[1]~input_o\))) # (!\Sensor[3]~input_o\ & (!\Sensor[2]~input_o\ & \Sensor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	combout => \ConR[6]~15_combout\);

-- Location: LCCOMB_X20_Y6_N2
\ConR[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~16_combout\ = (\Sensor[0]~input_o\ & (!Fg(0) & (\Mux51~0_combout\ & \ConR[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[0]~input_o\,
	datab => Fg(0),
	datac => \Mux51~0_combout\,
	datad => \ConR[6]~15_combout\,
	combout => \ConR[6]~16_combout\);

-- Location: LCCOMB_X22_Y4_N26
\Mux46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Sensor[5]~input_o\ & (\Sensor[6]~input_o\ $ (((\Sensor[3]~input_o\ & \Sensor[4]~input_o\))))) # (!\Sensor[5]~input_o\ & (\Sensor[3]~input_o\ & ((\Sensor[4]~input_o\) # (\Sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[4]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\ConR[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~17_combout\ = (\ConR[6]~16_combout\) # ((\Mux46~0_combout\ & (\ConR[6]~4_combout\ & \ConL[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~0_combout\,
	datab => \ConR[6]~4_combout\,
	datac => \ConR[6]~16_combout\,
	datad => \ConL[4]~13_combout\,
	combout => \ConR[6]~17_combout\);

-- Location: LCCOMB_X23_Y4_N30
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\Sensor[7]~input_o\ & (\Sensor[0]~input_o\ & (\Mux28~0_combout\ & \Sensor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[0]~input_o\,
	datac => \Mux28~0_combout\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X23_Y4_N8
\ConR[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~18_combout\ = (Fg(0) & (((!\Sensor[6]~input_o\ & !\Mux22~0_combout\)) # (!\Sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Sensor[6]~input_o\,
	datac => \Mux22~0_combout\,
	datad => \Sensor[5]~input_o\,
	combout => \ConR[6]~18_combout\);

-- Location: LCCOMB_X24_Y4_N6
\ConR[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~19_combout\ = (((\Sensor[1]~input_o\) # (\Sensor[0]~input_o\)) # (!\Sensor[3]~input_o\)) # (!\Sensor[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \ConR[6]~19_combout\);

-- Location: LCCOMB_X24_Y4_N16
\ConR[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~20_combout\ = (\Sensor[7]~input_o\ & ((\Sensor[2]~input_o\ & (!\Mux51~2_combout\)) # (!\Sensor[2]~input_o\ & ((\ConR[6]~19_combout\))))) # (!\Sensor[7]~input_o\ & (((!\Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Mux51~2_combout\,
	datac => \Sensor[2]~input_o\,
	datad => \ConR[6]~19_combout\,
	combout => \ConR[6]~20_combout\);

-- Location: LCCOMB_X24_Y4_N14
\ConR[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~21_combout\ = (\ConR[6]~20_combout\) # ((!\Sensor[7]~input_o\ & ((!\Mux51~2_combout\) # (!\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \ConR[6]~20_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux51~2_combout\,
	combout => \ConR[6]~21_combout\);

-- Location: LCCOMB_X23_Y4_N10
\ConR[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[6]~22_combout\ = (\ConR[6]~18_combout\) # ((\ConR[6]~17_combout\) # ((\ConL[5]~28_combout\ & \ConR[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[6]~18_combout\,
	datab => \ConL[5]~28_combout\,
	datac => \ConR[6]~21_combout\,
	datad => \ConR[6]~17_combout\,
	combout => \ConR[6]~22_combout\);

-- Location: LCCOMB_X22_Y3_N4
\ConR[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[5]~23_combout\ = (\Mux51~2_combout\ & (!\Sensor[2]~input_o\ & (Fg(0) & \Mux51~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~2_combout\,
	datab => \Sensor[2]~input_o\,
	datac => Fg(0),
	datad => \Mux51~3_combout\,
	combout => \ConR[5]~23_combout\);

-- Location: LCCOMB_X22_Y3_N2
\ConR[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[5]~24_combout\ = (\Sensor[7]~input_o\ & (!\Sensor[1]~input_o\ & ((!\Mux15~2_combout\) # (!\Sensor[3]~input_o\)))) # (!\Sensor[7]~input_o\ & (((!\Mux15~2_combout\) # (!\Sensor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Mux15~2_combout\,
	combout => \ConR[5]~24_combout\);

-- Location: LCCOMB_X22_Y3_N24
\Mux47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Sensor[2]~input_o\ & (((\Sensor[3]~input_o\) # (\Sensor[5]~input_o\)))) # (!\Sensor[2]~input_o\ & (\Sensor[4]~input_o\ & (\Sensor[3]~input_o\ & \Sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X22_Y3_N6
\ConR[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[5]~25_combout\ = (\Sensor[7]~input_o\ & ((\Sensor[1]~input_o\ & ((!\Mux47~0_combout\))) # (!\Sensor[1]~input_o\ & (\Sensor[2]~input_o\)))) # (!\Sensor[7]~input_o\ & (((!\Sensor[1]~input_o\)) # (!\Sensor[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Mux47~0_combout\,
	combout => \ConR[5]~25_combout\);

-- Location: LCCOMB_X22_Y3_N12
\ConR[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[5]~26_combout\ = ((\ConR[5]~25_combout\) # ((\Sensor[7]~input_o\ & !\Sensor[6]~input_o\))) # (!\Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[0]~input_o\,
	datad => \ConR[5]~25_combout\,
	combout => \ConR[5]~26_combout\);

-- Location: LCCOMB_X22_Y3_N18
\ConR[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[5]~27_combout\ = (\ConR[5]~23_combout\) # ((!Fg(0) & ((\ConR[5]~26_combout\) # (\ConR[5]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[5]~26_combout\,
	datab => Fg(0),
	datac => \ConR[5]~23_combout\,
	datad => \ConR[5]~24_combout\,
	combout => \ConR[5]~27_combout\);

-- Location: LCCOMB_X23_Y4_N20
\Mux49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ((!\Sensor[5]~input_o\ & ((!\Sensor[7]~input_o\) # (!Fg(0))))) # (!\Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \Sensor[0]~input_o\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X20_Y6_N24
\Mux49~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Sensor[3]~input_o\ & (((\Sensor[1]~input_o\ & \Sensor[2]~input_o\)) # (!Fg(0)))) # (!\Sensor[3]~input_o\ & (!Fg(0) & (\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => Fg(0),
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X23_Y4_N18
\Mux49~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\Sensor[7]~input_o\ & (((!\Mux49~1_combout\ & \Mux15~2_combout\)) # (!\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Mux49~1_combout\,
	datac => \Mux15~2_combout\,
	datad => \Sensor[6]~input_o\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X23_Y4_N12
\Mux49~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux49~2_combout\) # ((!\Mux28~0_combout\ & ((!\Sensor[5]~input_o\) # (!\Sensor[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Mux49~2_combout\,
	datac => \Mux28~0_combout\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X23_Y4_N22
\Mux49~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (((\Sensor[5]~input_o\ & Fg(0))) # (!\ConR[6]~4_combout\)) # (!\Sensor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \ConR[6]~4_combout\,
	datad => Fg(0),
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X23_Y4_N24
\Mux49~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (\Mux49~3_combout\) # ((\Mux49~0_combout\) # ((\Mux49~4_combout\ & !\Sensor[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~3_combout\,
	datab => \Mux49~0_combout\,
	datac => \Mux49~4_combout\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X22_Y4_N14
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Sensor[2]~input_o\ & (\Sensor[3]~input_o\ & ((\Sensor[1]~input_o\) # (\Sensor[7]~input_o\)))) # (!\Sensor[2]~input_o\ & (!\Sensor[3]~input_o\ & (\Sensor[1]~input_o\ & \Sensor[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[2]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[7]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X23_Y4_N26
\ConR[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[2]~28_combout\ = (((!\Mux26~0_combout\ & \Sensor[6]~input_o\)) # (!\Sensor[0]~input_o\)) # (!\Mux15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Sensor[6]~input_o\,
	datac => \Mux15~2_combout\,
	datad => \Sensor[0]~input_o\,
	combout => \ConR[2]~28_combout\);

-- Location: LCCOMB_X23_Y4_N16
\ConR[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[2]~29_combout\ = (\ConR[2]~28_combout\) # ((!\Sensor[6]~input_o\ & ((\Sensor[7]~input_o\) # (!\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Sensor[6]~input_o\,
	datac => \ConR[2]~28_combout\,
	datad => \Sensor[7]~input_o\,
	combout => \ConR[2]~29_combout\);

-- Location: LCCOMB_X23_Y4_N14
\ConR[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[2]~30_combout\ = (\ConR[6]~17_combout\) # ((Fg(0) & \ConR[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Fg(0),
	datab => \ConR[6]~17_combout\,
	datad => \ConR[2]~29_combout\,
	combout => \ConR[2]~30_combout\);

-- Location: LCCOMB_X22_Y5_N22
\Mux50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Sensor[2]~input_o\ & (\Sensor[6]~input_o\ $ (((\Sensor[4]~input_o\ & \Sensor[3]~input_o\))))) # (!\Sensor[2]~input_o\ & (\Sensor[4]~input_o\ & (\Sensor[3]~input_o\ & \Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X22_Y5_N16
\ConR[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[1]~31_combout\ = (\Sensor[5]~input_o\ & (\Sensor[1]~input_o\ & \Mux50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Mux50~0_combout\,
	combout => \ConR[1]~31_combout\);

-- Location: LCCOMB_X22_Y5_N10
\ConR[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[1]~32_combout\ = (\Sensor[5]~input_o\ & (!\Sensor[1]~input_o\ & (!\Sensor[2]~input_o\ & \Sensor[6]~input_o\))) # (!\Sensor[5]~input_o\ & (\Sensor[1]~input_o\ & (\Sensor[2]~input_o\ & !\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \ConR[1]~32_combout\);

-- Location: LCCOMB_X22_Y5_N24
\ConR[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[1]~33_combout\ = (\ConR[0]~11_combout\) # ((\ConR[1]~35_combout\ & (!Fg(0) & \ConL[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[0]~11_combout\,
	datab => \ConR[1]~35_combout\,
	datac => Fg(0),
	datad => \ConL[6]~12_combout\,
	combout => \ConR[1]~33_combout\);

-- Location: LCCOMB_X27_Y7_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!CT1(11) & (CT1(8) & (!CT1(10) & CT1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(11),
	datab => CT1(8),
	datac => CT1(10),
	datad => CT1(9),
	combout => \Equal0~5_combout\);

-- Location: FF_X31_Y25_N13
\CT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~2_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(16));

-- Location: FF_X32_Y25_N25
\CT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~4_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(13));

-- Location: FF_X32_Y25_N1
\CT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~22_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(11));

-- Location: LCCOMB_X32_Y25_N30
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!CT(11) & (!CT(12) & (CT(13) & !CT(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT(11),
	datab => CT(12),
	datac => CT(13),
	datad => CT(14),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X31_Y25_N12
\CT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~2_combout\ = (\Add5~32_combout\ & (((!\Equal2~6_combout\) # (!\Equal2~5_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~5_combout\,
	datac => \Add5~32_combout\,
	datad => \Equal2~6_combout\,
	combout => \CT~2_combout\);

-- Location: LCCOMB_X32_Y25_N24
\CT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~4_combout\ = (\Add5~26_combout\ & (((!\Equal2~4_combout\) # (!\Equal2~6_combout\)) # (!\Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~6_combout\,
	datac => \Add5~26_combout\,
	datad => \Equal2~4_combout\,
	combout => \CT~4_combout\);

-- Location: LCCOMB_X22_Y5_N14
\ConR[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[1]~35_combout\ = (\ConR[1]~31_combout\) # ((\ConR[1]~32_combout\ & (\Sensor[4]~input_o\ & \Sensor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[1]~32_combout\,
	datab => \ConR[1]~31_combout\,
	datac => \Sensor[4]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \ConR[1]~35_combout\);

-- Location: LCCOMB_X19_Y4_N20
\Mux30~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Sensor[2]~input_o\ & (\Sensor[6]~input_o\ $ (((\Sensor[3]~input_o\ & \Sensor[4]~input_o\))))) # (!\Sensor[2]~input_o\ & (\Sensor[6]~input_o\ & ((\Sensor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[4]~input_o\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X19_Y4_N30
\Mux30~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux30~0_combout\ & (\Mux30~7_combout\ & ((!\Sensor[6]~input_o\) # (!Fg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => Fg(0),
	datac => \Sensor[6]~input_o\,
	datad => \Mux30~7_combout\,
	combout => \Mux30~8_combout\);

-- Location: IOIBUF_X41_Y15_N1
\Con~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Con,
	o => \Con~input_o\);

-- Location: IOIBUF_X19_Y29_N8
\Counter_CK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Counter_CK,
	o => \Counter_CK~input_o\);

-- Location: CLKCTRL_G12
\Counter_CK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Counter_CK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Counter_CK~inputclkctrl_outclk\);

-- Location: CLKCTRL_G9
\Con~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Con~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Con~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y26_N16
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[0]~input_o\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[1]~input_o\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[2]~input_o\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[3]~input_o\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LED[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[4]~input_o\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LED[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[5]~input_o\,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LED[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[6]~input_o\,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor[7]~input_o\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\MT_L~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~32_combout\,
	devoe => ww_devoe,
	o => \MT_L~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\MT_R~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~32_combout\,
	devoe => ww_devoe,
	o => \MT_R~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Sg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sg0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Sg0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Sg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sg0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Sg0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Sg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sg0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Sg0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Sg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sg0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Sg0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Sg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sg0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Sg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sg0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Sg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sg0[6]$latch~combout\,
	devoe => ww_devoe,
	o => \Sg0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Sg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Sg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Sg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Sg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Sg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Sg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Sg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sg1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\Sg2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\Sg2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\Sg2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\Sg2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\Sg2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\Sg2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\Sg2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Sg2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\Sg3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\Sg3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\Sg3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\Sg3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\Sg3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\Sg3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\Sg3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Sg3[6]~output_o\);

-- Location: IOIBUF_X37_Y0_N22
\Sensor[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(0),
	o => \Sensor[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\Sensor[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(1),
	o => \Sensor[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\Sensor[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(2),
	o => \Sensor[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\Sensor[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(3),
	o => \Sensor[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\Sensor[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(4),
	o => \Sensor[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\Sensor[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(5),
	o => \Sensor[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\Sensor[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(6),
	o => \Sensor[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Sensor[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensor(7),
	o => \Sensor[7]~input_o\);

-- Location: LCCOMB_X26_Y7_N2
\CT1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~3_combout\ = (\Add0~16_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datac => \Equal0~7_combout\,
	combout => \CT1~3_combout\);

-- Location: FF_X26_Y7_N3
\CT1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(8));

-- Location: LCCOMB_X26_Y7_N4
\CT1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~4_combout\ = (\Add0~12_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \Equal0~7_combout\,
	combout => \CT1~4_combout\);

-- Location: FF_X26_Y7_N5
\CT1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(6));

-- Location: LCCOMB_X26_Y7_N8
\CT1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~6_combout\ = (\Add0~0_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Equal0~7_combout\,
	combout => \CT1~6_combout\);

-- Location: FF_X26_Y7_N9
\CT1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(0));

-- Location: LCCOMB_X26_Y7_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (CT1(1) & (!\Add0~1\)) # (!CT1(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!CT1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X26_Y7_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (CT1(2) & (\Add0~3\ $ (GND))) # (!CT1(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((CT1(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X26_Y7_N15
\CT1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(2));

-- Location: LCCOMB_X26_Y7_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (CT1(3) & (!\Add0~5\)) # (!CT1(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!CT1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X26_Y7_N17
\CT1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(3));

-- Location: LCCOMB_X26_Y7_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CT1(4) & (\Add0~7\ $ (GND))) # (!CT1(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((CT1(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X26_Y7_N20
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (CT1(5) & (!\Add0~9\)) # (!CT1(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!CT1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X26_Y7_N21
\CT1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(5));

-- Location: LCCOMB_X26_Y7_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (CT1(7) & (!\Add0~13\)) # (!CT1(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!CT1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X26_Y7_N25
\CT1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(7));

-- Location: LCCOMB_X26_Y7_N28
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (CT1(9) & (!\Add0~17\)) # (!CT1(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!CT1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X26_Y7_N0
\CT1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~2_combout\ = (\Add0~18_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Equal0~7_combout\,
	combout => \CT1~2_combout\);

-- Location: FF_X26_Y7_N1
\CT1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(9));

-- Location: LCCOMB_X26_Y7_N30
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (CT1(10) & (\Add0~19\ $ (GND))) # (!CT1(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((CT1(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X26_Y6_N0
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (CT1(11) & (!\Add0~21\)) # (!CT1(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!CT1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X26_Y6_N1
\CT1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(11));

-- Location: LCCOMB_X26_Y6_N2
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (CT1(12) & (\Add0~23\ $ (GND))) # (!CT1(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((CT1(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X26_Y6_N3
\CT1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(12));

-- Location: LCCOMB_X26_Y6_N4
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (CT1(13) & (!\Add0~25\)) # (!CT1(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!CT1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X26_Y6_N5
\CT1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(13));

-- Location: LCCOMB_X26_Y6_N30
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (CT1(14) & (CT1(15) & (!CT1(13) & !CT1(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(14),
	datab => CT1(15),
	datac => CT1(13),
	datad => CT1(12),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X27_Y7_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!CT1(1) & !CT1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(1),
	datad => CT1(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y7_N6
\CT1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~5_combout\ = (\Add0~8_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Equal0~7_combout\,
	combout => \CT1~5_combout\);

-- Location: FF_X26_Y7_N7
\CT1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(4));

-- Location: LCCOMB_X27_Y7_N20
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!CT1(7) & (CT1(4) & (CT1(6) & !CT1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(7),
	datab => CT1(4),
	datac => CT1(6),
	datad => CT1(5),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X27_Y7_N22
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!CT1(3) & (!CT1(2) & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(3),
	datab => CT1(2),
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X27_Y7_N30
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~4_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X26_Y6_N6
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (CT1(14) & (\Add0~27\ $ (GND))) # (!CT1(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((CT1(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X26_Y6_N8
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (CT1(15) & (!\Add0~29\)) # (!CT1(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!CT1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X26_Y6_N28
\CT1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~0_combout\ = (!\Equal0~7_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~30_combout\,
	combout => \CT1~0_combout\);

-- Location: FF_X26_Y6_N29
\CT1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(15));

-- Location: LCCOMB_X26_Y6_N10
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (CT1(16) & (\Add0~31\ $ (GND))) # (!CT1(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((CT1(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X26_Y6_N11
\CT1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(16));

-- Location: LCCOMB_X26_Y6_N12
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (CT1(17) & (!\Add0~33\)) # (!CT1(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!CT1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X26_Y6_N13
\CT1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(17));

-- Location: LCCOMB_X26_Y6_N14
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (CT1(18) & (\Add0~35\ $ (GND))) # (!CT1(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((CT1(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X26_Y6_N16
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (CT1(19) & (!\Add0~37\)) # (!CT1(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!CT1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X26_Y6_N17
\CT1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(19));

-- Location: LCCOMB_X26_Y6_N18
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (CT1(20) & (\Add0~39\ $ (GND))) # (!CT1(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((CT1(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X26_Y6_N19
\CT1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(20));

-- Location: LCCOMB_X26_Y6_N20
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (CT1(21) & (!\Add0~41\)) # (!CT1(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!CT1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X26_Y6_N21
\CT1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(21));

-- Location: LCCOMB_X26_Y6_N22
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = CT1(22) $ (!\Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: FF_X26_Y6_N23
\CT1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(22));

-- Location: FF_X26_Y6_N15
\CT1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(18));

-- Location: LCCOMB_X26_Y6_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!CT1(16) & (!CT1(19) & (!CT1(18) & !CT1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(16),
	datab => CT1(19),
	datac => CT1(18),
	datad => CT1(17),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y7_N12
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!CT1(20) & (!CT1(21) & (!CT1(22) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT1(20),
	datab => CT1(21),
	datac => CT1(22),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y4_N28
\Mux51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Sensor[4]~input_o\ & (\Sensor[6]~input_o\ & (\Sensor[7]~input_o\ & \Sensor[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\BT3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT3,
	o => \BT3~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\BT2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT2,
	o => \BT2~input_o\);

-- Location: LCCOMB_X23_Y4_N6
\Fg[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- Fg(0) = (\BT3~input_o\ & ((Fg(0)) # (!\BT2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BT3~input_o\,
	datac => \BT2~input_o\,
	datad => Fg(0),
	combout => Fg(0));

-- Location: LCCOMB_X20_Y6_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Sensor[2]~input_o\ & (\Sensor[3]~input_o\)) # (!\Sensor[2]~input_o\ & ((\Sensor[1]~input_o\ & ((\Sensor[0]~input_o\))) # (!\Sensor[1]~input_o\ & (\Sensor[3]~input_o\ & !\Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X20_Y6_N22
\ConL[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[15]~0_combout\ = (Fg(0) & ((!\Mux0~0_combout\) # (!\Mux51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux51~0_combout\,
	datac => Fg(0),
	datad => \Mux0~0_combout\,
	combout => \ConL[15]~0_combout\);

-- Location: LCCOMB_X26_Y6_N26
\CT1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT1~1_combout\ = (!\Equal0~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~28_combout\,
	combout => \CT1~1_combout\);

-- Location: FF_X26_Y6_N27
\CT1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \CT1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(14));

-- Location: LCCOMB_X22_Y5_N18
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Sensor[5]~input_o\ & (\Sensor[6]~input_o\ & ((!\Sensor[3]~input_o\) # (!\Sensor[4]~input_o\)))) # (!\Sensor[5]~input_o\ & (\Sensor[4]~input_o\ & (\Sensor[3]~input_o\ & !\Sensor[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[5]~input_o\,
	datad => \Sensor[6]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X22_Y5_N20
\ConL[12]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[12]~9_combout\ = (\Sensor[7]~input_o\ & (\Sensor[1]~input_o\ & (\Sensor[2]~input_o\ & \Sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \ConL[12]~9_combout\);

-- Location: LCCOMB_X22_Y5_N0
\ConL[12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[12]~10_combout\ = (\ConL[12]~9_combout\ & ((Fg(0) & ((\Mux3~0_combout\))) # (!Fg(0) & (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~0_combout\,
	datac => Fg(0),
	datad => \ConL[12]~9_combout\,
	combout => \ConL[12]~10_combout\);

-- Location: LCCOMB_X20_Y4_N24
\Mux29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & (Fg(0) & \Sensor[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datac => Fg(0),
	datad => \Sensor[4]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X20_Y4_N22
\Mux29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Sensor[3]~input_o\ & ((\Sensor[5]~input_o\ & (!\Sensor[4]~input_o\)) # (!\Sensor[5]~input_o\ & ((Fg(0)))))) # (!\Sensor[3]~input_o\ & (((\Sensor[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => Fg(0),
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X20_Y4_N0
\Mux29~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Sensor[6]~input_o\ & (\Mux29~2_combout\ & \Sensor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[6]~input_o\,
	datac => \Mux29~2_combout\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X20_Y4_N10
\Mux29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux51~2_combout\ & (\Sensor[7]~input_o\ & ((\Mux29~1_combout\) # (\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~2_combout\,
	datab => \Mux29~1_combout\,
	datac => \Sensor[7]~input_o\,
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: FF_X26_Y7_N31
\CT1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(10));

-- Location: LCCOMB_X20_Y6_N4
\ConL[4]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[4]~33_combout\ = (\ConL[4]~32_combout\ & (\Mux51~0_combout\ & (\Sensor[1]~input_o\ $ (Fg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[4]~32_combout\,
	datab => \Mux51~0_combout\,
	datac => \Sensor[1]~input_o\,
	datad => Fg(0),
	combout => \ConL[4]~33_combout\);

-- Location: LCCOMB_X19_Y4_N16
\Mux30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Sensor[2]~input_o\ & \Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X19_Y4_N28
\Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ((!\Sensor[2]~input_o\ & ((!\Sensor[0]~input_o\) # (!Fg(0))))) # (!\Sensor[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => Fg(0),
	datad => \Sensor[0]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X19_Y4_N14
\Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (((\Sensor[2]~input_o\ & Fg(0))) # (!\Sensor[5]~input_o\)) # (!\Sensor[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => Fg(0),
	datad => \Sensor[5]~input_o\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X19_Y4_N8
\Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux37~0_combout\) # ((!\Sensor[3]~input_o\ & ((\Mux37~1_combout\) # (!\Sensor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Mux37~0_combout\,
	datac => \Mux37~1_combout\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Sensor[4]~input_o\ & (\Sensor[6]~input_o\ & \Sensor[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datac => \Sensor[6]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X19_Y4_N2
\Mux37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (\Mux37~4_combout\) # ((\Mux37~2_combout\) # ((!\Mux30~3_combout\ & !\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~4_combout\,
	datab => \Mux30~3_combout\,
	datac => \Mux37~2_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux37~5_combout\);

-- Location: FF_X26_Y7_N13
\CT1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Con~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT1(1));

-- Location: LCCOMB_X22_Y6_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\ConL[0]~41_combout\ & !CT1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[0]~41_combout\,
	datab => CT1(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y6_N2
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\ConL[1]~40_combout\ & (CT1(1) & !\LessThan1~1_cout\)) # (!\ConL[1]~40_combout\ & ((CT1(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[1]~40_combout\,
	datab => CT1(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y6_N4
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\ConL[2]~36_combout\ & ((!\LessThan1~3_cout\) # (!CT1(2)))) # (!\ConL[2]~36_combout\ & (!CT1(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[2]~36_combout\,
	datab => CT1(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y6_N6
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((CT1(3) & ((!\LessThan1~5_cout\) # (!\Mux37~5_combout\))) # (!CT1(3) & (!\Mux37~5_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(3),
	datab => \Mux37~5_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y6_N8
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((CT1(4) & (\ConL[4]~33_combout\ & !\LessThan1~7_cout\)) # (!CT1(4) & ((\ConL[4]~33_combout\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(4),
	datab => \ConL[4]~33_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y6_N10
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\ConL[5]~31_combout\ & (CT1(5) & !\LessThan1~9_cout\)) # (!\ConL[5]~31_combout\ & ((CT1(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[5]~31_combout\,
	datab => CT1(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y6_N12
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\ConL[6]~24_combout\ & ((!\LessThan1~11_cout\) # (!CT1(6)))) # (!\ConL[6]~24_combout\ & (!CT1(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[6]~24_combout\,
	datab => CT1(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y6_N14
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\ConL[7]~17_combout\ & (CT1(7) & !\LessThan1~13_cout\)) # (!\ConL[7]~17_combout\ & ((CT1(7)) # (!\LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[7]~17_combout\,
	datab => CT1(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X22_Y6_N16
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\Mux32~3_combout\ & ((!\LessThan1~15_cout\) # (!CT1(8)))) # (!\Mux32~3_combout\ & (!CT1(8) & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~3_combout\,
	datab => CT1(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X22_Y6_N18
\LessThan1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\Mux31~6_combout\ & (CT1(9) & !\LessThan1~17_cout\)) # (!\Mux31~6_combout\ & ((CT1(9)) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~6_combout\,
	datab => CT1(9),
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X22_Y6_N20
\LessThan1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\Mux30~6_combout\ & ((!\LessThan1~19_cout\) # (!CT1(10)))) # (!\Mux30~6_combout\ & (!CT1(10) & !\LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => CT1(10),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X22_Y6_N22
\LessThan1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((CT1(11) & ((!\LessThan1~21_cout\) # (!\Mux29~4_combout\))) # (!CT1(11) & (!\Mux29~4_combout\ & !\LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(11),
	datab => \Mux29~4_combout\,
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X22_Y6_N24
\LessThan1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((CT1(12) & (\ConL[12]~10_combout\ & !\LessThan1~23_cout\)) # (!CT1(12) & ((\ConL[12]~10_combout\) # (!\LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(12),
	datab => \ConL[12]~10_combout\,
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X22_Y6_N26
\LessThan1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\ConL[13]~8_combout\ & (CT1(13) & !\LessThan1~25_cout\)) # (!\ConL[13]~8_combout\ & ((CT1(13)) # (!\LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[13]~8_combout\,
	datab => CT1(13),
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X22_Y6_N28
\LessThan1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\ConL[14]~2_combout\ & ((!\LessThan1~27_cout\) # (!CT1(14)))) # (!\ConL[14]~2_combout\ & (!CT1(14) & !\LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConL[14]~2_combout\,
	datab => CT1(14),
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X22_Y6_N30
\LessThan1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~30_combout\ = (CT1(15) & (\LessThan1~29_cout\ & \ConL[15]~0_combout\)) # (!CT1(15) & ((\LessThan1~29_cout\) # (\ConL[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(15),
	datad => \ConL[15]~0_combout\,
	cin => \LessThan1~29_cout\,
	combout => \LessThan1~30_combout\);

-- Location: LCCOMB_X27_Y7_N14
\LessThan1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~32_combout\ = (\Equal0~1_combout\ & \LessThan1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datad => \LessThan1~30_combout\,
	combout => \LessThan1~32_combout\);

-- Location: LCCOMB_X20_Y4_N18
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Sensor[5]~input_o\ & (\Sensor[4]~input_o\)) # (!\Sensor[5]~input_o\ & (\Sensor[7]~input_o\ & ((\Sensor[4]~input_o\) # (\Sensor[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X20_Y6_N12
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Sensor[3]~input_o\ & (\Sensor[2]~input_o\ & (\Sensor[1]~input_o\ & \Sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[2]~input_o\,
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X20_Y6_N18
\ConR[15]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[15]~5_combout\ = (Fg(0) & ((!\Mux1~2_combout\) # (!\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => Fg(0),
	datad => \Mux1~2_combout\,
	combout => \ConR[15]~5_combout\);

-- Location: LCCOMB_X21_Y5_N20
\Mux39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Sensor[4]~input_o\ & (\Sensor[1]~input_o\ $ (((\Sensor[3]~input_o\ & \Sensor[2]~input_o\))))) # (!\Sensor[4]~input_o\ & (((\Sensor[2]~input_o\ & \Sensor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X23_Y4_N0
\ConL[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[6]~12_combout\ = (\Sensor[7]~input_o\ & \Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[7]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \ConL[6]~12_combout\);

-- Location: LCCOMB_X21_Y5_N26
\Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\Mux29~5_combout\ & (\Mux39~3_combout\ & (Fg(0) & \ConL[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~5_combout\,
	datab => \Mux39~3_combout\,
	datac => Fg(0),
	datad => \ConL[6]~12_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X21_Y5_N2
\Mux51~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux15~0_combout\ & (\Sensor[3]~input_o\ & \Sensor[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[7]~input_o\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X21_Y5_N16
\Mux39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (!Fg(0) & ((\ConR[0]~10_combout\) # ((!\Mux51~3_combout\ & !\Sensor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[0]~10_combout\,
	datab => \Mux51~3_combout\,
	datac => Fg(0),
	datad => \Sensor[1]~input_o\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X21_Y5_N24
\Mux39~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (\Mux39~2_combout\) # ((\Mux39~4_combout\) # (\Mux39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~2_combout\,
	datac => \Mux39~4_combout\,
	datad => \Mux39~1_combout\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X21_Y4_N24
\Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux40~1_combout\ & (\Sensor[3]~input_o\ & !\Sensor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datac => \Sensor[3]~input_o\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X24_Y4_N0
\Mux51~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Sensor[1]~input_o\ & \Sensor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sensor[1]~input_o\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X21_Y4_N6
\Mux40~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Sensor[4]~input_o\ & ((\Sensor[2]~input_o\ & (!\Sensor[3]~input_o\)) # (!\Sensor[2]~input_o\ & ((!Fg(0)))))) # (!\Sensor[4]~input_o\ & (((\Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => Fg(0),
	datad => \Sensor[2]~input_o\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X21_Y4_N16
\Mux40~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (\Mux40~0_combout\ & ((\Mux40~2_combout\) # ((\Mux51~2_combout\ & \Mux40~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~0_combout\,
	datab => \Mux40~2_combout\,
	datac => \Mux51~2_combout\,
	datad => \Mux40~3_combout\,
	combout => \Mux40~4_combout\);

-- Location: LCCOMB_X21_Y4_N28
\Mux41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux41~0_combout\ & (\Sensor[0]~input_o\ & (\Sensor[5]~input_o\ & !\Sensor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~0_combout\,
	datab => \Sensor[0]~input_o\,
	datac => \Sensor[5]~input_o\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X21_Y4_N2
\Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Sensor[4]~input_o\ & ((\Sensor[2]~input_o\ & (!\Sensor[3]~input_o\)) # (!\Sensor[2]~input_o\ & ((Fg(0)))))) # (!\Sensor[4]~input_o\ & (((\Sensor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => Fg(0),
	datad => \Sensor[2]~input_o\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X21_Y4_N0
\Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux41~1_combout\) # ((\Sensor[5]~input_o\ & (\Mux51~2_combout\ & \Mux41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Mux41~1_combout\,
	datac => \Mux51~2_combout\,
	datad => \Mux41~2_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X23_Y5_N26
\ConL[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConL[5]~11_combout\ = (!\Sensor[5]~input_o\ & (\Sensor[1]~input_o\ & \Sensor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[5]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[2]~input_o\,
	combout => \ConL[5]~11_combout\);

-- Location: LCCOMB_X22_Y5_N8
\Mux39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!\Sensor[1]~input_o\ & !\Sensor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[2]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X22_Y5_N26
\Mux41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\Sensor[0]~input_o\ & (((\ConL[5]~11_combout\)))) # (!\Sensor[0]~input_o\ & (\Mux15~2_combout\ & ((\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \ConL[5]~11_combout\,
	datac => \Mux39~0_combout\,
	datad => \Sensor[0]~input_o\,
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X21_Y5_N30
\Mux41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (\Mux41~3_combout\) # ((\Sensor[3]~input_o\ & (Fg(0) & \Mux41~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Mux41~3_combout\,
	datac => Fg(0),
	datad => \Mux41~4_combout\,
	combout => \Mux41~5_combout\);

-- Location: LCCOMB_X20_Y4_N4
\Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~6_combout\ = (\Sensor[7]~input_o\ & (\Mux41~5_combout\ & \Sensor[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[7]~input_o\,
	datac => \Mux41~5_combout\,
	datad => \Sensor[6]~input_o\,
	combout => \Mux41~6_combout\);

-- Location: LCCOMB_X22_Y5_N4
\Mux29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Sensor[6]~input_o\ & \Sensor[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[6]~input_o\,
	datac => \Sensor[5]~input_o\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X22_Y5_N28
\Mux42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Sensor[4]~input_o\ & ((\Sensor[1]~input_o\ & (!\Sensor[2]~input_o\ & !\Sensor[3]~input_o\)) # (!\Sensor[1]~input_o\ & (\Sensor[2]~input_o\ & \Sensor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[1]~input_o\,
	datac => \Sensor[2]~input_o\,
	datad => \Sensor[3]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X22_Y5_N12
\Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux29~5_combout\ & ((Fg(0) & ((\Mux42~0_combout\))) # (!Fg(0) & (\Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~1_combout\,
	datab => Fg(0),
	datac => \Mux29~5_combout\,
	datad => \Mux42~0_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X24_Y4_N20
\Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Sensor[2]~input_o\ & (\Sensor[3]~input_o\ & \Sensor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[2]~input_o\,
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X23_Y4_N28
\Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\ConL[6]~12_combout\ & ((\Mux42~2_combout\) # ((\Mux42~3_combout\ & \Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datab => \Mux42~2_combout\,
	datac => \Mux28~0_combout\,
	datad => \ConL[6]~12_combout\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X20_Y4_N16
\Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Sensor[4]~input_o\ & (((\Sensor[7]~input_o\) # (\Sensor[5]~input_o\)))) # (!\Sensor[4]~input_o\ & (\Sensor[6]~input_o\ & (\Sensor[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => \Sensor[7]~input_o\,
	datad => \Sensor[5]~input_o\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X21_Y4_N18
\Mux43~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = (\Sensor[2]~input_o\ & (\Sensor[3]~input_o\ & ((!\Mux43~4_combout\)))) # (!\Sensor[2]~input_o\ & (((!\Sensor[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[3]~input_o\,
	datab => \Sensor[4]~input_o\,
	datac => \Mux43~4_combout\,
	datad => \Sensor[2]~input_o\,
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Sensor[3]~input_o\ & \Sensor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor[3]~input_o\,
	datac => \Sensor[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X21_Y4_N20
\Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~6_combout\ = (\Mux43~5_combout\) # (((!\Mux40~0_combout\ & !\Mux1~5_combout\)) # (!\Sensor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~0_combout\,
	datab => \Mux43~5_combout\,
	datac => \Mux1~5_combout\,
	datad => \Sensor[1]~input_o\,
	combout => \Mux43~6_combout\);

-- Location: LCCOMB_X21_Y4_N14
\Mux43~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~7_combout\ = (\Mux43~3_combout\) # ((\Mux43~6_combout\ & (Fg(0) & \Sensor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~3_combout\,
	datab => \Mux43~6_combout\,
	datac => Fg(0),
	datad => \Sensor[0]~input_o\,
	combout => \Mux43~7_combout\);

-- Location: LCCOMB_X20_Y4_N2
\Mux42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Sensor[6]~input_o\ & (((!Fg(0) & !\Sensor[5]~input_o\)))) # (!\Sensor[6]~input_o\ & (\Sensor[4]~input_o\ & (Fg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor[4]~input_o\,
	datab => \Sensor[6]~input_o\,
	datac => Fg(0),
	datad => \Sensor[5]~input_o\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X23_Y4_N4
\ConR[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConR[4]~34_combout\ = (\Mux28~0_combout\ & (\Sensor[0]~input_o\ & (\Mux42~3_combout\ & \Sensor[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Sensor[0]~input_o\,
	datac => \Mux42~3_combout\,
	datad => \Sensor[7]~input_o\,
	combout => \ConR[4]~34_combout\);

-- Location: LCCOMB_X23_Y6_N0
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\ConR[0]~11_combout\ & !CT1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[0]~11_combout\,
	datab => CT1(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y6_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\ConR[1]~33_combout\ & (CT1(1) & !\LessThan0~1_cout\)) # (!\ConR[1]~33_combout\ & ((CT1(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[1]~33_combout\,
	datab => CT1(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y6_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\ConR[2]~30_combout\ & ((!\LessThan0~3_cout\) # (!CT1(2)))) # (!\ConR[2]~30_combout\ & (!CT1(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[2]~30_combout\,
	datab => CT1(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y6_N6
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Mux49~5_combout\ & (CT1(3) & !\LessThan0~5_cout\)) # (!\Mux49~5_combout\ & ((CT1(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~5_combout\,
	datab => CT1(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y6_N8
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((CT1(4) & (\ConR[4]~34_combout\ & !\LessThan0~7_cout\)) # (!CT1(4) & ((\ConR[4]~34_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(4),
	datab => \ConR[4]~34_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y6_N10
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\ConR[5]~27_combout\ & (CT1(5) & !\LessThan0~9_cout\)) # (!\ConR[5]~27_combout\ & ((CT1(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[5]~27_combout\,
	datab => CT1(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y6_N12
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\ConR[6]~22_combout\ & ((!\LessThan0~11_cout\) # (!CT1(6)))) # (!\ConR[6]~22_combout\ & (!CT1(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[6]~22_combout\,
	datab => CT1(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y6_N14
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\ConR[7]~14_combout\ & (CT1(7) & !\LessThan0~13_cout\)) # (!\ConR[7]~14_combout\ & ((CT1(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[7]~14_combout\,
	datab => CT1(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X23_Y6_N16
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Mux44~5_combout\ & ((!\LessThan0~15_cout\) # (!CT1(8)))) # (!\Mux44~5_combout\ & (!CT1(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~5_combout\,
	datab => CT1(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X23_Y6_N18
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((CT1(9) & ((!\LessThan0~17_cout\) # (!\Mux43~7_combout\))) # (!CT1(9) & (!\Mux43~7_combout\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(9),
	datab => \Mux43~7_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X23_Y6_N20
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((CT1(10) & (\Mux42~4_combout\ & !\LessThan0~19_cout\)) # (!CT1(10) & ((\Mux42~4_combout\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(10),
	datab => \Mux42~4_combout\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X23_Y6_N22
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((CT1(11) & ((!\LessThan0~21_cout\) # (!\Mux41~6_combout\))) # (!CT1(11) & (!\Mux41~6_combout\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(11),
	datab => \Mux41~6_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X23_Y6_N24
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((CT1(12) & (\Mux40~4_combout\ & !\LessThan0~23_cout\)) # (!CT1(12) & ((\Mux40~4_combout\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(12),
	datab => \Mux40~4_combout\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X23_Y6_N26
\LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((CT1(13) & ((!\LessThan0~25_cout\) # (!\Mux39~5_combout\))) # (!CT1(13) & (!\Mux39~5_combout\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT1(13),
	datab => \Mux39~5_combout\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X23_Y6_N28
\LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\ConR[14]~12_combout\ & ((!\LessThan0~27_cout\) # (!CT1(14)))) # (!\ConR[14]~12_combout\ & (!CT1(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ConR[14]~12_combout\,
	datab => CT1(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X23_Y6_N30
\LessThan0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (CT1(15) & (\LessThan0~29_cout\ & \ConR[15]~5_combout\)) # (!CT1(15) & ((\LessThan0~29_cout\) # (\ConR[15]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT1(15),
	datad => \ConR[15]~5_combout\,
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

-- Location: LCCOMB_X27_Y7_N16
\LessThan0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = (\Equal0~1_combout\ & \LessThan0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datad => \LessThan0~30_combout\,
	combout => \LessThan0~32_combout\);

-- Location: LCCOMB_X27_Y7_N4
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\LessThan1~30_combout\) # ((!\Equal0~1_combout\) # (!\LessThan0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~30_combout\,
	datab => \LessThan0~30_combout\,
	datad => \Equal0~1_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X27_Y7_N2
\Sg0[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sg0[0]$latch~combout\ = (!\LessThan1~32_combout\ & ((\Sg0[0]$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~32_combout\,
	datac => \comb~0_combout\,
	datad => \Sg0[0]$latch~combout\,
	combout => \Sg0[0]$latch~combout\);

-- Location: LCCOMB_X27_Y7_N28
\Sg0[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sg0[1]$latch~combout\ = (!\LessThan1~32_combout\ & ((\Sg0[1]$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~32_combout\,
	datac => \comb~0_combout\,
	datad => \Sg0[1]$latch~combout\,
	combout => \Sg0[1]$latch~combout\);

-- Location: LCCOMB_X27_Y7_N18
\Sg0[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sg0[2]$latch~combout\ = (!\LessThan1~32_combout\ & ((\Sg0[2]$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~32_combout\,
	datac => \comb~0_combout\,
	datad => \Sg0[2]$latch~combout\,
	combout => \Sg0[2]$latch~combout\);

-- Location: LCCOMB_X27_Y7_N24
\Sg0[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sg0[3]$latch~combout\ = (\comb~0_combout\ & ((\LessThan1~32_combout\) # (\Sg0[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~32_combout\,
	datac => \comb~0_combout\,
	datad => \Sg0[3]$latch~combout\,
	combout => \Sg0[3]$latch~combout\);

-- Location: LCCOMB_X27_Y7_N6
\Sg0[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sg0[6]$latch~combout\ = (!\LessThan1~32_combout\ & ((\Sg0[6]$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~32_combout\,
	datac => \comb~0_combout\,
	datad => \Sg0[6]$latch~combout\,
	combout => \Sg0[6]$latch~combout\);

-- Location: LCCOMB_X30_Y25_N24
\Velocity_int3[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int3[0]~5_combout\ = !Velocity_int3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Velocity_int3(0),
	combout => \Velocity_int3[0]~5_combout\);

-- Location: IOIBUF_X0_Y14_N1
\BT1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT1,
	o => \BT1~input_o\);

-- Location: CLKCTRL_G4
\BT1~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BT1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BT1~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y25_N22
\Velocity_int1[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int1[0]~4_combout\ = !Velocity_int1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Velocity_int1(0),
	combout => \Velocity_int1[0]~4_combout\);

-- Location: LCCOMB_X20_Y6_N6
\ConST[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ConST[0]~0_combout\ = (\BT1~input_o\ & (((!\Sensor[3]~input_o\) # (!\Mux51~0_combout\)) # (!\Mux51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~1_combout\,
	datab => \Mux51~0_combout\,
	datac => \Sensor[3]~input_o\,
	datad => \BT1~input_o\,
	combout => \ConST[0]~0_combout\);

-- Location: LCCOMB_X32_Y26_N14
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (CT(2) & (\Add5~3\ $ (GND))) # (!CT(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((CT(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X32_Y26_N16
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (CT(3) & (!\Add5~5\)) # (!CT(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!CT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X32_Y26_N17
\CT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(3));

-- Location: LCCOMB_X32_Y26_N18
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (CT(4) & (\Add5~7\ $ (GND))) # (!CT(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((CT(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X32_Y26_N19
\CT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~8_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(4));

-- Location: LCCOMB_X32_Y26_N20
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (CT(5) & (!\Add5~9\)) # (!CT(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!CT(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X32_Y26_N22
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (CT(6) & (\Add5~11\ $ (GND))) # (!CT(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((CT(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X32_Y26_N23
\CT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(6));

-- Location: LCCOMB_X32_Y26_N24
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (CT(7) & (!\Add5~13\)) # (!CT(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!CT(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X32_Y26_N28
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (CT(9) & (!\Add5~17\)) # (!CT(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!CT(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: FF_X32_Y26_N29
\CT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~18_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(9));

-- Location: LCCOMB_X32_Y26_N30
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (CT(10) & (\Add5~19\ $ (GND))) # (!CT(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((CT(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: FF_X32_Y26_N31
\CT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~20_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(10));

-- Location: LCCOMB_X32_Y25_N2
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (CT(12) & (\Add5~23\ $ (GND))) # (!CT(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((CT(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: FF_X32_Y25_N3
\CT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~24_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(12));

-- Location: LCCOMB_X32_Y25_N6
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (CT(14) & (\Add5~27\ $ (GND))) # (!CT(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((CT(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: FF_X32_Y25_N7
\CT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~28_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(14));

-- Location: LCCOMB_X32_Y25_N8
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (CT(15) & (!\Add5~29\)) # (!CT(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!CT(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X32_Y25_N12
\Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (CT(17) & (!\Add5~33\)) # (!CT(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!CT(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X32_Y25_N26
\CT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~1_combout\ = (\Add5~34_combout\ & (((!\Equal2~5_combout\) # (!\Equal2~6_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~5_combout\,
	datad => \Add5~34_combout\,
	combout => \CT~1_combout\);

-- Location: FF_X32_Y25_N27
\CT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~1_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(17));

-- Location: LCCOMB_X31_Y25_N26
\CT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~3_combout\ = (\Add5~30_combout\ & (((!\Equal2~6_combout\) # (!\Equal2~5_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~5_combout\,
	datac => \Add5~30_combout\,
	datad => \Equal2~6_combout\,
	combout => \CT~3_combout\);

-- Location: FF_X31_Y25_N27
\CT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~3_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(15));

-- Location: LCCOMB_X32_Y25_N14
\Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (CT(18) & (\Add5~35\ $ (GND))) # (!CT(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((CT(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X32_Y25_N28
\CT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~0_combout\ = (\Add5~36_combout\ & (((!\Equal2~4_combout\) # (!\Equal2~6_combout\)) # (!\Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~6_combout\,
	datac => \Add5~36_combout\,
	datad => \Equal2~4_combout\,
	combout => \CT~0_combout\);

-- Location: FF_X32_Y25_N29
\CT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~0_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(18));

-- Location: LCCOMB_X31_Y25_N8
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (CT(16) & (CT(17) & (CT(15) & CT(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT(16),
	datab => CT(17),
	datac => CT(15),
	datad => CT(18),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X32_Y25_N16
\Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (CT(19) & (!\Add5~37\)) # (!CT(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!CT(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: FF_X32_Y25_N17
\CT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~38_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(19));

-- Location: LCCOMB_X32_Y25_N18
\Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (CT(20) & (\Add5~39\ $ (GND))) # (!CT(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((CT(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: FF_X32_Y25_N19
\CT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~40_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(20));

-- Location: LCCOMB_X32_Y25_N20
\Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (CT(21) & (!\Add5~41\)) # (!CT(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!CT(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CT(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: FF_X32_Y25_N21
\CT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~42_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(21));

-- Location: LCCOMB_X32_Y25_N22
\Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = CT(22) $ (!\Add5~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(22),
	cin => \Add5~43\,
	combout => \Add5~44_combout\);

-- Location: FF_X32_Y25_N23
\CT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~44_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(22));

-- Location: LCCOMB_X31_Y25_N30
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!CT(21) & (!CT(19) & (!CT(20) & !CT(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT(21),
	datab => CT(19),
	datac => CT(20),
	datad => CT(22),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y26_N8
\CT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~5_combout\ = (\Add5~16_combout\ & (((!\Equal2~6_combout\) # (!\Equal2~4_combout\)) # (!\Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~6_combout\,
	combout => \CT~5_combout\);

-- Location: FF_X32_Y26_N9
\CT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~5_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(8));

-- Location: FF_X32_Y26_N25
\CT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~14_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(7));

-- Location: LCCOMB_X32_Y26_N6
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!CT(9) & (CT(8) & (!CT(10) & !CT(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT(9),
	datab => CT(8),
	datac => CT(10),
	datad => CT(7),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X31_Y25_N22
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~1_combout\ & (\Equal2~0_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X32_Y26_N4
\CT~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~6_combout\ = (\Add5~10_combout\ & (((!\Equal2~6_combout\) # (!\Equal2~4_combout\)) # (!\Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Add5~10_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~6_combout\,
	combout => \CT~6_combout\);

-- Location: FF_X32_Y26_N5
\CT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~6_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(5));

-- Location: LCCOMB_X32_Y26_N2
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!CT(6) & (!CT(4) & (CT(5) & !CT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CT(6),
	datab => CT(4),
	datac => CT(5),
	datad => CT(3),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X32_Y26_N0
\CT~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CT~7_combout\ = (\Add5~0_combout\ & (((!\Equal2~6_combout\) # (!\Equal2~4_combout\)) # (!\Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~6_combout\,
	combout => \CT~7_combout\);

-- Location: FF_X32_Y26_N1
\CT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \CT~7_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(0));

-- Location: LCCOMB_X32_Y26_N12
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (CT(1) & (!\Add5~1\)) # (!CT(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!CT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CT(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: FF_X32_Y26_N15
\CT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~4_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(2));

-- Location: FF_X32_Y26_N13
\CT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Add5~2_combout\,
	ena => \ConST[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CT(1));

-- Location: LCCOMB_X31_Y25_N20
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!CT(2) & (!CT(1) & !CT(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CT(2),
	datac => CT(1),
	datad => CT(0),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X28_Y25_N18
\Velocity_int1[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int1[3]~1_combout\ = (\Equal2~5_combout\ & (\ConST[0]~0_combout\ & (\Equal2~6_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \ConST[0]~0_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~4_combout\,
	combout => \Velocity_int1[3]~1_combout\);

-- Location: FF_X28_Y25_N23
\Velocity_int1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int1[0]~4_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int1(0));

-- Location: LCCOMB_X28_Y25_N16
\Velocity_int1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int1[2]~2_combout\ = Velocity_int1(2) $ (((Velocity_int1(1) & (Velocity_int1(0) & \Velocity_int1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int1(1),
	datab => Velocity_int1(0),
	datac => Velocity_int1(2),
	datad => \Velocity_int1[3]~1_combout\,
	combout => \Velocity_int1[2]~2_combout\);

-- Location: FF_X28_Y25_N17
\Velocity_int1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int1[2]~2_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int1(2));

-- Location: LCCOMB_X28_Y25_N10
\Velocity_int1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int1~3_combout\ = (Velocity_int1(0) & (!Velocity_int1(1) & ((Velocity_int1(2)) # (!Velocity_int1(3))))) # (!Velocity_int1(0) & (((Velocity_int1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int1(0),
	datab => Velocity_int1(2),
	datac => Velocity_int1(1),
	datad => Velocity_int1(3),
	combout => \Velocity_int1~3_combout\);

-- Location: FF_X28_Y25_N11
\Velocity_int1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int1~3_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int1(1));

-- Location: LCCOMB_X28_Y25_N0
\Velocity_int1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int1~0_combout\ = (Velocity_int1(0) & ((Velocity_int1(2) & (Velocity_int1(3) $ (Velocity_int1(1)))) # (!Velocity_int1(2) & (Velocity_int1(3) & Velocity_int1(1))))) # (!Velocity_int1(0) & (((Velocity_int1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int1(0),
	datab => Velocity_int1(2),
	datac => Velocity_int1(3),
	datad => Velocity_int1(1),
	combout => \Velocity_int1~0_combout\);

-- Location: FF_X28_Y25_N1
\Velocity_int1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int1~0_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int1(3));

-- Location: LCCOMB_X28_Y25_N24
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!Velocity_int1(1) & (!Velocity_int1(2) & (Velocity_int1(0) & Velocity_int1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int1(1),
	datab => Velocity_int1(2),
	datac => Velocity_int1(0),
	datad => Velocity_int1(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y25_N10
\Velocity_int3[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int3[3]~0_combout\ = (\Equal2~6_combout\ & (\ConST[0]~0_combout\ & \Equal2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~6_combout\,
	datac => \ConST[0]~0_combout\,
	datad => \Equal2~5_combout\,
	combout => \Velocity_int3[3]~0_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Velocity_int3[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int3[3]~1_combout\ = (\Equal4~0_combout\ & (\Equal3~0_combout\ & (\Equal2~4_combout\ & \Velocity_int3[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal2~4_combout\,
	datad => \Velocity_int3[3]~0_combout\,
	combout => \Velocity_int3[3]~1_combout\);

-- Location: FF_X30_Y25_N25
\Velocity_int3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int3[0]~5_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int3(0));

-- Location: LCCOMB_X30_Y25_N18
\Velocity_int3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int3~2_combout\ = (Velocity_int3(0) & (!Velocity_int3(1) & ((Velocity_int3(2)) # (!Velocity_int3(3))))) # (!Velocity_int3(0) & (((Velocity_int3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(3),
	datab => Velocity_int3(0),
	datac => Velocity_int3(1),
	datad => Velocity_int3(2),
	combout => \Velocity_int3~2_combout\);

-- Location: FF_X30_Y25_N19
\Velocity_int3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int3~2_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int3(1));

-- Location: LCCOMB_X30_Y25_N12
\Velocity_int3[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int3[2]~3_combout\ = Velocity_int3(2) $ (((Velocity_int3(0) & (Velocity_int3(1) & \Velocity_int3[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(0),
	datab => Velocity_int3(1),
	datac => Velocity_int3(2),
	datad => \Velocity_int3[3]~1_combout\,
	combout => \Velocity_int3[2]~3_combout\);

-- Location: FF_X30_Y25_N13
\Velocity_int3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int3[2]~3_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int3(2));

-- Location: LCCOMB_X30_Y25_N26
\Velocity_int3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int3~4_combout\ = (Velocity_int3(2) & (Velocity_int3(3) $ (((Velocity_int3(0) & Velocity_int3(1)))))) # (!Velocity_int3(2) & (Velocity_int3(3) & ((Velocity_int3(1)) # (!Velocity_int3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datac => Velocity_int3(3),
	datad => Velocity_int3(1),
	combout => \Velocity_int3~4_combout\);

-- Location: FF_X30_Y25_N27
\Velocity_int3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int3~4_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int3(3));

-- Location: LCCOMB_X30_Y25_N20
\U3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux6~0_combout\ = (!Velocity_int3(3) & (!Velocity_int3(1) & (Velocity_int3(2) $ (Velocity_int3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datac => Velocity_int3(3),
	datad => Velocity_int3(1),
	combout => \U3|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y25_N2
\U3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux5~0_combout\ = (Velocity_int3(2) & (Velocity_int3(0) $ (Velocity_int3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datad => Velocity_int3(1),
	combout => \U3|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y25_N4
\U3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux4~0_combout\ = (!Velocity_int3(2) & (!Velocity_int3(0) & Velocity_int3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datad => Velocity_int3(1),
	combout => \U3|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\U3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = (Velocity_int3(2) & (Velocity_int3(0) $ (!Velocity_int3(1)))) # (!Velocity_int3(2) & (Velocity_int3(0) & !Velocity_int3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datad => Velocity_int3(1),
	combout => \U3|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\U3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = (Velocity_int3(0)) # ((Velocity_int3(2) & !Velocity_int3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datad => Velocity_int3(1),
	combout => \U3|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y25_N10
\U3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = (!Velocity_int3(2) & (!Velocity_int3(3) & ((Velocity_int3(0)) # (Velocity_int3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datac => Velocity_int3(3),
	datad => Velocity_int3(1),
	combout => \U3|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\U3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (Velocity_int3(3)) # ((Velocity_int3(2) & ((!Velocity_int3(1)) # (!Velocity_int3(0)))) # (!Velocity_int3(2) & ((Velocity_int3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datac => Velocity_int3(3),
	datad => Velocity_int3(1),
	combout => \U3|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y25_N16
\Velocity_int4[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4[0]~6_combout\ = !Velocity_int4(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Velocity_int4(0),
	combout => \Velocity_int4[0]~6_combout\);

-- Location: LCCOMB_X29_Y25_N10
\Velocity_int2[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int2[0]~5_combout\ = !Velocity_int2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Velocity_int2(0),
	combout => \Velocity_int2[0]~5_combout\);

-- Location: LCCOMB_X29_Y25_N26
\Velocity_int2[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int2[3]~1_combout\ = (\ConST[0]~0_combout\ & \Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ConST[0]~0_combout\,
	datad => \Equal2~5_combout\,
	combout => \Velocity_int2[3]~1_combout\);

-- Location: LCCOMB_X29_Y25_N24
\Velocity_int2[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int2[3]~2_combout\ = (\Equal2~6_combout\ & (\Equal3~0_combout\ & (\Velocity_int2[3]~1_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => \Equal3~0_combout\,
	datac => \Velocity_int2[3]~1_combout\,
	datad => \Equal2~4_combout\,
	combout => \Velocity_int2[3]~2_combout\);

-- Location: FF_X29_Y25_N11
\Velocity_int2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int2[0]~5_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int2(0));

-- Location: LCCOMB_X29_Y25_N28
\Velocity_int2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int2~0_combout\ = (Velocity_int2(1) & (Velocity_int2(3) $ (((Velocity_int2(2) & Velocity_int2(0)))))) # (!Velocity_int2(1) & (Velocity_int2(3) & ((Velocity_int2(2)) # (!Velocity_int2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int2(1),
	datab => Velocity_int2(2),
	datac => Velocity_int2(3),
	datad => Velocity_int2(0),
	combout => \Velocity_int2~0_combout\);

-- Location: FF_X29_Y25_N29
\Velocity_int2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int2~0_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int2(3));

-- Location: LCCOMB_X29_Y25_N22
\Velocity_int2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int2~4_combout\ = (Velocity_int2(0) & (!Velocity_int2(1) & ((Velocity_int2(2)) # (!Velocity_int2(3))))) # (!Velocity_int2(0) & (((Velocity_int2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int2(0),
	datab => Velocity_int2(2),
	datac => Velocity_int2(1),
	datad => Velocity_int2(3),
	combout => \Velocity_int2~4_combout\);

-- Location: FF_X29_Y25_N23
\Velocity_int2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int2~4_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int2(1));

-- Location: LCCOMB_X29_Y25_N16
\Velocity_int2[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int2[2]~3_combout\ = Velocity_int2(2) $ (((Velocity_int2(0) & (Velocity_int2(1) & \Velocity_int2[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int2(0),
	datab => Velocity_int2(1),
	datac => Velocity_int2(2),
	datad => \Velocity_int2[3]~2_combout\,
	combout => \Velocity_int2[2]~3_combout\);

-- Location: FF_X29_Y25_N17
\Velocity_int2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int2[2]~3_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int2(2));

-- Location: LCCOMB_X29_Y25_N12
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (Velocity_int2(0) & (!Velocity_int2(2) & (!Velocity_int2(1) & Velocity_int2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int2(0),
	datab => Velocity_int2(2),
	datac => Velocity_int2(1),
	datad => Velocity_int2(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X30_Y25_N14
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!Velocity_int3(2) & (Velocity_int3(0) & (Velocity_int3(3) & !Velocity_int3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int3(2),
	datab => Velocity_int3(0),
	datac => Velocity_int3(3),
	datad => Velocity_int3(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X33_Y25_N8
\Velocity_int4[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4[3]~0_combout\ = (\ConST[0]~0_combout\ & (\Equal2~5_combout\ & (\Equal5~0_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ConST[0]~0_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal2~6_combout\,
	combout => \Velocity_int4[3]~0_combout\);

-- Location: LCCOMB_X33_Y25_N30
\Velocity_int4[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4[3]~1_combout\ = (\Equal3~0_combout\ & (\Equal4~0_combout\ & (\Velocity_int4[3]~0_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \Velocity_int4[3]~0_combout\,
	datad => \Equal2~4_combout\,
	combout => \Velocity_int4[3]~1_combout\);

-- Location: FF_X33_Y25_N17
\Velocity_int4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int4[0]~6_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int4(0));

-- Location: LCCOMB_X33_Y25_N12
\Velocity_int4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4~3_combout\ = (Velocity_int4(1) & (Velocity_int4(0) $ ((Velocity_int4(2))))) # (!Velocity_int4(1) & (Velocity_int4(2) & ((Velocity_int4(3)) # (!Velocity_int4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(1),
	datab => Velocity_int4(0),
	datac => Velocity_int4(2),
	datad => Velocity_int4(3),
	combout => \Velocity_int4~3_combout\);

-- Location: FF_X33_Y25_N13
\Velocity_int4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int4~3_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int4(2));

-- Location: LCCOMB_X33_Y25_N26
\Velocity_int4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4~2_combout\ = (Velocity_int4(0) & (!Velocity_int4(1) & ((Velocity_int4(3)) # (!Velocity_int4(2))))) # (!Velocity_int4(0) & (((Velocity_int4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(3),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	datad => Velocity_int4(2),
	combout => \Velocity_int4~2_combout\);

-- Location: FF_X33_Y25_N27
\Velocity_int4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int4~2_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	ena => \Velocity_int4[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int4(1));

-- Location: LCCOMB_X33_Y25_N4
\Velocity_int4[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4[3]~4_combout\ = (Velocity_int4(2) & (Velocity_int4(1) & Velocity_int4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(2),
	datac => Velocity_int4(1),
	datad => Velocity_int4(0),
	combout => \Velocity_int4[3]~4_combout\);

-- Location: LCCOMB_X31_Y25_N24
\Velocity_int4[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Velocity_int4[3]~5_combout\ = Velocity_int4(3) $ (((\Equal5~0_combout\ & (\Velocity_int4[3]~4_combout\ & \Velocity_int3[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Velocity_int4[3]~4_combout\,
	datac => Velocity_int4(3),
	datad => \Velocity_int3[3]~1_combout\,
	combout => \Velocity_int4[3]~5_combout\);

-- Location: FF_X31_Y25_N25
\Velocity_int4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter_CK~inputclkctrl_outclk\,
	d => \Velocity_int4[3]~5_combout\,
	clrn => \BT1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Velocity_int4(3));

-- Location: LCCOMB_X33_Y25_N2
\U4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = (!Velocity_int4(3) & (!Velocity_int4(1) & (Velocity_int4(0) $ (Velocity_int4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(3),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	datad => Velocity_int4(2),
	combout => \U4|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y25_N20
\U4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (Velocity_int4(2) & (Velocity_int4(0) $ (Velocity_int4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(2),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y25_N22
\U4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = (!Velocity_int4(2) & (!Velocity_int4(0) & Velocity_int4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(2),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	combout => \U4|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y25_N0
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (Velocity_int4(2) & (Velocity_int4(0) $ (!Velocity_int4(1)))) # (!Velocity_int4(2) & (Velocity_int4(0) & !Velocity_int4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(2),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y25_N18
\U4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (Velocity_int4(0)) # ((Velocity_int4(2) & !Velocity_int4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(2),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y25_N24
\U4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (!Velocity_int4(3) & (!Velocity_int4(2) & ((Velocity_int4(0)) # (Velocity_int4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(3),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	datad => Velocity_int4(2),
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y25_N10
\U4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (Velocity_int4(3)) # ((Velocity_int4(1) & ((!Velocity_int4(2)) # (!Velocity_int4(0)))) # (!Velocity_int4(1) & ((Velocity_int4(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Velocity_int4(3),
	datab => Velocity_int4(0),
	datac => Velocity_int4(1),
	datad => Velocity_int4(2),
	combout => \U4|Mux0~0_combout\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_MT_L <= \MT_L~output_o\;

ww_MT_R <= \MT_R~output_o\;

ww_Sg0(0) <= \Sg0[0]~output_o\;

ww_Sg0(1) <= \Sg0[1]~output_o\;

ww_Sg0(2) <= \Sg0[2]~output_o\;

ww_Sg0(3) <= \Sg0[3]~output_o\;

ww_Sg0(4) <= \Sg0[4]~output_o\;

ww_Sg0(5) <= \Sg0[5]~output_o\;

ww_Sg0(6) <= \Sg0[6]~output_o\;

ww_Sg1(0) <= \Sg1[0]~output_o\;

ww_Sg1(1) <= \Sg1[1]~output_o\;

ww_Sg1(2) <= \Sg1[2]~output_o\;

ww_Sg1(3) <= \Sg1[3]~output_o\;

ww_Sg1(4) <= \Sg1[4]~output_o\;

ww_Sg1(5) <= \Sg1[5]~output_o\;

ww_Sg1(6) <= \Sg1[6]~output_o\;

ww_Sg2(0) <= \Sg2[0]~output_o\;

ww_Sg2(1) <= \Sg2[1]~output_o\;

ww_Sg2(2) <= \Sg2[2]~output_o\;

ww_Sg2(3) <= \Sg2[3]~output_o\;

ww_Sg2(4) <= \Sg2[4]~output_o\;

ww_Sg2(5) <= \Sg2[5]~output_o\;

ww_Sg2(6) <= \Sg2[6]~output_o\;

ww_Sg3(0) <= \Sg3[0]~output_o\;

ww_Sg3(1) <= \Sg3[1]~output_o\;

ww_Sg3(2) <= \Sg3[2]~output_o\;

ww_Sg3(3) <= \Sg3[3]~output_o\;

ww_Sg3(4) <= \Sg3[4]~output_o\;

ww_Sg3(5) <= \Sg3[5]~output_o\;

ww_Sg3(6) <= \Sg3[6]~output_o\;
END structure;


