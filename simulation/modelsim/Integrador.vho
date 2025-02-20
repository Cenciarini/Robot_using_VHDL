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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/03/2024 17:18:21"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Integrador IS
    PORT (
	CLK : IN std_logic;
	ENABLE : IN std_logic;
	RESET : IN std_logic;
	RX : IN std_logic;
	M1 : OUT std_logic;
	M2 : OUT std_logic;
	HEX : OUT std_logic_vector(7 DOWNTO 0)
	);
END Integrador;

-- Design Ports Information
-- M1	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- M2	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[2]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[3]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[4]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[5]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[6]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX[7]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RX	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Integrador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_M1 : std_logic;
SIGNAL ww_M2 : std_logic;
SIGNAL ww_HEX : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instPWM|auxCount[1]~9_combout\ : std_logic;
SIGNAL \instPWM|auxCount[5]~17_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[1]~7_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[2]~9_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[5]~15_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[6]~17_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~10_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~24_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[2]~11_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[3]~13_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[4]~15_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[1]~29_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[6]~39_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[15]~57_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[18]~63_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[22]~71_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[3]~21_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[6]~27_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[8]~31_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[3]~13_combout\ : std_logic;
SIGNAL \instDecodeComand|Add5~2_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[5]~17_combout\ : std_logic;
SIGNAL \instDecodeComand|Add5~6_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~4_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~11\ : std_logic;
SIGNAL \instDecodeComand|Add4~12_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal0~0_combout\ : std_logic;
SIGNAL \instPWM|auxCount[5]~22_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector15~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector17~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector21~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector22~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector23~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|Selector0~0_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~2_combout\ : std_logic;
SIGNAL \instDecodeComand|Add0~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Add0~3_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_PWM~1_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[0]~24_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[7]~25_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[0]~26_combout\ : std_logic;
SIGNAL \instDecodeComand|Add2~1_combout\ : std_logic;
SIGNAL \instDecodeComand|Add2~3_combout\ : std_logic;
SIGNAL \instBaudRate|Equal1~2_combout\ : std_logic;
SIGNAL \instBaudRate|Add1~0_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[1]~3_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[3]~5_combout\ : std_logic;
SIGNAL \instBaudRate|Add1~1_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[3]~8_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal0~1_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal0~2_combout\ : std_logic;
SIGNAL \instDecodeComand|state.ZVM~regout\ : std_logic;
SIGNAL \instDecodeComand|state.ZSIM~regout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~2_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~5_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZVM~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZSIM~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state~41_combout\ : std_logic;
SIGNAL \instDecodeComand|state.SIMX~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.SIMX~regout\ : std_logic;
SIGNAL \instDecodeComand|state.SIM~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.SIM~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state~43_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX_aux2[4]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|M2CountU[1]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|M1CountU[1]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX2[3]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX2[0]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX2[4]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|state.ZVM~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZSIM~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|state.SIMX~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|state.SIM~feeder_combout\ : std_logic;
SIGNAL \RX~combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[0]~13_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \ENABLE~combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[5]~26\ : std_logic;
SIGNAL \instBaudRate|auxCount[6]~28\ : std_logic;
SIGNAL \instBaudRate|auxCount[7]~29_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[3]~20_combout\ : std_logic;
SIGNAL \instBaudRate|Equal1~0_combout\ : std_logic;
SIGNAL \instBaudRate|Equal1~1_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[7]~30\ : std_logic;
SIGNAL \instBaudRate|auxCount[8]~32\ : std_logic;
SIGNAL \instBaudRate|auxCount[9]~33_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[9]~34\ : std_logic;
SIGNAL \instBaudRate|auxCount[10]~36\ : std_logic;
SIGNAL \instBaudRate|auxCount[11]~37_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[11]~38\ : std_logic;
SIGNAL \instBaudRate|auxCount[12]~39_combout\ : std_logic;
SIGNAL \instBaudRate|Equal1~3_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[1]~4_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[3]~6_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[1]~9_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[2]~7_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[0]~10_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[0]~0_combout\ : std_logic;
SIGNAL \instBaudRate|uartCounter[0]~feeder_combout\ : std_logic;
SIGNAL \instBaudRate|process_0~0_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[3]~19_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[0]~14\ : std_logic;
SIGNAL \instBaudRate|auxCount[1]~15_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[1]~16\ : std_logic;
SIGNAL \instBaudRate|auxCount[2]~17_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[2]~18\ : std_logic;
SIGNAL \instBaudRate|auxCount[3]~22\ : std_logic;
SIGNAL \instBaudRate|auxCount[4]~23_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[4]~24\ : std_logic;
SIGNAL \instBaudRate|auxCount[5]~25_combout\ : std_logic;
SIGNAL \instBaudRate|Equal5~1_combout\ : std_logic;
SIGNAL \instSerialPort|poCM[0]~1_combout\ : std_logic;
SIGNAL \instBaudRate|Equal5~0_combout\ : std_logic;
SIGNAL \instSerialPort|poCM[0]~2_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[3]~5_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount[10]~35_combout\ : std_logic;
SIGNAL \instBaudRate|Equal5~2_combout\ : std_logic;
SIGNAL \instBaudRate|Equal5~3_combout\ : std_logic;
SIGNAL \instSerialPort|Selector0~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.IDLE~regout\ : std_logic;
SIGNAL \instSerialPort|state.IDLE~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.IDLE~regout\ : std_logic;
SIGNAL \instSerialPort|Selector9~0_combout\ : std_logic;
SIGNAL \instSerialPort|Selector2~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT1~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT1~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT1~regout\ : std_logic;
SIGNAL \instSerialPort|Selector3~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT2~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT2~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT2~regout\ : std_logic;
SIGNAL \instSerialPort|Selector4~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT3~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT3~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT3~regout\ : std_logic;
SIGNAL \instSerialPort|Selector5~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT4~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT4~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT4~regout\ : std_logic;
SIGNAL \instSerialPort|Selector6~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT5~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT5~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT5~regout\ : std_logic;
SIGNAL \instSerialPort|Selector7~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT6~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT6~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT6~regout\ : std_logic;
SIGNAL \instSerialPort|Selector8~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT7~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT7~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT7~regout\ : std_logic;
SIGNAL \instSerialPort|Selector9~1_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.BIT8~regout\ : std_logic;
SIGNAL \instSerialPort|state.BIT8~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|state.BIT8~regout\ : std_logic;
SIGNAL \instSerialPort|Selector10~0_combout\ : std_logic;
SIGNAL \instSerialPort|next_state.STOP~regout\ : std_logic;
SIGNAL \instSerialPort|state.STOP~regout\ : std_logic;
SIGNAL \instSerialPort|poCM[0]~0_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[0]~1_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[6]~0_combout\ : std_logic;
SIGNAL \instSerialPort|poCM[6]~feeder_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[7]~2_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[5]~3_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal1~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal2~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector1~0_combout\ : std_logic;
SIGNAL \instSerialPort|poDR~0_combout\ : std_logic;
SIGNAL \instSerialPort|poDR~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.IDLE~0_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.STOP~regout\ : std_logic;
SIGNAL \instDecodeComand|state.STOP~regout\ : std_logic;
SIGNAL \instDecodeComand|M2CountU[0]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state~40_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_M2~regout\ : std_logic;
SIGNAL \instDecodeComand|state.VEL_M2~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_M2_U~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_M2_U~regout\ : std_logic;
SIGNAL \instDecodeComand|state.VEL_M2_U~regout\ : std_logic;
SIGNAL \instDecodeComand|M2CountU[3]~0_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[2]~7_combout\ : std_logic;
SIGNAL \instDecodeComand|process_0~1_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_M1_U~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_M1_U~regout\ : std_logic;
SIGNAL \instDecodeComand|state.VEL_M1_U~regout\ : std_logic;
SIGNAL \instDecodeComand|M1CountU[3]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|M1CountU[2]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|process_0~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~1_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal1~2_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state~44_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.CTRL~regout\ : std_logic;
SIGNAL \instDecodeComand|state.CTRL~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|state.CTRL~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.CTRLX~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.CTRLX~regout\ : std_logic;
SIGNAL \instDecodeComand|state.CTRLX~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|state.CTRLX~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZCTRL~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZCTRL~regout\ : std_logic;
SIGNAL \instDecodeComand|state.ZCTRL~regout\ : std_logic;
SIGNAL \instSerialPort|auxX[1]~6_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~1\ : std_logic;
SIGNAL \instDecodeComand|Add4~2_combout\ : std_logic;
SIGNAL \instDecodeComand|Equal1~1_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state~42_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_MED~regout\ : std_logic;
SIGNAL \instDecodeComand|state.VEL_MED~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_MED_U~regout\ : std_logic;
SIGNAL \instDecodeComand|state.VEL_MED_U~regout\ : std_logic;
SIGNAL \instDecodeComand|VelMedU[7]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~0_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMedU[1]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[1]~10\ : std_logic;
SIGNAL \instDecodeComand|VelMed[2]~11_combout\ : std_logic;
SIGNAL \instSerialPort|auxX[4]~4_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~3\ : std_logic;
SIGNAL \instDecodeComand|Add4~5\ : std_logic;
SIGNAL \instDecodeComand|Add4~6_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMedD[6]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Add5~0_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[2]~12\ : std_logic;
SIGNAL \instDecodeComand|VelMed[3]~14\ : std_logic;
SIGNAL \instDecodeComand|VelMed[4]~15_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~7\ : std_logic;
SIGNAL \instDecodeComand|Add4~9\ : std_logic;
SIGNAL \instDecodeComand|Add4~10_combout\ : std_logic;
SIGNAL \instDecodeComand|Add4~8_combout\ : std_logic;
SIGNAL \instDecodeComand|Add5~1\ : std_logic;
SIGNAL \instDecodeComand|Add5~3\ : std_logic;
SIGNAL \instDecodeComand|Add5~5\ : std_logic;
SIGNAL \instDecodeComand|Add5~7\ : std_logic;
SIGNAL \instDecodeComand|Add5~8_combout\ : std_logic;
SIGNAL \instDecodeComand|Add5~4_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[4]~16\ : std_logic;
SIGNAL \instDecodeComand|VelMed[5]~18\ : std_logic;
SIGNAL \instDecodeComand|VelMed[6]~20\ : std_logic;
SIGNAL \instDecodeComand|VelMed[7]~21_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[6]~19_combout\ : std_logic;
SIGNAL \instDecodeComand|process_0~3_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[7]~7_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[0]~8_combout\ : std_logic;
SIGNAL \instDecodeComand|VelMed[1]~9_combout\ : std_logic;
SIGNAL \instDecodeComand|process_0~2_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~3_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~4_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector0~6_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.IDLE~regout\ : std_logic;
SIGNAL \instDecodeComand|state.IDLE~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|state.IDLE~regout\ : std_logic;
SIGNAL \instDecodeComand|next_state~39_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.COMMAND~regout\ : std_logic;
SIGNAL \instDecodeComand|state.COMMAND~regout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[5]~27_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.VEL_M1~regout\ : std_logic;
SIGNAL \instDecodeComand|state.VEL_M1~regout\ : std_logic;
SIGNAL \instDecodeComand|M1CountD[3]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Add0~1_combout\ : std_logic;
SIGNAL \instDecodeComand|Add0~2_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[1]~8\ : std_logic;
SIGNAL \instDecodeComand|M1Count[2]~10\ : std_logic;
SIGNAL \instDecodeComand|M1Count[3]~12\ : std_logic;
SIGNAL \instDecodeComand|M1Count[4]~14\ : std_logic;
SIGNAL \instDecodeComand|M1Count[5]~16\ : std_logic;
SIGNAL \instDecodeComand|M1Count[6]~18\ : std_logic;
SIGNAL \instDecodeComand|M1Count[7]~19_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[7]~22_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[5]~21_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[7]~23_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZM1~regout\ : std_logic;
SIGNAL \instDecodeComand|state.ZM1~regout\ : std_logic;
SIGNAL \instDecodeComand|Selector10~0_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[2]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[2]~1_combout\ : std_logic;
SIGNAL \instDecodeComand|poM1[7]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector11~0_combout\ : std_logic;
SIGNAL \instPWM|auxCount[0]~7_combout\ : std_logic;
SIGNAL \instPWM|auxCount[5]~21_combout\ : std_logic;
SIGNAL \instPWM|auxCount[5]~23_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~0_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_PWM[15]~0_combout\ : std_logic;
SIGNAL \instPWM|process_0~0_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~9\ : std_logic;
SIGNAL \instBaudRate|Add3~11\ : std_logic;
SIGNAL \instBaudRate|Add3~13\ : std_logic;
SIGNAL \instBaudRate|Add3~14_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_PWM~4_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~15\ : std_logic;
SIGNAL \instBaudRate|Add3~16_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_PWM~3_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~17\ : std_logic;
SIGNAL \instBaudRate|Add3~18_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_PWM~2_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~19\ : std_logic;
SIGNAL \instBaudRate|Add3~21\ : std_logic;
SIGNAL \instBaudRate|Add3~22_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~20_combout\ : std_logic;
SIGNAL \instBaudRate|Equal4~1_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~23\ : std_logic;
SIGNAL \instBaudRate|Add3~25\ : std_logic;
SIGNAL \instBaudRate|Add3~26_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~27\ : std_logic;
SIGNAL \instBaudRate|Add3~28_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~29\ : std_logic;
SIGNAL \instBaudRate|Add3~30_combout\ : std_logic;
SIGNAL \instBaudRate|Equal4~0_combout\ : std_logic;
SIGNAL \instBaudRate|Equal4~2_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~1\ : std_logic;
SIGNAL \instBaudRate|Add3~2_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~3\ : std_logic;
SIGNAL \instBaudRate|Add3~4_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~5\ : std_logic;
SIGNAL \instBaudRate|Add3~6_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_PWM~5_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~7\ : std_logic;
SIGNAL \instBaudRate|Add3~8_combout\ : std_logic;
SIGNAL \instBaudRate|Add3~12_combout\ : std_logic;
SIGNAL \instBaudRate|Equal4~3_combout\ : std_logic;
SIGNAL \instBaudRate|Equal4~4_combout\ : std_logic;
SIGNAL \instPWM|auxCount[5]~24_combout\ : std_logic;
SIGNAL \instPWM|auxCount[0]~8\ : std_logic;
SIGNAL \instPWM|auxCount[1]~10\ : std_logic;
SIGNAL \instPWM|auxCount[2]~11_combout\ : std_logic;
SIGNAL \instPWM|auxCount[2]~12\ : std_logic;
SIGNAL \instPWM|auxCount[3]~14\ : std_logic;
SIGNAL \instPWM|auxCount[4]~15_combout\ : std_logic;
SIGNAL \instPWM|auxCount[4]~16\ : std_logic;
SIGNAL \instPWM|auxCount[5]~18\ : std_logic;
SIGNAL \instPWM|auxCount[6]~19_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector12~0_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[4]~13_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector13~0_combout\ : std_logic;
SIGNAL \instDecodeComand|M1Count[3]~11_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector14~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector16~0_combout\ : std_logic;
SIGNAL \instPWM|LessThan0~1_cout\ : std_logic;
SIGNAL \instPWM|LessThan0~3_cout\ : std_logic;
SIGNAL \instPWM|LessThan0~5_cout\ : std_logic;
SIGNAL \instPWM|LessThan0~7_cout\ : std_logic;
SIGNAL \instPWM|LessThan0~9_cout\ : std_logic;
SIGNAL \instPWM|LessThan0~11_cout\ : std_logic;
SIGNAL \instPWM|LessThan0~12_combout\ : std_logic;
SIGNAL \instPWM|LessThan0~14_combout\ : std_logic;
SIGNAL \instDecodeComand|M2CountD[3]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|Add2~2_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[1]~10\ : std_logic;
SIGNAL \instDecodeComand|M2Count[2]~12\ : std_logic;
SIGNAL \instDecodeComand|M2Count[3]~14\ : std_logic;
SIGNAL \instDecodeComand|M2Count[4]~16\ : std_logic;
SIGNAL \instDecodeComand|M2Count[5]~18\ : std_logic;
SIGNAL \instDecodeComand|M2Count[6]~19_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[7]~23_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state~38_combout\ : std_logic;
SIGNAL \instDecodeComand|next_state.ZM2~regout\ : std_logic;
SIGNAL \instDecodeComand|state.ZM2~regout\ : std_logic;
SIGNAL \instDecodeComand|Selector19~0_combout\ : std_logic;
SIGNAL \instDecodeComand|poM2[7]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[5]~17_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector20~0_combout\ : std_logic;
SIGNAL \instPWM|auxCount[3]~13_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[1]~9_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector24~0_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[0]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector25~0_combout\ : std_logic;
SIGNAL \instPWM|LessThan1~1_cout\ : std_logic;
SIGNAL \instPWM|LessThan1~3_cout\ : std_logic;
SIGNAL \instPWM|LessThan1~5_cout\ : std_logic;
SIGNAL \instPWM|LessThan1~7_cout\ : std_logic;
SIGNAL \instPWM|LessThan1~9_cout\ : std_logic;
SIGNAL \instPWM|LessThan1~11_cout\ : std_logic;
SIGNAL \instPWM|LessThan1~12_combout\ : std_logic;
SIGNAL \instDecodeComand|Add2~0_combout\ : std_logic;
SIGNAL \instDecodeComand|M2Count[6]~20\ : std_logic;
SIGNAL \instDecodeComand|M2Count[7]~21_combout\ : std_logic;
SIGNAL \instDecodeComand|Selector18~0_combout\ : std_logic;
SIGNAL \instPWM|LessThan1~14_combout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.A_Mode~0_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[0]~25_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[0]~26\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[1]~30\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[2]~32\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[3]~33_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[24]~28_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[3]~34\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[4]~35_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[2]~31_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~0_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[4]~36\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[5]~37_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[5]~38\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[6]~40\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[7]~41_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[7]~42\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[8]~44\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[9]~45_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[9]~46\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[10]~47_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[10]~48\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[11]~49_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[11]~50\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[12]~51_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[12]~52\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[13]~53_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[13]~54\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[14]~55_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[14]~56\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[15]~58\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[16]~59_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~3_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[8]~43_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~1_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~4_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[16]~60\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[17]~62\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[18]~64\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[19]~65_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[19]~66\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[20]~68\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[21]~69_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[21]~70\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[22]~72\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[23]~73_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[23]~74\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[24]~75_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~6_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[20]~67_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[17]~61_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~5_combout\ : std_logic;
SIGNAL \instBaudRate|Equal3~7_combout\ : std_logic;
SIGNAL \instBaudRate|auxCount_Sec[10]~27_combout\ : std_logic;
SIGNAL \instDisplaySelector|poC~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.A_Mode~regout\ : std_logic;
SIGNAL \instDisplaySelector|state.A_Mode~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|state.A_Mode~regout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.M1~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.M1~regout\ : std_logic;
SIGNAL \instDisplaySelector|state.M1~regout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.B_Mode~regout\ : std_logic;
SIGNAL \instDisplaySelector|state.B_Mode~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|state.B_Mode~regout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.M2~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|next_state.M2~regout\ : std_logic;
SIGNAL \instDisplaySelector|state.M2~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|state.M2~regout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[3]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[2]~2_combout\ : std_logic;
SIGNAL \instDisplaySelector|Selector3~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|poD~regout\ : std_logic;
SIGNAL \instDecodeComand|poHEX2[2]~feeder_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX2[2]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[2]~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|Selector2~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|poC~regout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[1]~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|Selector1~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|poB~regout\ : std_logic;
SIGNAL \instDisplaySelector|Selector0~1_combout\ : std_logic;
SIGNAL \instDisplaySelector|poA~regout\ : std_logic;
SIGNAL \instHexDecode|poAH~0_combout\ : std_logic;
SIGNAL \instHexDecode|poBH~0_combout\ : std_logic;
SIGNAL \instHexDecode|poCH~0_combout\ : std_logic;
SIGNAL \instHexDecode|poDH~0_combout\ : std_logic;
SIGNAL \instHexDecode|poEH~0_combout\ : std_logic;
SIGNAL \instHexDecode|poFH~0_combout\ : std_logic;
SIGNAL \instHexDecode|poGH~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \instDecodeComand|poHEX_aux1[4]~0_combout\ : std_logic;
SIGNAL \instDecodeComand|poHEX1[4]~feeder_combout\ : std_logic;
SIGNAL \instDisplaySelector|Selector4~0_combout\ : std_logic;
SIGNAL \instDisplaySelector|poH~regout\ : std_logic;
SIGNAL \instDecodeComand|VelMedU\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instSerialPort|auxX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|poHEX2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instDecodeComand|M1CountU\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instDecodeComand|poHEX1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instDecodeComand|poM2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|M2CountU\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instDecodeComand|M2Count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|VelMedD\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|VelMed\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|poHEX_aux1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instSerialPort|poCM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|M1Count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|M1CountD\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instDecodeComand|poHEX_aux2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \instDecodeComand|poM1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instDecodeComand|M2CountD\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instPWM|auxCount\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \instBaudRate|uartCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instBaudRate|auxCount_Sec\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \instBaudRate|auxCount_PWM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instBaudRate|auxCount\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_RESET~combout\ : std_logic;
SIGNAL \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\ : std_logic;
SIGNAL \instDisplaySelector|ALT_INV_poH~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_ENABLE <= ENABLE;
ww_RESET <= RESET;
ww_RX <= RX;
M1 <= ww_M1;
M2 <= ww_M2;
HEX <= ww_HEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);
\ALT_INV_RESET~combout\ <= NOT \RESET~combout\;
\instDecodeComand|ALT_INV_state.VEL_M1_U~regout\ <= NOT \instDecodeComand|state.VEL_M1_U~regout\;
\instDisplaySelector|ALT_INV_poH~regout\ <= NOT \instDisplaySelector|poH~regout\;

-- Location: LCFF_X17_Y10_N25
\instPWM|auxCount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[5]~17_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(5));

-- Location: LCFF_X17_Y10_N17
\instPWM|auxCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[1]~9_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(1));

-- Location: LCCOMB_X17_Y10_N16
\instPWM|auxCount[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[1]~9_combout\ = (\instPWM|auxCount\(1) & (!\instPWM|auxCount[0]~8\)) # (!\instPWM|auxCount\(1) & ((\instPWM|auxCount[0]~8\) # (GND)))
-- \instPWM|auxCount[1]~10\ = CARRY((!\instPWM|auxCount[0]~8\) # (!\instPWM|auxCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(1),
	datad => VCC,
	cin => \instPWM|auxCount[0]~8\,
	combout => \instPWM|auxCount[1]~9_combout\,
	cout => \instPWM|auxCount[1]~10\);

-- Location: LCCOMB_X17_Y10_N24
\instPWM|auxCount[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[5]~17_combout\ = (\instPWM|auxCount\(5) & (!\instPWM|auxCount[4]~16\)) # (!\instPWM|auxCount\(5) & ((\instPWM|auxCount[4]~16\) # (GND)))
-- \instPWM|auxCount[5]~18\ = CARRY((!\instPWM|auxCount[4]~16\) # (!\instPWM|auxCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(5),
	datad => VCC,
	cin => \instPWM|auxCount[4]~16\,
	combout => \instPWM|auxCount[5]~17_combout\,
	cout => \instPWM|auxCount[5]~18\);

-- Location: LCFF_X9_Y10_N13
\instDecodeComand|M1Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[6]~17_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(6));

-- Location: LCFF_X9_Y10_N11
\instDecodeComand|M1Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[5]~15_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(5));

-- Location: LCFF_X9_Y10_N5
\instDecodeComand|M1Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[2]~9_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(2));

-- Location: LCFF_X9_Y10_N3
\instDecodeComand|M1Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[1]~7_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(1));

-- Location: LCFF_X17_Y11_N25
\instDecodeComand|M2Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[4]~15_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(4));

-- Location: LCFF_X17_Y11_N23
\instDecodeComand|M2Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[3]~13_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(3));

-- Location: LCFF_X17_Y11_N21
\instDecodeComand|M2Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[2]~11_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(2));

-- Location: LCFF_X13_Y10_N11
\instBaudRate|auxCount_Sec[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[1]~29_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(1));

-- Location: LCFF_X13_Y10_N21
\instBaudRate|auxCount_Sec[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[6]~39_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(6));

-- Location: LCFF_X13_Y9_N7
\instBaudRate|auxCount_Sec[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[15]~57_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(15));

-- Location: LCFF_X13_Y9_N13
\instBaudRate|auxCount_Sec[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[18]~63_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(18));

-- Location: LCFF_X13_Y9_N21
\instBaudRate|auxCount_Sec[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[22]~71_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(22));

-- Location: LCCOMB_X9_Y10_N2
\instDecodeComand|M1Count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[1]~7_combout\ = (\instDecodeComand|M1CountU\(1) & (\instDecodeComand|M1CountD\(0) $ (VCC))) # (!\instDecodeComand|M1CountU\(1) & (\instDecodeComand|M1CountD\(0) & VCC))
-- \instDecodeComand|M1Count[1]~8\ = CARRY((\instDecodeComand|M1CountU\(1) & \instDecodeComand|M1CountD\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountU\(1),
	datab => \instDecodeComand|M1CountD\(0),
	datad => VCC,
	combout => \instDecodeComand|M1Count[1]~7_combout\,
	cout => \instDecodeComand|M1Count[1]~8\);

-- Location: LCCOMB_X9_Y10_N4
\instDecodeComand|M1Count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[2]~9_combout\ = (\instDecodeComand|M1CountD\(1) & ((\instDecodeComand|M1CountU\(2) & (\instDecodeComand|M1Count[1]~8\ & VCC)) # (!\instDecodeComand|M1CountU\(2) & (!\instDecodeComand|M1Count[1]~8\)))) # 
-- (!\instDecodeComand|M1CountD\(1) & ((\instDecodeComand|M1CountU\(2) & (!\instDecodeComand|M1Count[1]~8\)) # (!\instDecodeComand|M1CountU\(2) & ((\instDecodeComand|M1Count[1]~8\) # (GND)))))
-- \instDecodeComand|M1Count[2]~10\ = CARRY((\instDecodeComand|M1CountD\(1) & (!\instDecodeComand|M1CountU\(2) & !\instDecodeComand|M1Count[1]~8\)) # (!\instDecodeComand|M1CountD\(1) & ((!\instDecodeComand|M1Count[1]~8\) # 
-- (!\instDecodeComand|M1CountU\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountD\(1),
	datab => \instDecodeComand|M1CountU\(2),
	datad => VCC,
	cin => \instDecodeComand|M1Count[1]~8\,
	combout => \instDecodeComand|M1Count[2]~9_combout\,
	cout => \instDecodeComand|M1Count[2]~10\);

-- Location: LCCOMB_X9_Y10_N10
\instDecodeComand|M1Count[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[5]~15_combout\ = (\instDecodeComand|M1Count[4]~14\ & ((\instDecodeComand|M1CountD\(2) $ (\instDecodeComand|Add0~1_combout\)))) # (!\instDecodeComand|M1Count[4]~14\ & (\instDecodeComand|M1CountD\(2) $ 
-- (\instDecodeComand|Add0~1_combout\ $ (VCC))))
-- \instDecodeComand|M1Count[5]~16\ = CARRY((!\instDecodeComand|M1Count[4]~14\ & (\instDecodeComand|M1CountD\(2) $ (\instDecodeComand|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountD\(2),
	datab => \instDecodeComand|Add0~1_combout\,
	datad => VCC,
	cin => \instDecodeComand|M1Count[4]~14\,
	combout => \instDecodeComand|M1Count[5]~15_combout\,
	cout => \instDecodeComand|M1Count[5]~16\);

-- Location: LCCOMB_X9_Y10_N12
\instDecodeComand|M1Count[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[6]~17_combout\ = (\instDecodeComand|M1Count[5]~16\ & (\instDecodeComand|Add0~0_combout\ $ ((!\instDecodeComand|M1CountD\(3))))) # (!\instDecodeComand|M1Count[5]~16\ & ((\instDecodeComand|Add0~0_combout\ $ 
-- (\instDecodeComand|M1CountD\(3))) # (GND)))
-- \instDecodeComand|M1Count[6]~18\ = CARRY((\instDecodeComand|Add0~0_combout\ $ (!\instDecodeComand|M1CountD\(3))) # (!\instDecodeComand|M1Count[5]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add0~0_combout\,
	datab => \instDecodeComand|M1CountD\(3),
	datad => VCC,
	cin => \instDecodeComand|M1Count[5]~16\,
	combout => \instDecodeComand|M1Count[6]~17_combout\,
	cout => \instDecodeComand|M1Count[6]~18\);

-- Location: LCFF_X20_Y8_N17
\instBaudRate|auxCount[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[8]~31_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(8));

-- Location: LCFF_X20_Y8_N7
\instBaudRate|auxCount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[3]~21_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(3));

-- Location: LCFF_X20_Y8_N13
\instBaudRate|auxCount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[6]~27_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(6));

-- Location: LCCOMB_X19_Y10_N10
\instBaudRate|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~10_combout\ = (\instBaudRate|auxCount_PWM\(5) & (!\instBaudRate|Add3~9\)) # (!\instBaudRate|auxCount_PWM\(5) & ((\instBaudRate|Add3~9\) # (GND)))
-- \instBaudRate|Add3~11\ = CARRY((!\instBaudRate|Add3~9\) # (!\instBaudRate|auxCount_PWM\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(5),
	datad => VCC,
	cin => \instBaudRate|Add3~9\,
	combout => \instBaudRate|Add3~10_combout\,
	cout => \instBaudRate|Add3~11\);

-- Location: LCCOMB_X19_Y10_N24
\instBaudRate|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~24_combout\ = (\instBaudRate|auxCount_PWM\(12) & (\instBaudRate|Add3~23\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(12) & (!\instBaudRate|Add3~23\ & VCC))
-- \instBaudRate|Add3~25\ = CARRY((\instBaudRate|auxCount_PWM\(12) & !\instBaudRate|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(12),
	datad => VCC,
	cin => \instBaudRate|Add3~23\,
	combout => \instBaudRate|Add3~24_combout\,
	cout => \instBaudRate|Add3~25\);

-- Location: LCCOMB_X17_Y11_N20
\instDecodeComand|M2Count[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[2]~11_combout\ = (\instDecodeComand|M2CountU\(2) & ((\instDecodeComand|M2CountD\(1) & (\instDecodeComand|M2Count[1]~10\ & VCC)) # (!\instDecodeComand|M2CountD\(1) & (!\instDecodeComand|M2Count[1]~10\)))) # 
-- (!\instDecodeComand|M2CountU\(2) & ((\instDecodeComand|M2CountD\(1) & (!\instDecodeComand|M2Count[1]~10\)) # (!\instDecodeComand|M2CountD\(1) & ((\instDecodeComand|M2Count[1]~10\) # (GND)))))
-- \instDecodeComand|M2Count[2]~12\ = CARRY((\instDecodeComand|M2CountU\(2) & (!\instDecodeComand|M2CountD\(1) & !\instDecodeComand|M2Count[1]~10\)) # (!\instDecodeComand|M2CountU\(2) & ((!\instDecodeComand|M2Count[1]~10\) # 
-- (!\instDecodeComand|M2CountD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M2CountU\(2),
	datab => \instDecodeComand|M2CountD\(1),
	datad => VCC,
	cin => \instDecodeComand|M2Count[1]~10\,
	combout => \instDecodeComand|M2Count[2]~11_combout\,
	cout => \instDecodeComand|M2Count[2]~12\);

-- Location: LCCOMB_X17_Y11_N22
\instDecodeComand|M2Count[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[3]~13_combout\ = ((\instDecodeComand|Add2~3_combout\ $ (\instDecodeComand|M2CountU\(3) $ (!\instDecodeComand|M2Count[2]~12\)))) # (GND)
-- \instDecodeComand|M2Count[3]~14\ = CARRY((\instDecodeComand|Add2~3_combout\ & ((\instDecodeComand|M2CountU\(3)) # (!\instDecodeComand|M2Count[2]~12\))) # (!\instDecodeComand|Add2~3_combout\ & (\instDecodeComand|M2CountU\(3) & 
-- !\instDecodeComand|M2Count[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add2~3_combout\,
	datab => \instDecodeComand|M2CountU\(3),
	datad => VCC,
	cin => \instDecodeComand|M2Count[2]~12\,
	combout => \instDecodeComand|M2Count[3]~13_combout\,
	cout => \instDecodeComand|M2Count[3]~14\);

-- Location: LCCOMB_X17_Y11_N24
\instDecodeComand|M2Count[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[4]~15_combout\ = (\instDecodeComand|Add2~2_combout\ & (!\instDecodeComand|M2Count[3]~14\)) # (!\instDecodeComand|Add2~2_combout\ & ((\instDecodeComand|M2Count[3]~14\) # (GND)))
-- \instDecodeComand|M2Count[4]~16\ = CARRY((!\instDecodeComand|M2Count[3]~14\) # (!\instDecodeComand|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|Add2~2_combout\,
	datad => VCC,
	cin => \instDecodeComand|M2Count[3]~14\,
	combout => \instDecodeComand|M2Count[4]~15_combout\,
	cout => \instDecodeComand|M2Count[4]~16\);

-- Location: LCCOMB_X13_Y10_N10
\instBaudRate|auxCount_Sec[1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[1]~29_combout\ = (\instBaudRate|auxCount_Sec\(1) & (!\instBaudRate|auxCount_Sec[0]~26\)) # (!\instBaudRate|auxCount_Sec\(1) & ((\instBaudRate|auxCount_Sec[0]~26\) # (GND)))
-- \instBaudRate|auxCount_Sec[1]~30\ = CARRY((!\instBaudRate|auxCount_Sec[0]~26\) # (!\instBaudRate|auxCount_Sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(1),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[0]~26\,
	combout => \instBaudRate|auxCount_Sec[1]~29_combout\,
	cout => \instBaudRate|auxCount_Sec[1]~30\);

-- Location: LCCOMB_X13_Y10_N20
\instBaudRate|auxCount_Sec[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[6]~39_combout\ = (\instBaudRate|auxCount_Sec\(6) & (\instBaudRate|auxCount_Sec[5]~38\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(6) & (!\instBaudRate|auxCount_Sec[5]~38\ & VCC))
-- \instBaudRate|auxCount_Sec[6]~40\ = CARRY((\instBaudRate|auxCount_Sec\(6) & !\instBaudRate|auxCount_Sec[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(6),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[5]~38\,
	combout => \instBaudRate|auxCount_Sec[6]~39_combout\,
	cout => \instBaudRate|auxCount_Sec[6]~40\);

-- Location: LCCOMB_X13_Y9_N6
\instBaudRate|auxCount_Sec[15]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[15]~57_combout\ = (\instBaudRate|auxCount_Sec\(15) & (!\instBaudRate|auxCount_Sec[14]~56\)) # (!\instBaudRate|auxCount_Sec\(15) & ((\instBaudRate|auxCount_Sec[14]~56\) # (GND)))
-- \instBaudRate|auxCount_Sec[15]~58\ = CARRY((!\instBaudRate|auxCount_Sec[14]~56\) # (!\instBaudRate|auxCount_Sec\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(15),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[14]~56\,
	combout => \instBaudRate|auxCount_Sec[15]~57_combout\,
	cout => \instBaudRate|auxCount_Sec[15]~58\);

-- Location: LCCOMB_X13_Y9_N12
\instBaudRate|auxCount_Sec[18]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[18]~63_combout\ = (\instBaudRate|auxCount_Sec\(18) & (\instBaudRate|auxCount_Sec[17]~62\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(18) & (!\instBaudRate|auxCount_Sec[17]~62\ & VCC))
-- \instBaudRate|auxCount_Sec[18]~64\ = CARRY((\instBaudRate|auxCount_Sec\(18) & !\instBaudRate|auxCount_Sec[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(18),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[17]~62\,
	combout => \instBaudRate|auxCount_Sec[18]~63_combout\,
	cout => \instBaudRate|auxCount_Sec[18]~64\);

-- Location: LCCOMB_X13_Y9_N20
\instBaudRate|auxCount_Sec[22]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[22]~71_combout\ = (\instBaudRate|auxCount_Sec\(22) & (\instBaudRate|auxCount_Sec[21]~70\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(22) & (!\instBaudRate|auxCount_Sec[21]~70\ & VCC))
-- \instBaudRate|auxCount_Sec[22]~72\ = CARRY((\instBaudRate|auxCount_Sec\(22) & !\instBaudRate|auxCount_Sec[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(22),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[21]~70\,
	combout => \instBaudRate|auxCount_Sec[22]~71_combout\,
	cout => \instBaudRate|auxCount_Sec[22]~72\);

-- Location: LCCOMB_X20_Y8_N6
\instBaudRate|auxCount[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[3]~21_combout\ = (\instBaudRate|auxCount\(3) & (!\instBaudRate|auxCount[2]~18\)) # (!\instBaudRate|auxCount\(3) & ((\instBaudRate|auxCount[2]~18\) # (GND)))
-- \instBaudRate|auxCount[3]~22\ = CARRY((!\instBaudRate|auxCount[2]~18\) # (!\instBaudRate|auxCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(3),
	datad => VCC,
	cin => \instBaudRate|auxCount[2]~18\,
	combout => \instBaudRate|auxCount[3]~21_combout\,
	cout => \instBaudRate|auxCount[3]~22\);

-- Location: LCCOMB_X20_Y8_N12
\instBaudRate|auxCount[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[6]~27_combout\ = (\instBaudRate|auxCount\(6) & (\instBaudRate|auxCount[5]~26\ $ (GND))) # (!\instBaudRate|auxCount\(6) & (!\instBaudRate|auxCount[5]~26\ & VCC))
-- \instBaudRate|auxCount[6]~28\ = CARRY((\instBaudRate|auxCount\(6) & !\instBaudRate|auxCount[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(6),
	datad => VCC,
	cin => \instBaudRate|auxCount[5]~26\,
	combout => \instBaudRate|auxCount[6]~27_combout\,
	cout => \instBaudRate|auxCount[6]~28\);

-- Location: LCCOMB_X20_Y8_N16
\instBaudRate|auxCount[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[8]~31_combout\ = (\instBaudRate|auxCount\(8) & (\instBaudRate|auxCount[7]~30\ $ (GND))) # (!\instBaudRate|auxCount\(8) & (!\instBaudRate|auxCount[7]~30\ & VCC))
-- \instBaudRate|auxCount[8]~32\ = CARRY((\instBaudRate|auxCount\(8) & !\instBaudRate|auxCount[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(8),
	datad => VCC,
	cin => \instBaudRate|auxCount[7]~30\,
	combout => \instBaudRate|auxCount[8]~31_combout\,
	cout => \instBaudRate|auxCount[8]~32\);

-- Location: LCFF_X13_Y11_N7
\instDecodeComand|VelMed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[3]~13_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(3));

-- Location: LCFF_X13_Y11_N11
\instDecodeComand|VelMed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[5]~17_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(5));

-- Location: LCCOMB_X13_Y11_N6
\instDecodeComand|VelMed[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[3]~13_combout\ = ((\instDecodeComand|VelMedU\(3) $ (\instDecodeComand|Add5~0_combout\ $ (!\instDecodeComand|VelMed[2]~12\)))) # (GND)
-- \instDecodeComand|VelMed[3]~14\ = CARRY((\instDecodeComand|VelMedU\(3) & ((\instDecodeComand|Add5~0_combout\) # (!\instDecodeComand|VelMed[2]~12\))) # (!\instDecodeComand|VelMedU\(3) & (\instDecodeComand|Add5~0_combout\ & 
-- !\instDecodeComand|VelMed[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedU\(3),
	datab => \instDecodeComand|Add5~0_combout\,
	datad => VCC,
	cin => \instDecodeComand|VelMed[2]~12\,
	combout => \instDecodeComand|VelMed[3]~13_combout\,
	cout => \instDecodeComand|VelMed[3]~14\);

-- Location: LCCOMB_X14_Y11_N20
\instDecodeComand|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add5~2_combout\ = (\instDecodeComand|VelMedD\(3) & ((\instDecodeComand|VelMedD\(1) & (\instDecodeComand|Add5~1\ & VCC)) # (!\instDecodeComand|VelMedD\(1) & (!\instDecodeComand|Add5~1\)))) # (!\instDecodeComand|VelMedD\(3) & 
-- ((\instDecodeComand|VelMedD\(1) & (!\instDecodeComand|Add5~1\)) # (!\instDecodeComand|VelMedD\(1) & ((\instDecodeComand|Add5~1\) # (GND)))))
-- \instDecodeComand|Add5~3\ = CARRY((\instDecodeComand|VelMedD\(3) & (!\instDecodeComand|VelMedD\(1) & !\instDecodeComand|Add5~1\)) # (!\instDecodeComand|VelMedD\(3) & ((!\instDecodeComand|Add5~1\) # (!\instDecodeComand|VelMedD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedD\(3),
	datab => \instDecodeComand|VelMedD\(1),
	datad => VCC,
	cin => \instDecodeComand|Add5~1\,
	combout => \instDecodeComand|Add5~2_combout\,
	cout => \instDecodeComand|Add5~3\);

-- Location: LCCOMB_X13_Y11_N10
\instDecodeComand|VelMed[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[5]~17_combout\ = ((\instDecodeComand|VelMedU\(5) $ (\instDecodeComand|Add5~4_combout\ $ (!\instDecodeComand|VelMed[4]~16\)))) # (GND)
-- \instDecodeComand|VelMed[5]~18\ = CARRY((\instDecodeComand|VelMedU\(5) & ((\instDecodeComand|Add5~4_combout\) # (!\instDecodeComand|VelMed[4]~16\))) # (!\instDecodeComand|VelMedU\(5) & (\instDecodeComand|Add5~4_combout\ & 
-- !\instDecodeComand|VelMed[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedU\(5),
	datab => \instDecodeComand|Add5~4_combout\,
	datad => VCC,
	cin => \instDecodeComand|VelMed[4]~16\,
	combout => \instDecodeComand|VelMed[5]~17_combout\,
	cout => \instDecodeComand|VelMed[5]~18\);

-- Location: LCCOMB_X14_Y11_N24
\instDecodeComand|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add5~6_combout\ = (\instDecodeComand|VelMedD\(3) & ((\instDecodeComand|VelMedD\(5) & (\instDecodeComand|Add5~5\ & VCC)) # (!\instDecodeComand|VelMedD\(5) & (!\instDecodeComand|Add5~5\)))) # (!\instDecodeComand|VelMedD\(3) & 
-- ((\instDecodeComand|VelMedD\(5) & (!\instDecodeComand|Add5~5\)) # (!\instDecodeComand|VelMedD\(5) & ((\instDecodeComand|Add5~5\) # (GND)))))
-- \instDecodeComand|Add5~7\ = CARRY((\instDecodeComand|VelMedD\(3) & (!\instDecodeComand|VelMedD\(5) & !\instDecodeComand|Add5~5\)) # (!\instDecodeComand|VelMedD\(3) & ((!\instDecodeComand|Add5~5\) # (!\instDecodeComand|VelMedD\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedD\(3),
	datab => \instDecodeComand|VelMedD\(5),
	datad => VCC,
	cin => \instDecodeComand|Add5~5\,
	combout => \instDecodeComand|Add5~6_combout\,
	cout => \instDecodeComand|Add5~7\);

-- Location: LCCOMB_X14_Y11_N8
\instDecodeComand|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~4_combout\ = (\instSerialPort|poCM\(3) & (\instDecodeComand|Add4~3\ $ (GND))) # (!\instSerialPort|poCM\(3) & (!\instDecodeComand|Add4~3\ & VCC))
-- \instDecodeComand|Add4~5\ = CARRY((\instSerialPort|poCM\(3) & !\instDecodeComand|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poCM\(3),
	datad => VCC,
	cin => \instDecodeComand|Add4~3\,
	combout => \instDecodeComand|Add4~4_combout\,
	cout => \instDecodeComand|Add4~5\);

-- Location: LCCOMB_X14_Y11_N14
\instDecodeComand|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~10_combout\ = (\instSerialPort|poCM\(6) & (\instDecodeComand|Add4~9\ & VCC)) # (!\instSerialPort|poCM\(6) & (!\instDecodeComand|Add4~9\))
-- \instDecodeComand|Add4~11\ = CARRY((!\instSerialPort|poCM\(6) & !\instDecodeComand|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(6),
	datad => VCC,
	cin => \instDecodeComand|Add4~9\,
	combout => \instDecodeComand|Add4~10_combout\,
	cout => \instDecodeComand|Add4~11\);

-- Location: LCCOMB_X14_Y11_N16
\instDecodeComand|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~12_combout\ = \instDecodeComand|Add4~11\ $ (\instSerialPort|poCM\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|poCM\(7),
	cin => \instDecodeComand|Add4~11\,
	combout => \instDecodeComand|Add4~12_combout\);

-- Location: LCFF_X14_Y13_N25
\instDecodeComand|poM1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector15~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(2));

-- Location: LCFF_X14_Y13_N21
\instDecodeComand|poM1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector17~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(0));

-- Location: LCFF_X18_Y11_N21
\instDecodeComand|poM2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector21~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(4));

-- Location: LCFF_X18_Y11_N31
\instDecodeComand|poM2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector22~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(3));

-- Location: LCFF_X18_Y11_N25
\instDecodeComand|poM2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector23~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(2));

-- Location: LCCOMB_X14_Y10_N10
\instDecodeComand|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal0~0_combout\ = (!\instSerialPort|poCM\(0) & (\instSerialPort|poCM\(6) & (!\instSerialPort|poCM\(5) & !\instSerialPort|poCM\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(0),
	datab => \instSerialPort|poCM\(6),
	datac => \instSerialPort|poCM\(5),
	datad => \instSerialPort|poCM\(7),
	combout => \instDecodeComand|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\instPWM|auxCount[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[5]~22_combout\ = ((\instPWM|auxCount\(3)) # (\instPWM|auxCount\(4))) # (!\instPWM|auxCount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(5),
	datac => \instPWM|auxCount\(3),
	datad => \instPWM|auxCount\(4),
	combout => \instPWM|auxCount[5]~22_combout\);

-- Location: LCFF_X18_Y10_N1
\instBaudRate|auxCount_PWM[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_PWM~1_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(12));

-- Location: LCFF_X19_Y10_N11
\instBaudRate|auxCount_PWM[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~10_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(5));

-- Location: LCCOMB_X14_Y13_N24
\instDecodeComand|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector15~0_combout\ = (\instDecodeComand|state.ZM1~regout\ & \instDecodeComand|M1Count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.ZM1~regout\,
	datac => \instDecodeComand|M1Count\(2),
	combout => \instDecodeComand|Selector15~0_combout\);

-- Location: LCFF_X10_Y10_N25
\instDecodeComand|M1Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(0));

-- Location: LCCOMB_X14_Y13_N20
\instDecodeComand|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector17~0_combout\ = (\instDecodeComand|M1Count\(0) & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M1Count\(0),
	datac => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|Selector17~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\instDecodeComand|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector21~0_combout\ = (\instDecodeComand|M2Count\(4) & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2Count\(4),
	datac => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|Selector21~0_combout\);

-- Location: LCCOMB_X18_Y11_N30
\instDecodeComand|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector22~0_combout\ = (\instDecodeComand|M2Count\(3) & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2Count\(3),
	datac => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|Selector22~0_combout\);

-- Location: LCCOMB_X18_Y11_N24
\instDecodeComand|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector23~0_combout\ = (\instDecodeComand|state.ZM2~regout\ & \instDecodeComand|M2Count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.ZM2~regout\,
	datac => \instDecodeComand|M2Count\(2),
	combout => \instDecodeComand|Selector23~0_combout\);

-- Location: LCFF_X10_Y11_N27
\instDecodeComand|poHEX2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX2[0]~feeder_combout\,
	ena => \instDecodeComand|poHEX2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX2\(0));

-- Location: LCFF_X10_Y11_N21
\instDecodeComand|poHEX1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|M1CountD\(0),
	sload => VCC,
	ena => \instDecodeComand|poHEX1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX1\(0));

-- Location: LCCOMB_X10_Y11_N20
\instDisplaySelector|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|Selector0~0_combout\ = (\instDisplaySelector|state.M2~regout\ & ((\instDecodeComand|poHEX2\(0)) # ((\instDecodeComand|poHEX1\(0) & \instDisplaySelector|state.M1~regout\)))) # (!\instDisplaySelector|state.M2~regout\ & 
-- (((\instDecodeComand|poHEX1\(0) & \instDisplaySelector|state.M1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|state.M2~regout\,
	datab => \instDecodeComand|poHEX2\(0),
	datac => \instDecodeComand|poHEX1\(0),
	datad => \instDisplaySelector|state.M1~regout\,
	combout => \instDisplaySelector|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y10_N4
\instBaudRate|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~2_combout\ = (\instBaudRate|auxCount_Sec\(11) & (!\instBaudRate|auxCount_Sec\(10) & (\instBaudRate|auxCount_Sec\(12) & !\instBaudRate|auxCount_Sec\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(11),
	datab => \instBaudRate|auxCount_Sec\(10),
	datac => \instBaudRate|auxCount_Sec\(12),
	datad => \instBaudRate|auxCount_Sec\(9),
	combout => \instBaudRate|Equal3~2_combout\);

-- Location: LCFF_X10_Y11_N23
\instDecodeComand|poHEX2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX2[3]~feeder_combout\,
	ena => \instDecodeComand|poHEX2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX2\(3));

-- Location: LCFF_X10_Y11_N13
\instDecodeComand|poHEX2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX2[4]~feeder_combout\,
	ena => \instDecodeComand|poHEX2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX2\(4));

-- Location: LCCOMB_X9_Y11_N16
\instDecodeComand|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add0~0_combout\ = (\instDecodeComand|M1CountD\(2) & ((\instDecodeComand|M1CountD\(1) & ((\instDecodeComand|M1CountD\(3)) # (\instDecodeComand|M1CountD\(0)))) # (!\instDecodeComand|M1CountD\(1) & (\instDecodeComand|M1CountD\(3) & 
-- \instDecodeComand|M1CountD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountD\(1),
	datab => \instDecodeComand|M1CountD\(2),
	datac => \instDecodeComand|M1CountD\(3),
	datad => \instDecodeComand|M1CountD\(0),
	combout => \instDecodeComand|Add0~0_combout\);

-- Location: LCCOMB_X9_Y11_N30
\instDecodeComand|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add0~3_combout\ = \instDecodeComand|M1CountD\(0) $ (\instDecodeComand|M1CountD\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|M1CountD\(0),
	datad => \instDecodeComand|M1CountD\(2),
	combout => \instDecodeComand|Add0~3_combout\);

-- Location: LCFF_X10_Y10_N7
\instDecodeComand|M1CountU[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1CountU[1]~feeder_combout\,
	ena => \instDecodeComand|M1CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountU\(1));

-- Location: LCCOMB_X18_Y10_N0
\instBaudRate|auxCount_PWM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_PWM~1_combout\ = (\instBaudRate|Add3~24_combout\ & (((!\instBaudRate|auxCount_PWM\(0)) # (!\instBaudRate|Equal4~2_combout\)) # (!\instBaudRate|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal4~4_combout\,
	datab => \instBaudRate|Equal4~2_combout\,
	datac => \instBaudRate|auxCount_PWM\(0),
	datad => \instBaudRate|Add3~24_combout\,
	combout => \instBaudRate|auxCount_PWM~1_combout\);

-- Location: LCCOMB_X10_Y10_N0
\instDecodeComand|M1Count[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[0]~24_combout\ = (\instDecodeComand|M1CountU\(0) & \instDecodeComand|state.VEL_M1_U~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|M1CountU\(0),
	datad => \instDecodeComand|state.VEL_M1_U~regout\,
	combout => \instDecodeComand|M1Count[0]~24_combout\);

-- Location: LCCOMB_X10_Y10_N28
\instDecodeComand|M1Count[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[7]~25_combout\ = (\instDecodeComand|M1Count[5]~21_combout\) # ((\instDecodeComand|Equal1~1_combout\ & (!\instSerialPort|poCM\(1) & \instDecodeComand|state.COMMAND~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal1~1_combout\,
	datab => \instSerialPort|poCM\(1),
	datac => \instDecodeComand|M1Count[5]~21_combout\,
	datad => \instDecodeComand|state.COMMAND~regout\,
	combout => \instDecodeComand|M1Count[7]~25_combout\);

-- Location: LCCOMB_X10_Y10_N24
\instDecodeComand|M1Count[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[0]~26_combout\ = (\instDecodeComand|M1Count[7]~25_combout\ & ((\instDecodeComand|next_state.IDLE~0_combout\ & (\instDecodeComand|M1Count[0]~24_combout\)) # (!\instDecodeComand|next_state.IDLE~0_combout\ & 
-- ((\instDecodeComand|M1Count\(0)))))) # (!\instDecodeComand|M1Count[7]~25_combout\ & (((\instDecodeComand|M1Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1Count[0]~24_combout\,
	datab => \instDecodeComand|M1Count[7]~25_combout\,
	datac => \instDecodeComand|M1Count\(0),
	datad => \instDecodeComand|next_state.IDLE~0_combout\,
	combout => \instDecodeComand|M1Count[0]~26_combout\);

-- Location: LCCOMB_X9_Y11_N22
\instDecodeComand|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add2~1_combout\ = (\instDecodeComand|M2CountD\(1) & ((\instDecodeComand|M2CountD\(3)) # ((\instDecodeComand|M2CountD\(0) & \instDecodeComand|M2CountD\(2))))) # (!\instDecodeComand|M2CountD\(1) & (\instDecodeComand|M2CountD\(3) & 
-- (\instDecodeComand|M2CountD\(0) & \instDecodeComand|M2CountD\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M2CountD\(1),
	datab => \instDecodeComand|M2CountD\(3),
	datac => \instDecodeComand|M2CountD\(0),
	datad => \instDecodeComand|M2CountD\(2),
	combout => \instDecodeComand|Add2~1_combout\);

-- Location: LCCOMB_X9_Y11_N10
\instDecodeComand|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add2~3_combout\ = \instDecodeComand|M2CountD\(2) $ (\instDecodeComand|M2CountD\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|M2CountD\(2),
	datad => \instDecodeComand|M2CountD\(0),
	combout => \instDecodeComand|Add2~3_combout\);

-- Location: LCFF_X17_Y11_N7
\instDecodeComand|M2CountU[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2CountU[1]~feeder_combout\,
	ena => \instDecodeComand|M2CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountU\(1));

-- Location: LCFF_X22_Y8_N7
\instBaudRate|uartCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|uartCounter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|uartCounter\(3));

-- Location: LCFF_X17_Y11_N11
\instDecodeComand|poHEX_aux2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX_aux2[4]~feeder_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX_aux2\(4));

-- Location: LCCOMB_X20_Y8_N30
\instBaudRate|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal1~2_combout\ = ((\instBaudRate|auxCount\(11)) # ((\instBaudRate|auxCount\(9)) # (!\instBaudRate|auxCount\(10)))) # (!\instBaudRate|auxCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(6),
	datab => \instBaudRate|auxCount\(11),
	datac => \instBaudRate|auxCount\(10),
	datad => \instBaudRate|auxCount\(9),
	combout => \instBaudRate|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y8_N10
\instBaudRate|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add1~0_combout\ = \instBaudRate|uartCounter\(2) $ (((\instBaudRate|uartCounter\(0) & \instBaudRate|uartCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|uartCounter\(0),
	datac => \instBaudRate|uartCounter\(1),
	datad => \instBaudRate|uartCounter\(2),
	combout => \instBaudRate|Add1~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\instBaudRate|uartCounter[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[1]~3_combout\ = ((\instBaudRate|uartCounter\(0)) # ((\instBaudRate|uartCounter\(2)) # (!\instBaudRate|uartCounter\(1)))) # (!\instBaudRate|uartCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter\(3),
	datab => \instBaudRate|uartCounter\(0),
	datac => \instBaudRate|uartCounter\(1),
	datad => \instBaudRate|uartCounter\(2),
	combout => \instBaudRate|uartCounter[1]~3_combout\);

-- Location: LCCOMB_X22_Y8_N8
\instBaudRate|uartCounter[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[3]~5_combout\ = (\instBaudRate|process_0~0_combout\ & ((\RX~combout\))) # (!\instBaudRate|process_0~0_combout\ & (\ENABLE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datac => \RX~combout\,
	datad => \instBaudRate|process_0~0_combout\,
	combout => \instBaudRate|uartCounter[3]~5_combout\);

-- Location: LCCOMB_X22_Y8_N4
\instBaudRate|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add1~1_combout\ = \instBaudRate|uartCounter\(3) $ (((\instBaudRate|uartCounter\(0) & (\instBaudRate|uartCounter\(1) & \instBaudRate|uartCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter\(3),
	datab => \instBaudRate|uartCounter\(0),
	datac => \instBaudRate|uartCounter\(1),
	datad => \instBaudRate|uartCounter\(2),
	combout => \instBaudRate|Add1~1_combout\);

-- Location: LCCOMB_X22_Y8_N6
\instBaudRate|uartCounter[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[3]~8_combout\ = (\instBaudRate|uartCounter[3]~6_combout\ & (((\instBaudRate|uartCounter\(3))))) # (!\instBaudRate|uartCounter[3]~6_combout\ & (\instBaudRate|Add1~1_combout\ & (\instBaudRate|uartCounter[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Add1~1_combout\,
	datab => \instBaudRate|uartCounter[1]~4_combout\,
	datac => \instBaudRate|uartCounter\(3),
	datad => \instBaudRate|uartCounter[3]~6_combout\,
	combout => \instBaudRate|uartCounter[3]~8_combout\);

-- Location: LCCOMB_X14_Y10_N30
\instDecodeComand|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal0~1_combout\ = (\instSerialPort|poCM\(2) & !\instSerialPort|poCM\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instSerialPort|poCM\(2),
	datad => \instSerialPort|poCM\(1),
	combout => \instDecodeComand|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y10_N16
\instDecodeComand|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal0~2_combout\ = (\instDecodeComand|Equal0~0_combout\ & (!\instSerialPort|poCM\(3) & (!\instSerialPort|poCM\(4) & \instDecodeComand|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal0~0_combout\,
	datab => \instSerialPort|poCM\(3),
	datac => \instSerialPort|poCM\(4),
	datad => \instDecodeComand|Equal0~1_combout\,
	combout => \instDecodeComand|Equal0~2_combout\);

-- Location: LCFF_X19_Y11_N27
\instDecodeComand|state.ZVM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|state.ZVM~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.ZVM~regout\);

-- Location: LCFF_X19_Y11_N13
\instDecodeComand|state.ZSIM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.ZSIM~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.ZSIM~regout\);

-- Location: LCCOMB_X19_Y11_N12
\instDecodeComand|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~2_combout\ = (\instDecodeComand|state.ZM1~regout\) # ((\instDecodeComand|state.ZM2~regout\) # ((\instDecodeComand|state.ZSIM~regout\) # (\instDecodeComand|state.ZVM~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.ZM1~regout\,
	datab => \instDecodeComand|state.ZM2~regout\,
	datac => \instDecodeComand|state.ZSIM~regout\,
	datad => \instDecodeComand|state.ZVM~regout\,
	combout => \instDecodeComand|Selector0~2_combout\);

-- Location: LCCOMB_X14_Y10_N2
\instDecodeComand|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~5_combout\ = ((\instSerialPort|poCM\(3)) # ((\instSerialPort|poCM\(2) & \instSerialPort|poCM\(1)))) # (!\instDecodeComand|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal1~0_combout\,
	datab => \instSerialPort|poCM\(2),
	datac => \instSerialPort|poCM\(3),
	datad => \instSerialPort|poCM\(1),
	combout => \instDecodeComand|Selector0~5_combout\);

-- Location: LCFF_X19_Y11_N1
\instDecodeComand|next_state.ZVM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~41_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.ZVM~regout\);

-- Location: LCFF_X19_Y11_N3
\instDecodeComand|next_state.ZSIM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state.ZSIM~feeder_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.ZSIM~regout\);

-- Location: LCFF_X14_Y11_N9
\instDecodeComand|VelMedU[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~4_combout\,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(3));

-- Location: LCFF_X14_Y11_N7
\instDecodeComand|VelMedD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~2_combout\,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(2));

-- Location: LCFF_X14_Y11_N21
\instDecodeComand|VelMedD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|Add4~4_combout\,
	sload => VCC,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(3));

-- Location: LCFF_X14_Y11_N13
\instDecodeComand|VelMedU[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~8_combout\,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(5));

-- Location: LCFF_X14_Y11_N17
\instDecodeComand|VelMedU[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~12_combout\,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(7));

-- Location: LCCOMB_X19_Y11_N0
\instDecodeComand|next_state~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~41_combout\ = (\instDecodeComand|process_0~3_combout\ & (\instDecodeComand|process_0~2_combout\ & \instDecodeComand|state.VEL_MED_U~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|process_0~3_combout\,
	datac => \instDecodeComand|process_0~2_combout\,
	datad => \instDecodeComand|state.VEL_MED_U~regout\,
	combout => \instDecodeComand|next_state~41_combout\);

-- Location: LCFF_X19_Y11_N31
\instDecodeComand|state.SIMX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|state.SIMX~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.SIMX~regout\);

-- Location: LCFF_X15_Y11_N21
\instDecodeComand|next_state.SIMX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|state.SIM~regout\,
	sload => VCC,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.SIMX~regout\);

-- Location: LCFF_X15_Y11_N25
\instDecodeComand|state.SIM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|state.SIM~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.SIM~regout\);

-- Location: LCFF_X15_Y11_N29
\instDecodeComand|next_state.SIM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~43_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.SIM~regout\);

-- Location: LCCOMB_X15_Y11_N28
\instDecodeComand|next_state~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~43_combout\ = (\instDecodeComand|Equal0~1_combout\ & (!\instSerialPort|poCM\(0) & (\instDecodeComand|state.COMMAND~regout\ & \instDecodeComand|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal0~1_combout\,
	datab => \instSerialPort|poCM\(0),
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|Equal1~2_combout\,
	combout => \instDecodeComand|next_state~43_combout\);

-- Location: LCCOMB_X17_Y11_N10
\instDecodeComand|poHEX_aux2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX_aux2[4]~feeder_combout\ = \instSerialPort|poCM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|poCM\(0),
	combout => \instDecodeComand|poHEX_aux2[4]~feeder_combout\);

-- Location: LCCOMB_X17_Y11_N6
\instDecodeComand|M2CountU[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2CountU[1]~feeder_combout\ = \instSerialPort|poCM\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|poCM\(1),
	combout => \instDecodeComand|M2CountU[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y10_N6
\instDecodeComand|M1CountU[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1CountU[1]~feeder_combout\ = \instSerialPort|poCM\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|poCM\(1),
	combout => \instDecodeComand|M1CountU[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N22
\instDecodeComand|poHEX2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX2[3]~feeder_combout\ = \instDecodeComand|M2CountD\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|M2CountD\(3),
	combout => \instDecodeComand|poHEX2[3]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N26
\instDecodeComand|poHEX2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX2[0]~feeder_combout\ = \instDecodeComand|M2CountD\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|M2CountD\(0),
	combout => \instDecodeComand|poHEX2[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N12
\instDecodeComand|poHEX2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX2[4]~feeder_combout\ = \instDecodeComand|poHEX_aux2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|poHEX_aux2\(4),
	combout => \instDecodeComand|poHEX2[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N26
\instDecodeComand|state.ZVM~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|state.ZVM~feeder_combout\ = \instDecodeComand|next_state.ZVM~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|next_state.ZVM~regout\,
	combout => \instDecodeComand|state.ZVM~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N2
\instDecodeComand|next_state.ZSIM~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state.ZSIM~feeder_combout\ = \instDecodeComand|state.SIMX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|state.SIMX~regout\,
	combout => \instDecodeComand|next_state.ZSIM~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N30
\instDecodeComand|state.SIMX~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|state.SIMX~feeder_combout\ = \instDecodeComand|next_state.SIMX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|next_state.SIMX~regout\,
	combout => \instDecodeComand|state.SIMX~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N24
\instDecodeComand|state.SIM~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|state.SIM~feeder_combout\ = \instDecodeComand|next_state.SIM~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|next_state.SIM~regout\,
	combout => \instDecodeComand|state.SIM~feeder_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RX~I\ : cycloneii_io
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
	padio => ww_RX,
	combout => \RX~combout\);

-- Location: LCCOMB_X20_Y8_N0
\instBaudRate|auxCount[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[0]~13_combout\ = \instBaudRate|auxCount\(0) $ (VCC)
-- \instBaudRate|auxCount[0]~14\ = CARRY(\instBaudRate|auxCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(0),
	datad => VCC,
	combout => \instBaudRate|auxCount[0]~13_combout\,
	cout => \instBaudRate|auxCount[0]~14\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENABLE~I\ : cycloneii_io
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
	padio => ww_ENABLE,
	combout => \ENABLE~combout\);

-- Location: LCCOMB_X20_Y8_N10
\instBaudRate|auxCount[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[5]~25_combout\ = (\instBaudRate|auxCount\(5) & (!\instBaudRate|auxCount[4]~24\)) # (!\instBaudRate|auxCount\(5) & ((\instBaudRate|auxCount[4]~24\) # (GND)))
-- \instBaudRate|auxCount[5]~26\ = CARRY((!\instBaudRate|auxCount[4]~24\) # (!\instBaudRate|auxCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(5),
	datad => VCC,
	cin => \instBaudRate|auxCount[4]~24\,
	combout => \instBaudRate|auxCount[5]~25_combout\,
	cout => \instBaudRate|auxCount[5]~26\);

-- Location: LCCOMB_X20_Y8_N14
\instBaudRate|auxCount[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[7]~29_combout\ = (\instBaudRate|auxCount\(7) & (!\instBaudRate|auxCount[6]~28\)) # (!\instBaudRate|auxCount\(7) & ((\instBaudRate|auxCount[6]~28\) # (GND)))
-- \instBaudRate|auxCount[7]~30\ = CARRY((!\instBaudRate|auxCount[6]~28\) # (!\instBaudRate|auxCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(7),
	datad => VCC,
	cin => \instBaudRate|auxCount[6]~28\,
	combout => \instBaudRate|auxCount[7]~29_combout\,
	cout => \instBaudRate|auxCount[7]~30\);

-- Location: LCCOMB_X22_Y8_N24
\instBaudRate|auxCount[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[3]~20_combout\ = (\instBaudRate|process_0~0_combout\ & ((!\RX~combout\))) # (!\instBaudRate|process_0~0_combout\ & (\ENABLE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datac => \RX~combout\,
	datad => \instBaudRate|process_0~0_combout\,
	combout => \instBaudRate|auxCount[3]~20_combout\);

-- Location: LCFF_X20_Y8_N15
\instBaudRate|auxCount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[7]~29_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(7));

-- Location: LCCOMB_X20_Y8_N28
\instBaudRate|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal1~0_combout\ = (\instBaudRate|auxCount\(8)) # ((\instBaudRate|auxCount\(7)) # ((!\instBaudRate|auxCount\(0)) # (!\instBaudRate|auxCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(8),
	datab => \instBaudRate|auxCount\(7),
	datac => \instBaudRate|auxCount\(2),
	datad => \instBaudRate|auxCount\(0),
	combout => \instBaudRate|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\instBaudRate|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal1~1_combout\ = (\instBaudRate|auxCount\(3)) # ((\instBaudRate|auxCount\(5)) # ((!\instBaudRate|auxCount\(1)) # (!\instBaudRate|auxCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(3),
	datab => \instBaudRate|auxCount\(5),
	datac => \instBaudRate|auxCount\(4),
	datad => \instBaudRate|auxCount\(1),
	combout => \instBaudRate|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y8_N18
\instBaudRate|auxCount[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[9]~33_combout\ = (\instBaudRate|auxCount\(9) & (!\instBaudRate|auxCount[8]~32\)) # (!\instBaudRate|auxCount\(9) & ((\instBaudRate|auxCount[8]~32\) # (GND)))
-- \instBaudRate|auxCount[9]~34\ = CARRY((!\instBaudRate|auxCount[8]~32\) # (!\instBaudRate|auxCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(9),
	datad => VCC,
	cin => \instBaudRate|auxCount[8]~32\,
	combout => \instBaudRate|auxCount[9]~33_combout\,
	cout => \instBaudRate|auxCount[9]~34\);

-- Location: LCFF_X20_Y8_N19
\instBaudRate|auxCount[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[9]~33_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(9));

-- Location: LCCOMB_X20_Y8_N20
\instBaudRate|auxCount[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[10]~35_combout\ = (\instBaudRate|auxCount\(10) & (\instBaudRate|auxCount[9]~34\ $ (GND))) # (!\instBaudRate|auxCount\(10) & (!\instBaudRate|auxCount[9]~34\ & VCC))
-- \instBaudRate|auxCount[10]~36\ = CARRY((\instBaudRate|auxCount\(10) & !\instBaudRate|auxCount[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(10),
	datad => VCC,
	cin => \instBaudRate|auxCount[9]~34\,
	combout => \instBaudRate|auxCount[10]~35_combout\,
	cout => \instBaudRate|auxCount[10]~36\);

-- Location: LCCOMB_X20_Y8_N22
\instBaudRate|auxCount[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[11]~37_combout\ = (\instBaudRate|auxCount\(11) & (!\instBaudRate|auxCount[10]~36\)) # (!\instBaudRate|auxCount\(11) & ((\instBaudRate|auxCount[10]~36\) # (GND)))
-- \instBaudRate|auxCount[11]~38\ = CARRY((!\instBaudRate|auxCount[10]~36\) # (!\instBaudRate|auxCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(11),
	datad => VCC,
	cin => \instBaudRate|auxCount[10]~36\,
	combout => \instBaudRate|auxCount[11]~37_combout\,
	cout => \instBaudRate|auxCount[11]~38\);

-- Location: LCFF_X20_Y8_N23
\instBaudRate|auxCount[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[11]~37_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(11));

-- Location: LCCOMB_X20_Y8_N24
\instBaudRate|auxCount[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[12]~39_combout\ = \instBaudRate|auxCount\(12) $ (!\instBaudRate|auxCount[11]~38\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(12),
	cin => \instBaudRate|auxCount[11]~38\,
	combout => \instBaudRate|auxCount[12]~39_combout\);

-- Location: LCFF_X20_Y8_N25
\instBaudRate|auxCount[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[12]~39_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(12));

-- Location: LCCOMB_X22_Y8_N12
\instBaudRate|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal1~3_combout\ = (\instBaudRate|Equal1~2_combout\) # ((\instBaudRate|Equal1~0_combout\) # ((\instBaudRate|Equal1~1_combout\) # (!\instBaudRate|auxCount\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal1~2_combout\,
	datab => \instBaudRate|Equal1~0_combout\,
	datac => \instBaudRate|Equal1~1_combout\,
	datad => \instBaudRate|auxCount\(12),
	combout => \instBaudRate|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y8_N14
\instBaudRate|uartCounter[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[1]~4_combout\ = (\instBaudRate|uartCounter[1]~3_combout\ & (!\instBaudRate|process_0~0_combout\ & (\ENABLE~combout\ & !\instBaudRate|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter[1]~3_combout\,
	datab => \instBaudRate|process_0~0_combout\,
	datac => \ENABLE~combout\,
	datad => \instBaudRate|Equal1~3_combout\,
	combout => \instBaudRate|uartCounter[1]~4_combout\);

-- Location: LCCOMB_X22_Y8_N26
\instBaudRate|uartCounter[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[3]~6_combout\ = (\RESET~combout\) # ((\instBaudRate|uartCounter[3]~5_combout\ & ((\instBaudRate|process_0~0_combout\) # (\instBaudRate|Equal1~3_combout\))) # (!\instBaudRate|uartCounter[3]~5_combout\ & 
-- (!\instBaudRate|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter[3]~5_combout\,
	datab => \instBaudRate|process_0~0_combout\,
	datac => \RESET~combout\,
	datad => \instBaudRate|Equal1~3_combout\,
	combout => \instBaudRate|uartCounter[3]~6_combout\);

-- Location: LCCOMB_X22_Y8_N16
\instBaudRate|uartCounter[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[1]~9_combout\ = (\instBaudRate|uartCounter[3]~6_combout\ & (((\instBaudRate|uartCounter\(1))))) # (!\instBaudRate|uartCounter[3]~6_combout\ & (\instBaudRate|uartCounter[1]~4_combout\ & (\instBaudRate|uartCounter\(0) $ 
-- (\instBaudRate|uartCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter\(0),
	datab => \instBaudRate|uartCounter[1]~4_combout\,
	datac => \instBaudRate|uartCounter\(1),
	datad => \instBaudRate|uartCounter[3]~6_combout\,
	combout => \instBaudRate|uartCounter[1]~9_combout\);

-- Location: LCFF_X22_Y8_N17
\instBaudRate|uartCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|uartCounter[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|uartCounter\(1));

-- Location: LCCOMB_X22_Y8_N28
\instBaudRate|uartCounter[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[2]~7_combout\ = (\instBaudRate|uartCounter[3]~6_combout\ & (((\instBaudRate|uartCounter\(2))))) # (!\instBaudRate|uartCounter[3]~6_combout\ & (\instBaudRate|Add1~0_combout\ & (\instBaudRate|uartCounter[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Add1~0_combout\,
	datab => \instBaudRate|uartCounter[1]~4_combout\,
	datac => \instBaudRate|uartCounter\(2),
	datad => \instBaudRate|uartCounter[3]~6_combout\,
	combout => \instBaudRate|uartCounter[2]~7_combout\);

-- Location: LCFF_X22_Y8_N29
\instBaudRate|uartCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|uartCounter[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|uartCounter\(2));

-- Location: LCCOMB_X22_Y8_N30
\instBaudRate|uartCounter[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[0]~10_combout\ = (!\instBaudRate|uartCounter\(0) & (((\instBaudRate|uartCounter\(2)) # (!\instBaudRate|uartCounter\(1))) # (!\instBaudRate|uartCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter\(3),
	datab => \instBaudRate|uartCounter\(0),
	datac => \instBaudRate|uartCounter\(1),
	datad => \instBaudRate|uartCounter\(2),
	combout => \instBaudRate|uartCounter[0]~10_combout\);

-- Location: LCCOMB_X22_Y8_N18
\instBaudRate|uartCounter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[0]~0_combout\ = (\instBaudRate|Equal1~3_combout\) # ((\instBaudRate|uartCounter[0]~10_combout\) # ((\instBaudRate|process_0~0_combout\) # (!\ENABLE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal1~3_combout\,
	datab => \instBaudRate|uartCounter[0]~10_combout\,
	datac => \ENABLE~combout\,
	datad => \instBaudRate|process_0~0_combout\,
	combout => \instBaudRate|uartCounter[0]~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\instBaudRate|uartCounter[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|uartCounter[0]~feeder_combout\ = \instBaudRate|uartCounter[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instBaudRate|uartCounter[0]~0_combout\,
	combout => \instBaudRate|uartCounter[0]~feeder_combout\);

-- Location: LCFF_X22_Y8_N1
\instBaudRate|uartCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|uartCounter[0]~feeder_combout\,
	sdata => \instBaudRate|uartCounter\(0),
	sload => \instBaudRate|uartCounter[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|uartCounter\(0));

-- Location: LCCOMB_X22_Y8_N2
\instBaudRate|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|process_0~0_combout\ = (!\instBaudRate|uartCounter\(3) & (!\instBaudRate|uartCounter\(0) & (!\instBaudRate|uartCounter\(1) & !\instBaudRate|uartCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|uartCounter\(3),
	datab => \instBaudRate|uartCounter\(0),
	datac => \instBaudRate|uartCounter\(1),
	datad => \instBaudRate|uartCounter\(2),
	combout => \instBaudRate|process_0~0_combout\);

-- Location: LCCOMB_X22_Y8_N22
\instBaudRate|auxCount[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[3]~19_combout\ = ((\instBaudRate|process_0~0_combout\) # (!\ENABLE~combout\)) # (!\instBaudRate|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal1~3_combout\,
	datac => \ENABLE~combout\,
	datad => \instBaudRate|process_0~0_combout\,
	combout => \instBaudRate|auxCount[3]~19_combout\);

-- Location: LCFF_X20_Y8_N1
\instBaudRate|auxCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[0]~13_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(0));

-- Location: LCCOMB_X20_Y8_N2
\instBaudRate|auxCount[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[1]~15_combout\ = (\instBaudRate|auxCount\(1) & (!\instBaudRate|auxCount[0]~14\)) # (!\instBaudRate|auxCount\(1) & ((\instBaudRate|auxCount[0]~14\) # (GND)))
-- \instBaudRate|auxCount[1]~16\ = CARRY((!\instBaudRate|auxCount[0]~14\) # (!\instBaudRate|auxCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(1),
	datad => VCC,
	cin => \instBaudRate|auxCount[0]~14\,
	combout => \instBaudRate|auxCount[1]~15_combout\,
	cout => \instBaudRate|auxCount[1]~16\);

-- Location: LCFF_X20_Y8_N3
\instBaudRate|auxCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[1]~15_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(1));

-- Location: LCCOMB_X20_Y8_N4
\instBaudRate|auxCount[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[2]~17_combout\ = (\instBaudRate|auxCount\(2) & (\instBaudRate|auxCount[1]~16\ $ (GND))) # (!\instBaudRate|auxCount\(2) & (!\instBaudRate|auxCount[1]~16\ & VCC))
-- \instBaudRate|auxCount[2]~18\ = CARRY((\instBaudRate|auxCount\(2) & !\instBaudRate|auxCount[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(2),
	datad => VCC,
	cin => \instBaudRate|auxCount[1]~16\,
	combout => \instBaudRate|auxCount[2]~17_combout\,
	cout => \instBaudRate|auxCount[2]~18\);

-- Location: LCFF_X20_Y8_N5
\instBaudRate|auxCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[2]~17_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(2));

-- Location: LCCOMB_X20_Y8_N8
\instBaudRate|auxCount[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount[4]~23_combout\ = (\instBaudRate|auxCount\(4) & (\instBaudRate|auxCount[3]~22\ $ (GND))) # (!\instBaudRate|auxCount\(4) & (!\instBaudRate|auxCount[3]~22\ & VCC))
-- \instBaudRate|auxCount[4]~24\ = CARRY((\instBaudRate|auxCount\(4) & !\instBaudRate|auxCount[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount\(4),
	datad => VCC,
	cin => \instBaudRate|auxCount[3]~22\,
	combout => \instBaudRate|auxCount[4]~23_combout\,
	cout => \instBaudRate|auxCount[4]~24\);

-- Location: LCFF_X20_Y8_N9
\instBaudRate|auxCount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[4]~23_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(4));

-- Location: LCFF_X20_Y8_N11
\instBaudRate|auxCount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[5]~25_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(5));

-- Location: LCCOMB_X19_Y8_N26
\instBaudRate|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal5~1_combout\ = (\instBaudRate|auxCount\(3) & (\instBaudRate|auxCount\(5) & (!\instBaudRate|auxCount\(4) & !\instBaudRate|auxCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(3),
	datab => \instBaudRate|auxCount\(5),
	datac => \instBaudRate|auxCount\(4),
	datad => \instBaudRate|auxCount\(1),
	combout => \instBaudRate|Equal5~1_combout\);

-- Location: LCCOMB_X19_Y8_N24
\instSerialPort|poCM[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|poCM[0]~1_combout\ = (!\RESET~combout\ & !\instBaudRate|auxCount\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~combout\,
	datad => \instBaudRate|auxCount\(12),
	combout => \instSerialPort|poCM[0]~1_combout\);

-- Location: LCCOMB_X19_Y8_N0
\instBaudRate|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal5~0_combout\ = (!\instBaudRate|auxCount\(8) & (!\instBaudRate|auxCount\(7) & (!\instBaudRate|auxCount\(0) & \instBaudRate|auxCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(8),
	datab => \instBaudRate|auxCount\(7),
	datac => \instBaudRate|auxCount\(0),
	datad => \instBaudRate|auxCount\(2),
	combout => \instBaudRate|Equal5~0_combout\);

-- Location: LCCOMB_X19_Y8_N10
\instSerialPort|poCM[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|poCM[0]~2_combout\ = (\instBaudRate|Equal5~2_combout\ & (\instBaudRate|Equal5~1_combout\ & (\instSerialPort|poCM[0]~1_combout\ & \instBaudRate|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal5~2_combout\,
	datab => \instBaudRate|Equal5~1_combout\,
	datac => \instSerialPort|poCM[0]~1_combout\,
	datad => \instBaudRate|Equal5~0_combout\,
	combout => \instSerialPort|poCM[0]~2_combout\);

-- Location: LCCOMB_X14_Y10_N8
\instSerialPort|auxX[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[3]~5_combout\ = (\instSerialPort|state.BIT4~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(3)))))) # (!\instSerialPort|state.BIT4~regout\ & 
-- (((\instSerialPort|auxX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|state.BIT4~regout\,
	datab => \RX~combout\,
	datac => \instSerialPort|auxX\(3),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[3]~5_combout\);

-- Location: LCFF_X14_Y10_N9
\instSerialPort|auxX[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(3));

-- Location: LCFF_X20_Y8_N21
\instBaudRate|auxCount[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount[10]~35_combout\,
	aclr => \RESET~combout\,
	sclr => \instBaudRate|auxCount[3]~19_combout\,
	ena => \instBaudRate|auxCount[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount\(10));

-- Location: LCCOMB_X20_Y8_N26
\instBaudRate|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal5~2_combout\ = (!\instBaudRate|auxCount\(6) & (\instBaudRate|auxCount\(11) & (!\instBaudRate|auxCount\(10) & \instBaudRate|auxCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount\(6),
	datab => \instBaudRate|auxCount\(11),
	datac => \instBaudRate|auxCount\(10),
	datad => \instBaudRate|auxCount\(9),
	combout => \instBaudRate|Equal5~2_combout\);

-- Location: LCCOMB_X19_Y8_N20
\instBaudRate|Equal5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal5~3_combout\ = (\instBaudRate|Equal5~1_combout\ & (\instBaudRate|Equal5~0_combout\ & (\instBaudRate|Equal5~2_combout\ & !\instBaudRate|auxCount\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal5~1_combout\,
	datab => \instBaudRate|Equal5~0_combout\,
	datac => \instBaudRate|Equal5~2_combout\,
	datad => \instBaudRate|auxCount\(12),
	combout => \instBaudRate|Equal5~3_combout\);

-- Location: LCCOMB_X15_Y8_N28
\instSerialPort|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector0~0_combout\ = (\RX~combout\ & (!\instSerialPort|state.STOP~regout\ & ((\instSerialPort|next_state.IDLE~regout\) # (\instSerialPort|state.IDLE~regout\)))) # (!\RX~combout\ & (((\instSerialPort|next_state.IDLE~regout\)) # 
-- (!\instSerialPort|state.STOP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \instSerialPort|state.STOP~regout\,
	datac => \instSerialPort|next_state.IDLE~regout\,
	datad => \instSerialPort|state.IDLE~regout\,
	combout => \instSerialPort|Selector0~0_combout\);

-- Location: LCFF_X15_Y8_N29
\instSerialPort|next_state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector0~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.IDLE~regout\);

-- Location: LCCOMB_X15_Y8_N8
\instSerialPort|state.IDLE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.IDLE~feeder_combout\ = \instSerialPort|next_state.IDLE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.IDLE~regout\,
	combout => \instSerialPort|state.IDLE~feeder_combout\);

-- Location: LCFF_X15_Y8_N9
\instSerialPort|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.IDLE~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.IDLE~regout\);

-- Location: LCCOMB_X15_Y8_N4
\instSerialPort|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector9~0_combout\ = (\RX~combout\ & (!\instSerialPort|state.IDLE~regout\)) # (!\RX~combout\ & ((\instSerialPort|state.STOP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \instSerialPort|state.IDLE~regout\,
	datac => \instSerialPort|state.STOP~regout\,
	combout => \instSerialPort|Selector9~0_combout\);

-- Location: LCCOMB_X15_Y8_N16
\instSerialPort|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector2~0_combout\ = (\RX~combout\ & (((\instSerialPort|next_state.BIT1~regout\ & !\instSerialPort|state.IDLE~regout\)))) # (!\RX~combout\ & (((\instSerialPort|state.STOP~regout\ & \instSerialPort|next_state.BIT1~regout\)) # 
-- (!\instSerialPort|state.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \instSerialPort|state.STOP~regout\,
	datac => \instSerialPort|next_state.BIT1~regout\,
	datad => \instSerialPort|state.IDLE~regout\,
	combout => \instSerialPort|Selector2~0_combout\);

-- Location: LCFF_X15_Y8_N17
\instSerialPort|next_state.BIT1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector2~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT1~regout\);

-- Location: LCCOMB_X19_Y8_N6
\instSerialPort|state.BIT1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT1~feeder_combout\ = \instSerialPort|next_state.BIT1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT1~regout\,
	combout => \instSerialPort|state.BIT1~feeder_combout\);

-- Location: LCFF_X19_Y8_N7
\instSerialPort|state.BIT1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT1~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT1~regout\);

-- Location: LCCOMB_X15_Y8_N26
\instSerialPort|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector3~0_combout\ = (\instSerialPort|state.BIT1~regout\) # ((\instSerialPort|next_state.BIT2~regout\ & \instSerialPort|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|state.BIT1~regout\,
	datac => \instSerialPort|next_state.BIT2~regout\,
	datad => \instSerialPort|Selector9~0_combout\,
	combout => \instSerialPort|Selector3~0_combout\);

-- Location: LCFF_X15_Y8_N27
\instSerialPort|next_state.BIT2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector3~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT2~regout\);

-- Location: LCCOMB_X15_Y8_N14
\instSerialPort|state.BIT2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT2~feeder_combout\ = \instSerialPort|next_state.BIT2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT2~regout\,
	combout => \instSerialPort|state.BIT2~feeder_combout\);

-- Location: LCFF_X15_Y8_N15
\instSerialPort|state.BIT2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT2~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT2~regout\);

-- Location: LCCOMB_X15_Y8_N0
\instSerialPort|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector4~0_combout\ = (\instSerialPort|state.BIT2~regout\) # ((\instSerialPort|next_state.BIT3~regout\ & \instSerialPort|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|state.BIT2~regout\,
	datac => \instSerialPort|next_state.BIT3~regout\,
	datad => \instSerialPort|Selector9~0_combout\,
	combout => \instSerialPort|Selector4~0_combout\);

-- Location: LCFF_X15_Y8_N1
\instSerialPort|next_state.BIT3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector4~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT3~regout\);

-- Location: LCCOMB_X15_Y8_N18
\instSerialPort|state.BIT3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT3~feeder_combout\ = \instSerialPort|next_state.BIT3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT3~regout\,
	combout => \instSerialPort|state.BIT3~feeder_combout\);

-- Location: LCFF_X15_Y8_N19
\instSerialPort|state.BIT3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT3~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT3~regout\);

-- Location: LCCOMB_X15_Y8_N2
\instSerialPort|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector5~0_combout\ = (\instSerialPort|state.BIT3~regout\) # ((\instSerialPort|Selector9~0_combout\ & \instSerialPort|next_state.BIT4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|Selector9~0_combout\,
	datac => \instSerialPort|next_state.BIT4~regout\,
	datad => \instSerialPort|state.BIT3~regout\,
	combout => \instSerialPort|Selector5~0_combout\);

-- Location: LCFF_X15_Y8_N3
\instSerialPort|next_state.BIT4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector5~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT4~regout\);

-- Location: LCCOMB_X15_Y8_N30
\instSerialPort|state.BIT4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT4~feeder_combout\ = \instSerialPort|next_state.BIT4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT4~regout\,
	combout => \instSerialPort|state.BIT4~feeder_combout\);

-- Location: LCFF_X15_Y8_N31
\instSerialPort|state.BIT4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT4~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT4~regout\);

-- Location: LCCOMB_X15_Y8_N22
\instSerialPort|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector6~0_combout\ = (\instSerialPort|state.BIT4~regout\) # ((\instSerialPort|Selector9~0_combout\ & \instSerialPort|next_state.BIT5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|Selector9~0_combout\,
	datac => \instSerialPort|next_state.BIT5~regout\,
	datad => \instSerialPort|state.BIT4~regout\,
	combout => \instSerialPort|Selector6~0_combout\);

-- Location: LCFF_X15_Y8_N23
\instSerialPort|next_state.BIT5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector6~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT5~regout\);

-- Location: LCCOMB_X15_Y8_N10
\instSerialPort|state.BIT5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT5~feeder_combout\ = \instSerialPort|next_state.BIT5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT5~regout\,
	combout => \instSerialPort|state.BIT5~feeder_combout\);

-- Location: LCFF_X15_Y8_N11
\instSerialPort|state.BIT5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT5~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT5~regout\);

-- Location: LCCOMB_X15_Y8_N6
\instSerialPort|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector7~0_combout\ = (\instSerialPort|state.BIT5~regout\) # ((\instSerialPort|Selector9~0_combout\ & \instSerialPort|next_state.BIT6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|Selector9~0_combout\,
	datac => \instSerialPort|next_state.BIT6~regout\,
	datad => \instSerialPort|state.BIT5~regout\,
	combout => \instSerialPort|Selector7~0_combout\);

-- Location: LCFF_X15_Y8_N7
\instSerialPort|next_state.BIT6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector7~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT6~regout\);

-- Location: LCCOMB_X10_Y10_N26
\instSerialPort|state.BIT6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT6~feeder_combout\ = \instSerialPort|next_state.BIT6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT6~regout\,
	combout => \instSerialPort|state.BIT6~feeder_combout\);

-- Location: LCFF_X10_Y10_N27
\instSerialPort|state.BIT6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT6~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT6~regout\);

-- Location: LCCOMB_X14_Y7_N10
\instSerialPort|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector8~0_combout\ = (\instSerialPort|state.BIT6~regout\) # ((\instSerialPort|next_state.BIT7~regout\ & \instSerialPort|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|state.BIT6~regout\,
	datac => \instSerialPort|next_state.BIT7~regout\,
	datad => \instSerialPort|Selector9~0_combout\,
	combout => \instSerialPort|Selector8~0_combout\);

-- Location: LCFF_X14_Y7_N11
\instSerialPort|next_state.BIT7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector8~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT7~regout\);

-- Location: LCCOMB_X19_Y11_N16
\instSerialPort|state.BIT7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT7~feeder_combout\ = \instSerialPort|next_state.BIT7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT7~regout\,
	combout => \instSerialPort|state.BIT7~feeder_combout\);

-- Location: LCFF_X19_Y11_N17
\instSerialPort|state.BIT7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT7~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT7~regout\);

-- Location: LCCOMB_X14_Y7_N20
\instSerialPort|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector9~1_combout\ = (\instSerialPort|state.BIT7~regout\) # ((\instSerialPort|Selector9~0_combout\ & \instSerialPort|next_state.BIT8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|Selector9~0_combout\,
	datac => \instSerialPort|next_state.BIT8~regout\,
	datad => \instSerialPort|state.BIT7~regout\,
	combout => \instSerialPort|Selector9~1_combout\);

-- Location: LCFF_X14_Y7_N21
\instSerialPort|next_state.BIT8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector9~1_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.BIT8~regout\);

-- Location: LCCOMB_X10_Y10_N8
\instSerialPort|state.BIT8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|state.BIT8~feeder_combout\ = \instSerialPort|next_state.BIT8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|next_state.BIT8~regout\,
	combout => \instSerialPort|state.BIT8~feeder_combout\);

-- Location: LCFF_X10_Y10_N9
\instSerialPort|state.BIT8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|state.BIT8~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.BIT8~regout\);

-- Location: LCCOMB_X15_Y8_N20
\instSerialPort|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|Selector10~0_combout\ = (\instSerialPort|state.BIT8~regout\) # ((\instSerialPort|Selector9~0_combout\ & \instSerialPort|next_state.STOP~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|Selector9~0_combout\,
	datac => \instSerialPort|next_state.STOP~regout\,
	datad => \instSerialPort|state.BIT8~regout\,
	combout => \instSerialPort|Selector10~0_combout\);

-- Location: LCFF_X15_Y8_N21
\instSerialPort|next_state.STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|Selector10~0_combout\,
	aclr => \RESET~combout\,
	ena => \instBaudRate|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|next_state.STOP~regout\);

-- Location: LCFF_X15_Y8_N5
\instSerialPort|state.STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|next_state.STOP~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|state.STOP~regout\);

-- Location: LCCOMB_X14_Y10_N6
\instSerialPort|poCM[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|poCM[0]~0_combout\ = (!\RESET~combout\ & (\RX~combout\ & (\instBaudRate|Equal5~3_combout\ & \instSerialPort|state.STOP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datab => \RX~combout\,
	datac => \instBaudRate|Equal5~3_combout\,
	datad => \instSerialPort|state.STOP~regout\,
	combout => \instSerialPort|poCM[0]~0_combout\);

-- Location: LCFF_X14_Y10_N19
\instSerialPort|poCM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(3),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(3));

-- Location: LCCOMB_X19_Y8_N22
\instSerialPort|auxX[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[0]~1_combout\ = (\instSerialPort|state.BIT1~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(0)))))) # (!\instSerialPort|state.BIT1~regout\ & 
-- (((\instSerialPort|auxX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \instSerialPort|state.BIT1~regout\,
	datac => \instSerialPort|auxX\(0),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[0]~1_combout\);

-- Location: LCFF_X19_Y8_N23
\instSerialPort|auxX[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(0));

-- Location: LCFF_X14_Y10_N25
\instSerialPort|poCM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(0),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(0));

-- Location: LCCOMB_X14_Y10_N12
\instSerialPort|auxX[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[6]~0_combout\ = (\instSerialPort|state.BIT7~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(6)))))) # (!\instSerialPort|state.BIT7~regout\ & 
-- (((\instSerialPort|auxX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|state.BIT7~regout\,
	datab => \RX~combout\,
	datac => \instSerialPort|auxX\(6),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[6]~0_combout\);

-- Location: LCFF_X14_Y10_N13
\instSerialPort|auxX[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(6));

-- Location: LCCOMB_X14_Y10_N14
\instSerialPort|poCM[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|poCM[6]~feeder_combout\ = \instSerialPort|auxX\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|auxX\(6),
	combout => \instSerialPort|poCM[6]~feeder_combout\);

-- Location: LCFF_X14_Y10_N15
\instSerialPort|poCM[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|poCM[6]~feeder_combout\,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(6));

-- Location: LCCOMB_X14_Y10_N28
\instSerialPort|auxX[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[7]~2_combout\ = (\instSerialPort|state.BIT8~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(7)))))) # (!\instSerialPort|state.BIT8~regout\ & 
-- (((\instSerialPort|auxX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|state.BIT8~regout\,
	datab => \RX~combout\,
	datac => \instSerialPort|auxX\(7),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[7]~2_combout\);

-- Location: LCFF_X14_Y10_N29
\instSerialPort|auxX[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(7));

-- Location: LCFF_X14_Y10_N27
\instSerialPort|poCM[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(7),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(7));

-- Location: LCCOMB_X14_Y10_N20
\instSerialPort|auxX[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[5]~3_combout\ = (\instSerialPort|state.BIT6~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(5)))))) # (!\instSerialPort|state.BIT6~regout\ & 
-- (((\instSerialPort|auxX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|state.BIT6~regout\,
	datab => \RX~combout\,
	datac => \instSerialPort|auxX\(5),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[5]~3_combout\);

-- Location: LCFF_X14_Y10_N21
\instSerialPort|auxX[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(5));

-- Location: LCFF_X14_Y10_N11
\instSerialPort|poCM[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(5),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(5));

-- Location: LCCOMB_X14_Y10_N26
\instDecodeComand|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal1~0_combout\ = (\instSerialPort|poCM\(4) & (!\instSerialPort|poCM\(6) & (!\instSerialPort|poCM\(7) & \instSerialPort|poCM\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(4),
	datab => \instSerialPort|poCM\(6),
	datac => \instSerialPort|poCM\(7),
	datad => \instSerialPort|poCM\(5),
	combout => \instDecodeComand|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y10_N24
\instDecodeComand|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal2~0_combout\ = (!\instSerialPort|poCM\(2) & (!\instSerialPort|poCM\(3) & (!\instSerialPort|poCM\(0) & \instDecodeComand|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(2),
	datab => \instSerialPort|poCM\(3),
	datac => \instSerialPort|poCM\(0),
	datad => \instDecodeComand|Equal1~0_combout\,
	combout => \instDecodeComand|Equal2~0_combout\);

-- Location: LCCOMB_X15_Y10_N14
\instDecodeComand|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector1~0_combout\ = (!\instSerialPort|poCM\(1) & (\instDecodeComand|Equal2~0_combout\ & ((\instDecodeComand|state.COMMAND~regout\) # (\instDecodeComand|state.STOP~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(1),
	datab => \instDecodeComand|Equal2~0_combout\,
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|state.STOP~regout\,
	combout => \instDecodeComand|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y7_N8
\instSerialPort|poDR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|poDR~0_combout\ = (\RX~combout\ & (\instSerialPort|state.STOP~regout\ & \instBaudRate|Equal5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX~combout\,
	datac => \instSerialPort|state.STOP~regout\,
	datad => \instBaudRate|Equal5~3_combout\,
	combout => \instSerialPort|poDR~0_combout\);

-- Location: LCFF_X14_Y7_N9
\instSerialPort|poDR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|poDR~0_combout\,
	ena => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poDR~regout\);

-- Location: LCCOMB_X15_Y10_N28
\instDecodeComand|next_state.IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state.IDLE~0_combout\ = (!\RESET~combout\ & \instSerialPort|poDR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datad => \instSerialPort|poDR~regout\,
	combout => \instDecodeComand|next_state.IDLE~0_combout\);

-- Location: LCFF_X15_Y10_N15
\instDecodeComand|next_state.STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector1~0_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.STOP~regout\);

-- Location: LCFF_X15_Y10_N5
\instDecodeComand|state.STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.STOP~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.STOP~regout\);

-- Location: LCCOMB_X17_Y11_N0
\instDecodeComand|M2CountU[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2CountU[0]~feeder_combout\ = \instSerialPort|poCM\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|poCM\(0),
	combout => \instDecodeComand|M2CountU[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y10_N24
\instDecodeComand|next_state~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~40_combout\ = (\instSerialPort|poCM\(1) & (\instDecodeComand|state.COMMAND~regout\ & \instDecodeComand|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(1),
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|Equal2~0_combout\,
	combout => \instDecodeComand|next_state~40_combout\);

-- Location: LCFF_X15_Y10_N25
\instDecodeComand|next_state.VEL_M2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~40_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.VEL_M2~regout\);

-- Location: LCFF_X15_Y10_N31
\instDecodeComand|state.VEL_M2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.VEL_M2~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.VEL_M2~regout\);

-- Location: LCCOMB_X15_Y10_N26
\instDecodeComand|next_state.VEL_M2_U~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state.VEL_M2_U~feeder_combout\ = \instDecodeComand|state.VEL_M2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|state.VEL_M2~regout\,
	combout => \instDecodeComand|next_state.VEL_M2_U~feeder_combout\);

-- Location: LCFF_X15_Y10_N27
\instDecodeComand|next_state.VEL_M2_U\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state.VEL_M2_U~feeder_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.VEL_M2_U~regout\);

-- Location: LCFF_X15_Y10_N19
\instDecodeComand|state.VEL_M2_U\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.VEL_M2_U~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.VEL_M2_U~regout\);

-- Location: LCCOMB_X15_Y10_N0
\instDecodeComand|M2CountU[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2CountU[3]~0_combout\ = (!\RESET~combout\ & (\instDecodeComand|state.VEL_M2_U~regout\ & \instSerialPort|poDR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datab => \instDecodeComand|state.VEL_M2_U~regout\,
	datad => \instSerialPort|poDR~regout\,
	combout => \instDecodeComand|M2CountU[3]~0_combout\);

-- Location: LCFF_X17_Y11_N1
\instDecodeComand|M2CountU[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2CountU[0]~feeder_combout\,
	ena => \instDecodeComand|M2CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountU\(0));

-- Location: LCFF_X17_Y11_N3
\instDecodeComand|M2CountU[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(3),
	sload => VCC,
	ena => \instDecodeComand|M2CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountU\(3));

-- Location: LCCOMB_X15_Y8_N24
\instSerialPort|auxX[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[2]~7_combout\ = (\instSerialPort|state.BIT3~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(2)))))) # (!\instSerialPort|state.BIT3~regout\ & 
-- (((\instSerialPort|auxX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \instSerialPort|state.BIT3~regout\,
	datac => \instSerialPort|auxX\(2),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[2]~7_combout\);

-- Location: LCFF_X15_Y8_N25
\instSerialPort|auxX[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(2));

-- Location: LCFF_X14_Y10_N31
\instSerialPort|poCM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(2),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(2));

-- Location: LCFF_X17_Y11_N13
\instDecodeComand|M2CountU[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(2),
	sload => VCC,
	ena => \instDecodeComand|M2CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountU\(2));

-- Location: LCCOMB_X17_Y11_N2
\instDecodeComand|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|process_0~1_combout\ = (!\instDecodeComand|M2CountU\(1) & (!\instDecodeComand|M2CountU\(3) & (\instDecodeComand|M2CountU\(0) $ (!\instDecodeComand|M2CountU\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M2CountU\(1),
	datab => \instDecodeComand|M2CountU\(0),
	datac => \instDecodeComand|M2CountU\(3),
	datad => \instDecodeComand|M2CountU\(2),
	combout => \instDecodeComand|process_0~1_combout\);

-- Location: LCCOMB_X15_Y10_N2
\instDecodeComand|next_state.VEL_M1_U~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state.VEL_M1_U~feeder_combout\ = \instDecodeComand|state.VEL_M1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|state.VEL_M1~regout\,
	combout => \instDecodeComand|next_state.VEL_M1_U~feeder_combout\);

-- Location: LCFF_X15_Y10_N3
\instDecodeComand|next_state.VEL_M1_U\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state.VEL_M1_U~feeder_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.VEL_M1_U~regout\);

-- Location: LCFF_X15_Y10_N21
\instDecodeComand|state.VEL_M1_U\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.VEL_M1_U~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.VEL_M1_U~regout\);

-- Location: LCCOMB_X15_Y10_N20
\instDecodeComand|M1CountU[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1CountU[3]~0_combout\ = (!\RESET~combout\ & (\instDecodeComand|state.VEL_M1_U~regout\ & \instSerialPort|poDR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datac => \instDecodeComand|state.VEL_M1_U~regout\,
	datad => \instSerialPort|poDR~regout\,
	combout => \instDecodeComand|M1CountU[3]~0_combout\);

-- Location: LCFF_X10_Y10_N1
\instDecodeComand|M1CountU[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(0),
	sload => VCC,
	ena => \instDecodeComand|M1CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountU\(0));

-- Location: LCFF_X10_Y10_N11
\instDecodeComand|M1CountU[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(3),
	sload => VCC,
	ena => \instDecodeComand|M1CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountU\(3));

-- Location: LCCOMB_X10_Y10_N20
\instDecodeComand|M1CountU[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1CountU[2]~feeder_combout\ = \instSerialPort|poCM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instSerialPort|poCM\(2),
	combout => \instDecodeComand|M1CountU[2]~feeder_combout\);

-- Location: LCFF_X10_Y10_N21
\instDecodeComand|M1CountU[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1CountU[2]~feeder_combout\,
	ena => \instDecodeComand|M1CountU[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountU\(2));

-- Location: LCCOMB_X10_Y10_N10
\instDecodeComand|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|process_0~0_combout\ = (!\instDecodeComand|M1CountU\(1) & (!\instDecodeComand|M1CountU\(3) & (\instDecodeComand|M1CountU\(0) $ (!\instDecodeComand|M1CountU\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountU\(1),
	datab => \instDecodeComand|M1CountU\(0),
	datac => \instDecodeComand|M1CountU\(3),
	datad => \instDecodeComand|M1CountU\(2),
	combout => \instDecodeComand|process_0~0_combout\);

-- Location: LCCOMB_X15_Y10_N18
\instDecodeComand|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~0_combout\ = (\instDecodeComand|state.VEL_M1_U~regout\ & (((!\instDecodeComand|process_0~1_combout\ & \instDecodeComand|state.VEL_M2_U~regout\)) # (!\instDecodeComand|process_0~0_combout\))) # 
-- (!\instDecodeComand|state.VEL_M1_U~regout\ & (!\instDecodeComand|process_0~1_combout\ & (\instDecodeComand|state.VEL_M2_U~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.VEL_M1_U~regout\,
	datab => \instDecodeComand|process_0~1_combout\,
	datac => \instDecodeComand|state.VEL_M2_U~regout\,
	datad => \instDecodeComand|process_0~0_combout\,
	combout => \instDecodeComand|Selector0~0_combout\);

-- Location: LCCOMB_X15_Y10_N4
\instDecodeComand|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~1_combout\ = (\instDecodeComand|Selector0~0_combout\) # ((\instDecodeComand|state.STOP~regout\ & ((\instSerialPort|poCM\(1)) # (!\instDecodeComand|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(1),
	datab => \instDecodeComand|Equal2~0_combout\,
	datac => \instDecodeComand|state.STOP~regout\,
	datad => \instDecodeComand|Selector0~0_combout\,
	combout => \instDecodeComand|Selector0~1_combout\);

-- Location: LCCOMB_X15_Y11_N0
\instDecodeComand|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal1~2_combout\ = (!\instSerialPort|poCM\(3) & \instDecodeComand|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instSerialPort|poCM\(3),
	datad => \instDecodeComand|Equal1~0_combout\,
	combout => \instDecodeComand|Equal1~2_combout\);

-- Location: LCCOMB_X15_Y11_N30
\instDecodeComand|next_state~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~44_combout\ = (\instDecodeComand|Equal0~1_combout\ & (\instSerialPort|poCM\(0) & (\instDecodeComand|state.COMMAND~regout\ & \instDecodeComand|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal0~1_combout\,
	datab => \instSerialPort|poCM\(0),
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|Equal1~2_combout\,
	combout => \instDecodeComand|next_state~44_combout\);

-- Location: LCFF_X15_Y11_N31
\instDecodeComand|next_state.CTRL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~44_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.CTRL~regout\);

-- Location: LCCOMB_X15_Y11_N10
\instDecodeComand|state.CTRL~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|state.CTRL~feeder_combout\ = \instDecodeComand|next_state.CTRL~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|next_state.CTRL~regout\,
	combout => \instDecodeComand|state.CTRL~feeder_combout\);

-- Location: LCFF_X15_Y11_N11
\instDecodeComand|state.CTRL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|state.CTRL~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.CTRL~regout\);

-- Location: LCCOMB_X15_Y11_N22
\instDecodeComand|next_state.CTRLX~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state.CTRLX~feeder_combout\ = \instDecodeComand|state.CTRL~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|state.CTRL~regout\,
	combout => \instDecodeComand|next_state.CTRLX~feeder_combout\);

-- Location: LCFF_X15_Y11_N23
\instDecodeComand|next_state.CTRLX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state.CTRLX~feeder_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.CTRLX~regout\);

-- Location: LCCOMB_X15_Y11_N18
\instDecodeComand|state.CTRLX~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|state.CTRLX~feeder_combout\ = \instDecodeComand|next_state.CTRLX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|next_state.CTRLX~regout\,
	combout => \instDecodeComand|state.CTRLX~feeder_combout\);

-- Location: LCFF_X15_Y11_N19
\instDecodeComand|state.CTRLX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|state.CTRLX~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.CTRLX~regout\);

-- Location: LCCOMB_X15_Y11_N8
\instDecodeComand|next_state.ZCTRL~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state.ZCTRL~feeder_combout\ = \instDecodeComand|state.CTRLX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|state.CTRLX~regout\,
	combout => \instDecodeComand|next_state.ZCTRL~feeder_combout\);

-- Location: LCFF_X15_Y11_N9
\instDecodeComand|next_state.ZCTRL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state.ZCTRL~feeder_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.ZCTRL~regout\);

-- Location: LCFF_X15_Y11_N7
\instDecodeComand|state.ZCTRL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.ZCTRL~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.ZCTRL~regout\);

-- Location: LCCOMB_X15_Y8_N12
\instSerialPort|auxX[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[1]~6_combout\ = (\instSerialPort|state.BIT2~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(1)))))) # (!\instSerialPort|state.BIT2~regout\ & 
-- (((\instSerialPort|auxX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~combout\,
	datab => \instSerialPort|state.BIT2~regout\,
	datac => \instSerialPort|auxX\(1),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[1]~6_combout\);

-- Location: LCFF_X15_Y8_N13
\instSerialPort|auxX[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(1));

-- Location: LCFF_X14_Y10_N23
\instSerialPort|poCM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(1),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(1));

-- Location: LCCOMB_X14_Y11_N4
\instDecodeComand|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~0_combout\ = \instSerialPort|poCM\(1) $ (VCC)
-- \instDecodeComand|Add4~1\ = CARRY(\instSerialPort|poCM\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poCM\(1),
	datad => VCC,
	combout => \instDecodeComand|Add4~0_combout\,
	cout => \instDecodeComand|Add4~1\);

-- Location: LCCOMB_X14_Y11_N6
\instDecodeComand|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~2_combout\ = (\instSerialPort|poCM\(2) & (!\instDecodeComand|Add4~1\)) # (!\instSerialPort|poCM\(2) & ((\instDecodeComand|Add4~1\) # (GND)))
-- \instDecodeComand|Add4~3\ = CARRY((!\instDecodeComand|Add4~1\) # (!\instSerialPort|poCM\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poCM\(2),
	datad => VCC,
	cin => \instDecodeComand|Add4~1\,
	combout => \instDecodeComand|Add4~2_combout\,
	cout => \instDecodeComand|Add4~3\);

-- Location: LCCOMB_X14_Y10_N18
\instDecodeComand|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Equal1~1_combout\ = (\instSerialPort|poCM\(0) & (!\instSerialPort|poCM\(2) & (!\instSerialPort|poCM\(3) & \instDecodeComand|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(0),
	datab => \instSerialPort|poCM\(2),
	datac => \instSerialPort|poCM\(3),
	datad => \instDecodeComand|Equal1~0_combout\,
	combout => \instDecodeComand|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y11_N20
\instDecodeComand|next_state~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~42_combout\ = (\instSerialPort|poCM\(1) & (\instDecodeComand|state.COMMAND~regout\ & \instDecodeComand|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poCM\(1),
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|Equal1~1_combout\,
	combout => \instDecodeComand|next_state~42_combout\);

-- Location: LCFF_X19_Y11_N21
\instDecodeComand|next_state.VEL_MED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~42_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.VEL_MED~regout\);

-- Location: LCFF_X19_Y11_N9
\instDecodeComand|state.VEL_MED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.VEL_MED~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.VEL_MED~regout\);

-- Location: LCFF_X19_Y11_N5
\instDecodeComand|next_state.VEL_MED_U\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|state.VEL_MED~regout\,
	sload => VCC,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.VEL_MED_U~regout\);

-- Location: LCFF_X19_Y11_N7
\instDecodeComand|state.VEL_MED_U\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.VEL_MED_U~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.VEL_MED_U~regout\);

-- Location: LCCOMB_X19_Y11_N18
\instDecodeComand|VelMedU[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMedU[7]~0_combout\ = (!\RESET~combout\ & (\instSerialPort|poDR~regout\ & \instDecodeComand|state.VEL_MED_U~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~combout\,
	datac => \instSerialPort|poDR~regout\,
	datad => \instDecodeComand|state.VEL_MED_U~regout\,
	combout => \instDecodeComand|VelMedU[7]~0_combout\);

-- Location: LCFF_X14_Y11_N3
\instDecodeComand|VelMedU[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|Add4~2_combout\,
	sload => VCC,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(2));

-- Location: LCCOMB_X14_Y11_N28
\instDecodeComand|VelMedU[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMedU[1]~feeder_combout\ = \instDecodeComand|Add4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|Add4~0_combout\,
	combout => \instDecodeComand|VelMedU[1]~feeder_combout\);

-- Location: LCFF_X14_Y11_N29
\instDecodeComand|VelMedU[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMedU[1]~feeder_combout\,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(1));

-- Location: LCCOMB_X13_Y11_N2
\instDecodeComand|VelMed[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[1]~9_combout\ = (\instDecodeComand|VelMedD\(0) & (\instDecodeComand|VelMedU\(1) $ (VCC))) # (!\instDecodeComand|VelMedD\(0) & (\instDecodeComand|VelMedU\(1) & VCC))
-- \instDecodeComand|VelMed[1]~10\ = CARRY((\instDecodeComand|VelMedD\(0) & \instDecodeComand|VelMedU\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedD\(0),
	datab => \instDecodeComand|VelMedU\(1),
	datad => VCC,
	combout => \instDecodeComand|VelMed[1]~9_combout\,
	cout => \instDecodeComand|VelMed[1]~10\);

-- Location: LCCOMB_X13_Y11_N4
\instDecodeComand|VelMed[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[2]~11_combout\ = (\instDecodeComand|VelMedD\(1) & ((\instDecodeComand|VelMedU\(2) & (\instDecodeComand|VelMed[1]~10\ & VCC)) # (!\instDecodeComand|VelMedU\(2) & (!\instDecodeComand|VelMed[1]~10\)))) # 
-- (!\instDecodeComand|VelMedD\(1) & ((\instDecodeComand|VelMedU\(2) & (!\instDecodeComand|VelMed[1]~10\)) # (!\instDecodeComand|VelMedU\(2) & ((\instDecodeComand|VelMed[1]~10\) # (GND)))))
-- \instDecodeComand|VelMed[2]~12\ = CARRY((\instDecodeComand|VelMedD\(1) & (!\instDecodeComand|VelMedU\(2) & !\instDecodeComand|VelMed[1]~10\)) # (!\instDecodeComand|VelMedD\(1) & ((!\instDecodeComand|VelMed[1]~10\) # (!\instDecodeComand|VelMedU\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedD\(1),
	datab => \instDecodeComand|VelMedU\(2),
	datad => VCC,
	cin => \instDecodeComand|VelMed[1]~10\,
	combout => \instDecodeComand|VelMed[2]~11_combout\,
	cout => \instDecodeComand|VelMed[2]~12\);

-- Location: LCCOMB_X14_Y10_N4
\instSerialPort|auxX[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instSerialPort|auxX[4]~4_combout\ = (\instSerialPort|state.BIT5~regout\ & ((\instSerialPort|poCM[0]~2_combout\ & (\RX~combout\)) # (!\instSerialPort|poCM[0]~2_combout\ & ((\instSerialPort|auxX\(4)))))) # (!\instSerialPort|state.BIT5~regout\ & 
-- (((\instSerialPort|auxX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|state.BIT5~regout\,
	datab => \RX~combout\,
	datac => \instSerialPort|auxX\(4),
	datad => \instSerialPort|poCM[0]~2_combout\,
	combout => \instSerialPort|auxX[4]~4_combout\);

-- Location: LCFF_X14_Y10_N5
\instSerialPort|auxX[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instSerialPort|auxX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|auxX\(4));

-- Location: LCFF_X14_Y10_N1
\instSerialPort|poCM[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|auxX\(4),
	sload => VCC,
	ena => \instSerialPort|poCM[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instSerialPort|poCM\(4));

-- Location: LCCOMB_X14_Y11_N10
\instDecodeComand|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~6_combout\ = (\instSerialPort|poCM\(4) & (!\instDecodeComand|Add4~5\)) # (!\instSerialPort|poCM\(4) & ((\instDecodeComand|Add4~5\) # (GND)))
-- \instDecodeComand|Add4~7\ = CARRY((!\instDecodeComand|Add4~5\) # (!\instSerialPort|poCM\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poCM\(4),
	datad => VCC,
	cin => \instDecodeComand|Add4~5\,
	combout => \instDecodeComand|Add4~6_combout\,
	cout => \instDecodeComand|Add4~7\);

-- Location: LCFF_X14_Y11_N11
\instDecodeComand|VelMedU[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~6_combout\,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(4));

-- Location: LCCOMB_X19_Y11_N8
\instDecodeComand|VelMedD[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMedD[6]~0_combout\ = (\instSerialPort|poDR~regout\ & (\instDecodeComand|state.VEL_MED~regout\ & !\RESET~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poDR~regout\,
	datac => \instDecodeComand|state.VEL_MED~regout\,
	datad => \RESET~combout\,
	combout => \instDecodeComand|VelMedD[6]~0_combout\);

-- Location: LCFF_X14_Y11_N19
\instDecodeComand|VelMedD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(0),
	sload => VCC,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(0));

-- Location: LCCOMB_X14_Y11_N18
\instDecodeComand|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add5~0_combout\ = (\instDecodeComand|VelMedD\(2) & (\instDecodeComand|VelMedD\(0) $ (VCC))) # (!\instDecodeComand|VelMedD\(2) & (\instDecodeComand|VelMedD\(0) & VCC))
-- \instDecodeComand|Add5~1\ = CARRY((\instDecodeComand|VelMedD\(2) & \instDecodeComand|VelMedD\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedD\(2),
	datab => \instDecodeComand|VelMedD\(0),
	datad => VCC,
	combout => \instDecodeComand|Add5~0_combout\,
	cout => \instDecodeComand|Add5~1\);

-- Location: LCCOMB_X13_Y11_N8
\instDecodeComand|VelMed[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[4]~15_combout\ = (\instDecodeComand|Add5~2_combout\ & ((\instDecodeComand|VelMedU\(4) & (\instDecodeComand|VelMed[3]~14\ & VCC)) # (!\instDecodeComand|VelMedU\(4) & (!\instDecodeComand|VelMed[3]~14\)))) # 
-- (!\instDecodeComand|Add5~2_combout\ & ((\instDecodeComand|VelMedU\(4) & (!\instDecodeComand|VelMed[3]~14\)) # (!\instDecodeComand|VelMedU\(4) & ((\instDecodeComand|VelMed[3]~14\) # (GND)))))
-- \instDecodeComand|VelMed[4]~16\ = CARRY((\instDecodeComand|Add5~2_combout\ & (!\instDecodeComand|VelMedU\(4) & !\instDecodeComand|VelMed[3]~14\)) # (!\instDecodeComand|Add5~2_combout\ & ((!\instDecodeComand|VelMed[3]~14\) # 
-- (!\instDecodeComand|VelMedU\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add5~2_combout\,
	datab => \instDecodeComand|VelMedU\(4),
	datad => VCC,
	cin => \instDecodeComand|VelMed[3]~14\,
	combout => \instDecodeComand|VelMed[4]~15_combout\,
	cout => \instDecodeComand|VelMed[4]~16\);

-- Location: LCFF_X13_Y11_N9
\instDecodeComand|VelMed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[4]~15_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(4));

-- Location: LCFF_X14_Y11_N23
\instDecodeComand|VelMedD[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|Add4~6_combout\,
	sload => VCC,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(4));

-- Location: LCCOMB_X14_Y11_N12
\instDecodeComand|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add4~8_combout\ = (\instSerialPort|poCM\(5) & ((GND) # (!\instDecodeComand|Add4~7\))) # (!\instSerialPort|poCM\(5) & (\instDecodeComand|Add4~7\ $ (GND)))
-- \instDecodeComand|Add4~9\ = CARRY((\instSerialPort|poCM\(5)) # (!\instDecodeComand|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instSerialPort|poCM\(5),
	datad => VCC,
	cin => \instDecodeComand|Add4~7\,
	combout => \instDecodeComand|Add4~8_combout\,
	cout => \instDecodeComand|Add4~9\);

-- Location: LCFF_X14_Y11_N15
\instDecodeComand|VelMedD[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~10_combout\,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(6));

-- Location: LCFF_X14_Y11_N25
\instDecodeComand|VelMedD[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|Add4~8_combout\,
	sload => VCC,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(5));

-- Location: LCFF_X14_Y11_N5
\instDecodeComand|VelMedD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Add4~0_combout\,
	ena => \instDecodeComand|VelMedD[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedD\(1));

-- Location: LCCOMB_X14_Y11_N22
\instDecodeComand|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add5~4_combout\ = ((\instDecodeComand|VelMedD\(2) $ (\instDecodeComand|VelMedD\(4) $ (!\instDecodeComand|Add5~3\)))) # (GND)
-- \instDecodeComand|Add5~5\ = CARRY((\instDecodeComand|VelMedD\(2) & ((\instDecodeComand|VelMedD\(4)) # (!\instDecodeComand|Add5~3\))) # (!\instDecodeComand|VelMedD\(2) & (\instDecodeComand|VelMedD\(4) & !\instDecodeComand|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedD\(2),
	datab => \instDecodeComand|VelMedD\(4),
	datad => VCC,
	cin => \instDecodeComand|Add5~3\,
	combout => \instDecodeComand|Add5~4_combout\,
	cout => \instDecodeComand|Add5~5\);

-- Location: LCCOMB_X14_Y11_N26
\instDecodeComand|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add5~8_combout\ = \instDecodeComand|VelMedD\(4) $ (\instDecodeComand|Add5~7\ $ (!\instDecodeComand|VelMedD\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|VelMedD\(4),
	datad => \instDecodeComand|VelMedD\(6),
	cin => \instDecodeComand|Add5~7\,
	combout => \instDecodeComand|Add5~8_combout\);

-- Location: LCFF_X14_Y11_N31
\instDecodeComand|VelMedU[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|Add4~10_combout\,
	sload => VCC,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(6));

-- Location: LCCOMB_X13_Y11_N12
\instDecodeComand|VelMed[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[6]~19_combout\ = (\instDecodeComand|Add5~6_combout\ & ((\instDecodeComand|VelMedU\(6) & (\instDecodeComand|VelMed[5]~18\ & VCC)) # (!\instDecodeComand|VelMedU\(6) & (!\instDecodeComand|VelMed[5]~18\)))) # 
-- (!\instDecodeComand|Add5~6_combout\ & ((\instDecodeComand|VelMedU\(6) & (!\instDecodeComand|VelMed[5]~18\)) # (!\instDecodeComand|VelMedU\(6) & ((\instDecodeComand|VelMed[5]~18\) # (GND)))))
-- \instDecodeComand|VelMed[6]~20\ = CARRY((\instDecodeComand|Add5~6_combout\ & (!\instDecodeComand|VelMedU\(6) & !\instDecodeComand|VelMed[5]~18\)) # (!\instDecodeComand|Add5~6_combout\ & ((!\instDecodeComand|VelMed[5]~18\) # 
-- (!\instDecodeComand|VelMedU\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add5~6_combout\,
	datab => \instDecodeComand|VelMedU\(6),
	datad => VCC,
	cin => \instDecodeComand|VelMed[5]~18\,
	combout => \instDecodeComand|VelMed[6]~19_combout\,
	cout => \instDecodeComand|VelMed[6]~20\);

-- Location: LCCOMB_X13_Y11_N14
\instDecodeComand|VelMed[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[7]~21_combout\ = \instDecodeComand|VelMedU\(7) $ (\instDecodeComand|VelMed[6]~20\ $ (!\instDecodeComand|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMedU\(7),
	datad => \instDecodeComand|Add5~8_combout\,
	cin => \instDecodeComand|VelMed[6]~20\,
	combout => \instDecodeComand|VelMed[7]~21_combout\);

-- Location: LCFF_X13_Y11_N15
\instDecodeComand|VelMed[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[7]~21_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(7));

-- Location: LCFF_X13_Y11_N13
\instDecodeComand|VelMed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[6]~19_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(6));

-- Location: LCCOMB_X13_Y11_N18
\instDecodeComand|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|process_0~3_combout\ = (!\instDecodeComand|VelMed\(5) & (!\instDecodeComand|VelMed\(4) & (!\instDecodeComand|VelMed\(7) & !\instDecodeComand|VelMed\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMed\(5),
	datab => \instDecodeComand|VelMed\(4),
	datac => \instDecodeComand|VelMed\(7),
	datad => \instDecodeComand|VelMed\(6),
	combout => \instDecodeComand|process_0~3_combout\);

-- Location: LCCOMB_X13_Y11_N28
\instDecodeComand|VelMed[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[7]~7_combout\ = (\instDecodeComand|process_0~2_combout\ & (\instDecodeComand|process_0~3_combout\ & (\instDecodeComand|next_state.IDLE~0_combout\ & \instDecodeComand|state.VEL_MED_U~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|process_0~2_combout\,
	datab => \instDecodeComand|process_0~3_combout\,
	datac => \instDecodeComand|next_state.IDLE~0_combout\,
	datad => \instDecodeComand|state.VEL_MED_U~regout\,
	combout => \instDecodeComand|VelMed[7]~7_combout\);

-- Location: LCFF_X13_Y11_N5
\instDecodeComand|VelMed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[2]~11_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(2));

-- Location: LCFF_X14_Y11_N1
\instDecodeComand|VelMedU[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(0),
	sload => VCC,
	ena => \instDecodeComand|VelMedU[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMedU\(0));

-- Location: LCCOMB_X13_Y11_N24
\instDecodeComand|VelMed[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|VelMed[0]~8_combout\ = (\instDecodeComand|VelMed[7]~7_combout\ & (\instDecodeComand|VelMedU\(0))) # (!\instDecodeComand|VelMed[7]~7_combout\ & ((\instDecodeComand|VelMed\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|VelMedU\(0),
	datac => \instDecodeComand|VelMed\(0),
	datad => \instDecodeComand|VelMed[7]~7_combout\,
	combout => \instDecodeComand|VelMed[0]~8_combout\);

-- Location: LCFF_X13_Y11_N25
\instDecodeComand|VelMed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(0));

-- Location: LCFF_X13_Y11_N3
\instDecodeComand|VelMed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|VelMed[1]~9_combout\,
	ena => \instDecodeComand|VelMed[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|VelMed\(1));

-- Location: LCCOMB_X13_Y11_N0
\instDecodeComand|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|process_0~2_combout\ = (!\instDecodeComand|VelMed\(3) & (!\instDecodeComand|VelMed\(1) & (\instDecodeComand|VelMed\(2) $ (!\instDecodeComand|VelMed\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|VelMed\(3),
	datab => \instDecodeComand|VelMed\(2),
	datac => \instDecodeComand|VelMed\(0),
	datad => \instDecodeComand|VelMed\(1),
	combout => \instDecodeComand|process_0~2_combout\);

-- Location: LCCOMB_X19_Y11_N6
\instDecodeComand|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~3_combout\ = (\instDecodeComand|Selector0~2_combout\) # ((\instDecodeComand|state.VEL_MED_U~regout\ & ((!\instDecodeComand|process_0~3_combout\) # (!\instDecodeComand|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Selector0~2_combout\,
	datab => \instDecodeComand|process_0~2_combout\,
	datac => \instDecodeComand|state.VEL_MED_U~regout\,
	datad => \instDecodeComand|process_0~3_combout\,
	combout => \instDecodeComand|Selector0~3_combout\);

-- Location: LCCOMB_X15_Y11_N6
\instDecodeComand|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~4_combout\ = (\instDecodeComand|state.ZCTRL~regout\) # ((\instDecodeComand|Selector0~3_combout\) # ((!\instDecodeComand|Equal0~2_combout\ & !\instDecodeComand|state.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal0~2_combout\,
	datab => \instDecodeComand|state.IDLE~regout\,
	datac => \instDecodeComand|state.ZCTRL~regout\,
	datad => \instDecodeComand|Selector0~3_combout\,
	combout => \instDecodeComand|Selector0~4_combout\);

-- Location: LCCOMB_X15_Y11_N12
\instDecodeComand|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector0~6_combout\ = (!\instDecodeComand|Selector0~1_combout\ & (!\instDecodeComand|Selector0~4_combout\ & ((!\instDecodeComand|state.COMMAND~regout\) # (!\instDecodeComand|Selector0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Selector0~5_combout\,
	datab => \instDecodeComand|Selector0~1_combout\,
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|Selector0~4_combout\,
	combout => \instDecodeComand|Selector0~6_combout\);

-- Location: LCFF_X15_Y11_N13
\instDecodeComand|next_state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector0~6_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.IDLE~regout\);

-- Location: LCCOMB_X15_Y11_N2
\instDecodeComand|state.IDLE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|state.IDLE~feeder_combout\ = \instDecodeComand|next_state.IDLE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|next_state.IDLE~regout\,
	combout => \instDecodeComand|state.IDLE~feeder_combout\);

-- Location: LCFF_X15_Y11_N3
\instDecodeComand|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|state.IDLE~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.IDLE~regout\);

-- Location: LCCOMB_X15_Y11_N16
\instDecodeComand|next_state~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~39_combout\ = (\instDecodeComand|Equal0~2_combout\ & !\instDecodeComand|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal0~2_combout\,
	datad => \instDecodeComand|state.IDLE~regout\,
	combout => \instDecodeComand|next_state~39_combout\);

-- Location: LCFF_X15_Y11_N17
\instDecodeComand|next_state.COMMAND\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~39_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.COMMAND~regout\);

-- Location: LCFF_X10_Y10_N19
\instDecodeComand|state.COMMAND\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.COMMAND~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.COMMAND~regout\);

-- Location: LCCOMB_X15_Y10_N16
\instDecodeComand|M1Count[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[5]~27_combout\ = (!\instSerialPort|poCM\(1) & (\instDecodeComand|state.COMMAND~regout\ & \instDecodeComand|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poCM\(1),
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instDecodeComand|Equal1~1_combout\,
	combout => \instDecodeComand|M1Count[5]~27_combout\);

-- Location: LCFF_X15_Y10_N17
\instDecodeComand|next_state.VEL_M1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[5]~27_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.VEL_M1~regout\);

-- Location: LCFF_X15_Y10_N11
\instDecodeComand|state.VEL_M1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.VEL_M1~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.VEL_M1~regout\);

-- Location: LCCOMB_X15_Y10_N10
\instDecodeComand|M1CountD[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1CountD[3]~0_combout\ = (!\RESET~combout\ & (\instDecodeComand|state.VEL_M1~regout\ & \instSerialPort|poDR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datac => \instDecodeComand|state.VEL_M1~regout\,
	datad => \instSerialPort|poDR~regout\,
	combout => \instDecodeComand|M1CountD[3]~0_combout\);

-- Location: LCFF_X9_Y11_N17
\instDecodeComand|M1CountD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(3),
	sload => VCC,
	ena => \instDecodeComand|M1CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountD\(3));

-- Location: LCFF_X9_Y11_N31
\instDecodeComand|M1CountD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(0),
	sload => VCC,
	ena => \instDecodeComand|M1CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountD\(0));

-- Location: LCFF_X9_Y11_N19
\instDecodeComand|M1CountD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(2),
	sload => VCC,
	ena => \instDecodeComand|M1CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountD\(2));

-- Location: LCFF_X9_Y11_N13
\instDecodeComand|M1CountD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(1),
	sload => VCC,
	ena => \instDecodeComand|M1CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1CountD\(1));

-- Location: LCCOMB_X9_Y11_N18
\instDecodeComand|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add0~1_combout\ = (\instDecodeComand|M1CountD\(3) & ((\instDecodeComand|M1CountD\(1)) # ((\instDecodeComand|M1CountD\(0) & \instDecodeComand|M1CountD\(2))))) # (!\instDecodeComand|M1CountD\(3) & (\instDecodeComand|M1CountD\(0) & 
-- (\instDecodeComand|M1CountD\(2) & \instDecodeComand|M1CountD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountD\(3),
	datab => \instDecodeComand|M1CountD\(0),
	datac => \instDecodeComand|M1CountD\(2),
	datad => \instDecodeComand|M1CountD\(1),
	combout => \instDecodeComand|Add0~1_combout\);

-- Location: LCCOMB_X9_Y11_N12
\instDecodeComand|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add0~2_combout\ = \instDecodeComand|M1CountD\(3) $ (\instDecodeComand|M1CountD\(1) $ (((\instDecodeComand|M1CountD\(2) & \instDecodeComand|M1CountD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1CountD\(3),
	datab => \instDecodeComand|M1CountD\(2),
	datac => \instDecodeComand|M1CountD\(1),
	datad => \instDecodeComand|M1CountD\(0),
	combout => \instDecodeComand|Add0~2_combout\);

-- Location: LCCOMB_X9_Y10_N6
\instDecodeComand|M1Count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[3]~11_combout\ = ((\instDecodeComand|Add0~3_combout\ $ (\instDecodeComand|M1CountU\(3) $ (!\instDecodeComand|M1Count[2]~10\)))) # (GND)
-- \instDecodeComand|M1Count[3]~12\ = CARRY((\instDecodeComand|Add0~3_combout\ & ((\instDecodeComand|M1CountU\(3)) # (!\instDecodeComand|M1Count[2]~10\))) # (!\instDecodeComand|Add0~3_combout\ & (\instDecodeComand|M1CountU\(3) & 
-- !\instDecodeComand|M1Count[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add0~3_combout\,
	datab => \instDecodeComand|M1CountU\(3),
	datad => VCC,
	cin => \instDecodeComand|M1Count[2]~10\,
	combout => \instDecodeComand|M1Count[3]~11_combout\,
	cout => \instDecodeComand|M1Count[3]~12\);

-- Location: LCCOMB_X9_Y10_N8
\instDecodeComand|M1Count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[4]~13_combout\ = (\instDecodeComand|Add0~2_combout\ & (!\instDecodeComand|M1Count[3]~12\)) # (!\instDecodeComand|Add0~2_combout\ & ((\instDecodeComand|M1Count[3]~12\) # (GND)))
-- \instDecodeComand|M1Count[4]~14\ = CARRY((!\instDecodeComand|M1Count[3]~12\) # (!\instDecodeComand|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|Add0~2_combout\,
	datad => VCC,
	cin => \instDecodeComand|M1Count[3]~12\,
	combout => \instDecodeComand|M1Count[4]~13_combout\,
	cout => \instDecodeComand|M1Count[4]~14\);

-- Location: LCCOMB_X9_Y10_N14
\instDecodeComand|M1Count[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[7]~19_combout\ = \instDecodeComand|M1Count[6]~18\ $ (((!\instDecodeComand|M1CountD\(3)) # (!\instDecodeComand|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add0~0_combout\,
	datab => \instDecodeComand|M1CountD\(3),
	cin => \instDecodeComand|M1Count[6]~18\,
	combout => \instDecodeComand|M1Count[7]~19_combout\);

-- Location: LCCOMB_X10_Y10_N18
\instDecodeComand|M1Count[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[7]~22_combout\ = (\instDecodeComand|state.COMMAND~regout\ & !\instSerialPort|poCM\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|state.COMMAND~regout\,
	datad => \instSerialPort|poCM\(1),
	combout => \instDecodeComand|M1Count[7]~22_combout\);

-- Location: LCCOMB_X15_Y10_N12
\instDecodeComand|M1Count[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[5]~21_combout\ = (\instDecodeComand|state.VEL_M1_U~regout\ & \instDecodeComand|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.VEL_M1_U~regout\,
	datac => \instDecodeComand|process_0~0_combout\,
	combout => \instDecodeComand|M1Count[5]~21_combout\);

-- Location: LCCOMB_X9_Y10_N30
\instDecodeComand|M1Count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M1Count[7]~23_combout\ = (\instDecodeComand|next_state.IDLE~0_combout\ & ((\instDecodeComand|M1Count[5]~21_combout\) # ((\instDecodeComand|Equal1~1_combout\ & \instDecodeComand|M1Count[7]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal1~1_combout\,
	datab => \instDecodeComand|M1Count[7]~22_combout\,
	datac => \instDecodeComand|M1Count[5]~21_combout\,
	datad => \instDecodeComand|next_state.IDLE~0_combout\,
	combout => \instDecodeComand|M1Count[7]~23_combout\);

-- Location: LCFF_X9_Y10_N15
\instDecodeComand|M1Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[7]~19_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(7));

-- Location: LCFF_X15_Y10_N13
\instDecodeComand|next_state.ZM1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[5]~21_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.ZM1~regout\);

-- Location: LCFF_X14_Y13_N23
\instDecodeComand|state.ZM1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.ZM1~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.ZM1~regout\);

-- Location: LCCOMB_X14_Y13_N0
\instDecodeComand|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector10~0_combout\ = (\instDecodeComand|M1Count\(7) & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M1Count\(7),
	datac => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|Selector10~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\instDecodeComand|poHEX1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[2]~0_combout\ = (!\RESET~combout\ & (\instSerialPort|poCM\(3) & (\instSerialPort|poCM\(4) & \instSerialPort|poDR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datab => \instSerialPort|poCM\(3),
	datac => \instSerialPort|poCM\(4),
	datad => \instSerialPort|poDR~regout\,
	combout => \instDecodeComand|poHEX1[2]~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\instDecodeComand|poHEX1[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[2]~1_combout\ = (\instDecodeComand|Equal0~0_combout\ & (\instDecodeComand|poHEX1[2]~0_combout\ & (\instSerialPort|poCM\(1) & !\instSerialPort|poCM\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Equal0~0_combout\,
	datab => \instDecodeComand|poHEX1[2]~0_combout\,
	datac => \instSerialPort|poCM\(1),
	datad => \instSerialPort|poCM\(2),
	combout => \instDecodeComand|poHEX1[2]~1_combout\);

-- Location: LCCOMB_X14_Y13_N22
\instDecodeComand|poM1[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poM1[7]~0_combout\ = (\instDecodeComand|poHEX1[2]~1_combout\ & ((\instDecodeComand|state.ZM1~regout\) # (\instDecodeComand|state.STOP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|poHEX1[2]~1_combout\,
	datac => \instDecodeComand|state.ZM1~regout\,
	datad => \instDecodeComand|state.STOP~regout\,
	combout => \instDecodeComand|poM1[7]~0_combout\);

-- Location: LCFF_X14_Y13_N1
\instDecodeComand|poM1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector10~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(7));

-- Location: LCCOMB_X14_Y13_N2
\instDecodeComand|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector11~0_combout\ = (\instDecodeComand|M1Count\(6) & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1Count\(6),
	datac => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|Selector11~0_combout\);

-- Location: LCFF_X14_Y13_N3
\instDecodeComand|poM1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector11~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(6));

-- Location: LCCOMB_X17_Y10_N14
\instPWM|auxCount[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[0]~7_combout\ = \instPWM|auxCount\(0) $ (VCC)
-- \instPWM|auxCount[0]~8\ = CARRY(\instPWM|auxCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instPWM|auxCount\(0),
	datad => VCC,
	combout => \instPWM|auxCount[0]~7_combout\,
	cout => \instPWM|auxCount[0]~8\);

-- Location: LCCOMB_X17_Y10_N0
\instPWM|auxCount[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[5]~21_combout\ = (((\instPWM|auxCount\(2)) # (!\instPWM|auxCount\(0))) # (!\instPWM|auxCount\(6))) # (!\instPWM|auxCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(1),
	datab => \instPWM|auxCount\(6),
	datac => \instPWM|auxCount\(0),
	datad => \instPWM|auxCount\(2),
	combout => \instPWM|auxCount[5]~21_combout\);

-- Location: LCCOMB_X17_Y10_N28
\instPWM|auxCount[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[5]~23_combout\ = (\RESET~combout\) # ((!\instPWM|auxCount[5]~22_combout\ & !\instPWM|auxCount[5]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount[5]~22_combout\,
	datab => \RESET~combout\,
	datad => \instPWM|auxCount[5]~21_combout\,
	combout => \instPWM|auxCount[5]~23_combout\);

-- Location: LCCOMB_X19_Y10_N0
\instBaudRate|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~0_combout\ = \instBaudRate|auxCount_PWM\(0) $ (VCC)
-- \instBaudRate|Add3~1\ = CARRY(\instBaudRate|auxCount_PWM\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(0),
	datad => VCC,
	combout => \instBaudRate|Add3~0_combout\,
	cout => \instBaudRate|Add3~1\);

-- Location: LCCOMB_X17_Y10_N2
\instBaudRate|auxCount_PWM[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_PWM[15]~0_combout\ = (\ENABLE~combout\ & !\RESET~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datad => \RESET~combout\,
	combout => \instBaudRate|auxCount_PWM[15]~0_combout\);

-- Location: LCFF_X19_Y10_N1
\instBaudRate|auxCount_PWM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~0_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(0));

-- Location: LCCOMB_X17_Y10_N30
\instPWM|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|process_0~0_combout\ = (\instBaudRate|auxCount_PWM\(0)) # (!\ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(0),
	datac => \ENABLE~combout\,
	combout => \instPWM|process_0~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\instBaudRate|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~8_combout\ = (\instBaudRate|auxCount_PWM\(4) & (\instBaudRate|Add3~7\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(4) & (!\instBaudRate|Add3~7\ & VCC))
-- \instBaudRate|Add3~9\ = CARRY((\instBaudRate|auxCount_PWM\(4) & !\instBaudRate|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(4),
	datad => VCC,
	cin => \instBaudRate|Add3~7\,
	combout => \instBaudRate|Add3~8_combout\,
	cout => \instBaudRate|Add3~9\);

-- Location: LCCOMB_X19_Y10_N12
\instBaudRate|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~12_combout\ = (\instBaudRate|auxCount_PWM\(6) & (\instBaudRate|Add3~11\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(6) & (!\instBaudRate|Add3~11\ & VCC))
-- \instBaudRate|Add3~13\ = CARRY((\instBaudRate|auxCount_PWM\(6) & !\instBaudRate|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(6),
	datad => VCC,
	cin => \instBaudRate|Add3~11\,
	combout => \instBaudRate|Add3~12_combout\,
	cout => \instBaudRate|Add3~13\);

-- Location: LCCOMB_X19_Y10_N14
\instBaudRate|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~14_combout\ = (\instBaudRate|auxCount_PWM\(7) & (!\instBaudRate|Add3~13\)) # (!\instBaudRate|auxCount_PWM\(7) & ((\instBaudRate|Add3~13\) # (GND)))
-- \instBaudRate|Add3~15\ = CARRY((!\instBaudRate|Add3~13\) # (!\instBaudRate|auxCount_PWM\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(7),
	datad => VCC,
	cin => \instBaudRate|Add3~13\,
	combout => \instBaudRate|Add3~14_combout\,
	cout => \instBaudRate|Add3~15\);

-- Location: LCCOMB_X18_Y10_N4
\instBaudRate|auxCount_PWM~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_PWM~4_combout\ = (\instBaudRate|Add3~14_combout\ & (((!\instBaudRate|Equal4~2_combout\) # (!\instBaudRate|auxCount_PWM\(0))) # (!\instBaudRate|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal4~4_combout\,
	datab => \instBaudRate|auxCount_PWM\(0),
	datac => \instBaudRate|Add3~14_combout\,
	datad => \instBaudRate|Equal4~2_combout\,
	combout => \instBaudRate|auxCount_PWM~4_combout\);

-- Location: LCFF_X18_Y10_N5
\instBaudRate|auxCount_PWM[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_PWM~4_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(7));

-- Location: LCCOMB_X19_Y10_N16
\instBaudRate|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~16_combout\ = (\instBaudRate|auxCount_PWM\(8) & (\instBaudRate|Add3~15\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(8) & (!\instBaudRate|Add3~15\ & VCC))
-- \instBaudRate|Add3~17\ = CARRY((\instBaudRate|auxCount_PWM\(8) & !\instBaudRate|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(8),
	datad => VCC,
	cin => \instBaudRate|Add3~15\,
	combout => \instBaudRate|Add3~16_combout\,
	cout => \instBaudRate|Add3~17\);

-- Location: LCCOMB_X18_Y10_N22
\instBaudRate|auxCount_PWM~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_PWM~3_combout\ = (\instBaudRate|Add3~16_combout\ & (((!\instBaudRate|Equal4~2_combout\) # (!\instBaudRate|auxCount_PWM\(0))) # (!\instBaudRate|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal4~4_combout\,
	datab => \instBaudRate|auxCount_PWM\(0),
	datac => \instBaudRate|Add3~16_combout\,
	datad => \instBaudRate|Equal4~2_combout\,
	combout => \instBaudRate|auxCount_PWM~3_combout\);

-- Location: LCFF_X18_Y10_N23
\instBaudRate|auxCount_PWM[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_PWM~3_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(8));

-- Location: LCCOMB_X19_Y10_N18
\instBaudRate|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~18_combout\ = (\instBaudRate|auxCount_PWM\(9) & (!\instBaudRate|Add3~17\)) # (!\instBaudRate|auxCount_PWM\(9) & ((\instBaudRate|Add3~17\) # (GND)))
-- \instBaudRate|Add3~19\ = CARRY((!\instBaudRate|Add3~17\) # (!\instBaudRate|auxCount_PWM\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(9),
	datad => VCC,
	cin => \instBaudRate|Add3~17\,
	combout => \instBaudRate|Add3~18_combout\,
	cout => \instBaudRate|Add3~19\);

-- Location: LCCOMB_X18_Y10_N28
\instBaudRate|auxCount_PWM~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_PWM~2_combout\ = (\instBaudRate|Add3~18_combout\ & (((!\instBaudRate|auxCount_PWM\(0)) # (!\instBaudRate|Equal4~2_combout\)) # (!\instBaudRate|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal4~4_combout\,
	datab => \instBaudRate|Equal4~2_combout\,
	datac => \instBaudRate|auxCount_PWM\(0),
	datad => \instBaudRate|Add3~18_combout\,
	combout => \instBaudRate|auxCount_PWM~2_combout\);

-- Location: LCFF_X18_Y10_N29
\instBaudRate|auxCount_PWM[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_PWM~2_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(9));

-- Location: LCCOMB_X19_Y10_N20
\instBaudRate|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~20_combout\ = (\instBaudRate|auxCount_PWM\(10) & (\instBaudRate|Add3~19\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(10) & (!\instBaudRate|Add3~19\ & VCC))
-- \instBaudRate|Add3~21\ = CARRY((\instBaudRate|auxCount_PWM\(10) & !\instBaudRate|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(10),
	datad => VCC,
	cin => \instBaudRate|Add3~19\,
	combout => \instBaudRate|Add3~20_combout\,
	cout => \instBaudRate|Add3~21\);

-- Location: LCCOMB_X19_Y10_N22
\instBaudRate|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~22_combout\ = (\instBaudRate|auxCount_PWM\(11) & (!\instBaudRate|Add3~21\)) # (!\instBaudRate|auxCount_PWM\(11) & ((\instBaudRate|Add3~21\) # (GND)))
-- \instBaudRate|Add3~23\ = CARRY((!\instBaudRate|Add3~21\) # (!\instBaudRate|auxCount_PWM\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(11),
	datad => VCC,
	cin => \instBaudRate|Add3~21\,
	combout => \instBaudRate|Add3~22_combout\,
	cout => \instBaudRate|Add3~23\);

-- Location: LCFF_X19_Y10_N23
\instBaudRate|auxCount_PWM[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~22_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(11));

-- Location: LCFF_X19_Y10_N21
\instBaudRate|auxCount_PWM[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~20_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(10));

-- Location: LCCOMB_X18_Y10_N8
\instBaudRate|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal4~1_combout\ = (\instBaudRate|auxCount_PWM\(9) & (\instBaudRate|auxCount_PWM\(8) & (!\instBaudRate|auxCount_PWM\(11) & !\instBaudRate|auxCount_PWM\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(9),
	datab => \instBaudRate|auxCount_PWM\(8),
	datac => \instBaudRate|auxCount_PWM\(11),
	datad => \instBaudRate|auxCount_PWM\(10),
	combout => \instBaudRate|Equal4~1_combout\);

-- Location: LCCOMB_X19_Y10_N26
\instBaudRate|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~26_combout\ = (\instBaudRate|auxCount_PWM\(13) & (!\instBaudRate|Add3~25\)) # (!\instBaudRate|auxCount_PWM\(13) & ((\instBaudRate|Add3~25\) # (GND)))
-- \instBaudRate|Add3~27\ = CARRY((!\instBaudRate|Add3~25\) # (!\instBaudRate|auxCount_PWM\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(13),
	datad => VCC,
	cin => \instBaudRate|Add3~25\,
	combout => \instBaudRate|Add3~26_combout\,
	cout => \instBaudRate|Add3~27\);

-- Location: LCFF_X19_Y10_N27
\instBaudRate|auxCount_PWM[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~26_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(13));

-- Location: LCCOMB_X19_Y10_N28
\instBaudRate|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~28_combout\ = (\instBaudRate|auxCount_PWM\(14) & (\instBaudRate|Add3~27\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(14) & (!\instBaudRate|Add3~27\ & VCC))
-- \instBaudRate|Add3~29\ = CARRY((\instBaudRate|auxCount_PWM\(14) & !\instBaudRate|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(14),
	datad => VCC,
	cin => \instBaudRate|Add3~27\,
	combout => \instBaudRate|Add3~28_combout\,
	cout => \instBaudRate|Add3~29\);

-- Location: LCFF_X19_Y10_N29
\instBaudRate|auxCount_PWM[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~28_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(14));

-- Location: LCCOMB_X19_Y10_N30
\instBaudRate|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~30_combout\ = \instBaudRate|Add3~29\ $ (\instBaudRate|auxCount_PWM\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instBaudRate|auxCount_PWM\(15),
	cin => \instBaudRate|Add3~29\,
	combout => \instBaudRate|Add3~30_combout\);

-- Location: LCFF_X19_Y10_N31
\instBaudRate|auxCount_PWM[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~30_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(15));

-- Location: LCCOMB_X18_Y10_N26
\instBaudRate|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal4~0_combout\ = (\instBaudRate|auxCount_PWM\(12) & (!\instBaudRate|auxCount_PWM\(15) & (!\instBaudRate|auxCount_PWM\(13) & !\instBaudRate|auxCount_PWM\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(12),
	datab => \instBaudRate|auxCount_PWM\(15),
	datac => \instBaudRate|auxCount_PWM\(13),
	datad => \instBaudRate|auxCount_PWM\(14),
	combout => \instBaudRate|Equal4~0_combout\);

-- Location: LCCOMB_X18_Y10_N18
\instBaudRate|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal4~2_combout\ = (\instBaudRate|Equal4~1_combout\ & \instBaudRate|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instBaudRate|Equal4~1_combout\,
	datad => \instBaudRate|Equal4~0_combout\,
	combout => \instBaudRate|Equal4~2_combout\);

-- Location: LCCOMB_X19_Y10_N2
\instBaudRate|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~2_combout\ = (\instBaudRate|auxCount_PWM\(1) & (!\instBaudRate|Add3~1\)) # (!\instBaudRate|auxCount_PWM\(1) & ((\instBaudRate|Add3~1\) # (GND)))
-- \instBaudRate|Add3~3\ = CARRY((!\instBaudRate|Add3~1\) # (!\instBaudRate|auxCount_PWM\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(1),
	datad => VCC,
	cin => \instBaudRate|Add3~1\,
	combout => \instBaudRate|Add3~2_combout\,
	cout => \instBaudRate|Add3~3\);

-- Location: LCFF_X19_Y10_N3
\instBaudRate|auxCount_PWM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~2_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(1));

-- Location: LCCOMB_X19_Y10_N4
\instBaudRate|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~4_combout\ = (\instBaudRate|auxCount_PWM\(2) & (\instBaudRate|Add3~3\ $ (GND))) # (!\instBaudRate|auxCount_PWM\(2) & (!\instBaudRate|Add3~3\ & VCC))
-- \instBaudRate|Add3~5\ = CARRY((\instBaudRate|auxCount_PWM\(2) & !\instBaudRate|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(2),
	datad => VCC,
	cin => \instBaudRate|Add3~3\,
	combout => \instBaudRate|Add3~4_combout\,
	cout => \instBaudRate|Add3~5\);

-- Location: LCFF_X19_Y10_N5
\instBaudRate|auxCount_PWM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~4_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(2));

-- Location: LCCOMB_X19_Y10_N6
\instBaudRate|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Add3~6_combout\ = (\instBaudRate|auxCount_PWM\(3) & (!\instBaudRate|Add3~5\)) # (!\instBaudRate|auxCount_PWM\(3) & ((\instBaudRate|Add3~5\) # (GND)))
-- \instBaudRate|Add3~7\ = CARRY((!\instBaudRate|Add3~5\) # (!\instBaudRate|auxCount_PWM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_PWM\(3),
	datad => VCC,
	cin => \instBaudRate|Add3~5\,
	combout => \instBaudRate|Add3~6_combout\,
	cout => \instBaudRate|Add3~7\);

-- Location: LCCOMB_X18_Y10_N24
\instBaudRate|auxCount_PWM~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_PWM~5_combout\ = (\instBaudRate|Add3~6_combout\ & (((!\instBaudRate|auxCount_PWM\(0)) # (!\instBaudRate|Equal4~2_combout\)) # (!\instBaudRate|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal4~4_combout\,
	datab => \instBaudRate|Equal4~2_combout\,
	datac => \instBaudRate|auxCount_PWM\(0),
	datad => \instBaudRate|Add3~6_combout\,
	combout => \instBaudRate|auxCount_PWM~5_combout\);

-- Location: LCFF_X18_Y10_N25
\instBaudRate|auxCount_PWM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_PWM~5_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(3));

-- Location: LCFF_X19_Y10_N9
\instBaudRate|auxCount_PWM[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~8_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(4));

-- Location: LCFF_X19_Y10_N13
\instBaudRate|auxCount_PWM[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|Add3~12_combout\,
	ena => \instBaudRate|auxCount_PWM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_PWM\(6));

-- Location: LCCOMB_X18_Y10_N30
\instBaudRate|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal4~3_combout\ = (!\instBaudRate|auxCount_PWM\(5) & (!\instBaudRate|auxCount_PWM\(4) & (!\instBaudRate|auxCount_PWM\(6) & \instBaudRate|auxCount_PWM\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(5),
	datab => \instBaudRate|auxCount_PWM\(4),
	datac => \instBaudRate|auxCount_PWM\(6),
	datad => \instBaudRate|auxCount_PWM\(7),
	combout => \instBaudRate|Equal4~3_combout\);

-- Location: LCCOMB_X18_Y10_N10
\instBaudRate|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal4~4_combout\ = (\instBaudRate|auxCount_PWM\(1) & (\instBaudRate|Equal4~3_combout\ & (!\instBaudRate|auxCount_PWM\(3) & \instBaudRate|auxCount_PWM\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_PWM\(1),
	datab => \instBaudRate|Equal4~3_combout\,
	datac => \instBaudRate|auxCount_PWM\(3),
	datad => \instBaudRate|auxCount_PWM\(2),
	combout => \instBaudRate|Equal4~4_combout\);

-- Location: LCCOMB_X17_Y10_N8
\instPWM|auxCount[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[5]~24_combout\ = (\RESET~combout\) # ((\instBaudRate|Equal4~2_combout\ & (!\instPWM|process_0~0_combout\ & \instBaudRate|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal4~2_combout\,
	datab => \instPWM|process_0~0_combout\,
	datac => \instBaudRate|Equal4~4_combout\,
	datad => \RESET~combout\,
	combout => \instPWM|auxCount[5]~24_combout\);

-- Location: LCFF_X17_Y10_N15
\instPWM|auxCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[0]~7_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(0));

-- Location: LCCOMB_X17_Y10_N18
\instPWM|auxCount[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[2]~11_combout\ = (\instPWM|auxCount\(2) & (\instPWM|auxCount[1]~10\ $ (GND))) # (!\instPWM|auxCount\(2) & (!\instPWM|auxCount[1]~10\ & VCC))
-- \instPWM|auxCount[2]~12\ = CARRY((\instPWM|auxCount\(2) & !\instPWM|auxCount[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instPWM|auxCount\(2),
	datad => VCC,
	cin => \instPWM|auxCount[1]~10\,
	combout => \instPWM|auxCount[2]~11_combout\,
	cout => \instPWM|auxCount[2]~12\);

-- Location: LCFF_X17_Y10_N19
\instPWM|auxCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[2]~11_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(2));

-- Location: LCCOMB_X17_Y10_N20
\instPWM|auxCount[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[3]~13_combout\ = (\instPWM|auxCount\(3) & (!\instPWM|auxCount[2]~12\)) # (!\instPWM|auxCount\(3) & ((\instPWM|auxCount[2]~12\) # (GND)))
-- \instPWM|auxCount[3]~14\ = CARRY((!\instPWM|auxCount[2]~12\) # (!\instPWM|auxCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(3),
	datad => VCC,
	cin => \instPWM|auxCount[2]~12\,
	combout => \instPWM|auxCount[3]~13_combout\,
	cout => \instPWM|auxCount[3]~14\);

-- Location: LCCOMB_X17_Y10_N22
\instPWM|auxCount[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[4]~15_combout\ = (\instPWM|auxCount\(4) & (\instPWM|auxCount[3]~14\ $ (GND))) # (!\instPWM|auxCount\(4) & (!\instPWM|auxCount[3]~14\ & VCC))
-- \instPWM|auxCount[4]~16\ = CARRY((\instPWM|auxCount\(4) & !\instPWM|auxCount[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instPWM|auxCount\(4),
	datad => VCC,
	cin => \instPWM|auxCount[3]~14\,
	combout => \instPWM|auxCount[4]~15_combout\,
	cout => \instPWM|auxCount[4]~16\);

-- Location: LCFF_X17_Y10_N23
\instPWM|auxCount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[4]~15_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(4));

-- Location: LCCOMB_X17_Y10_N26
\instPWM|auxCount[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|auxCount[6]~19_combout\ = \instPWM|auxCount[5]~18\ $ (!\instPWM|auxCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instPWM|auxCount\(6),
	cin => \instPWM|auxCount[5]~18\,
	combout => \instPWM|auxCount[6]~19_combout\);

-- Location: LCFF_X17_Y10_N27
\instPWM|auxCount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[6]~19_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(6));

-- Location: LCCOMB_X14_Y13_N28
\instDecodeComand|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector12~0_combout\ = (\instDecodeComand|M1Count\(5) & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1Count\(5),
	datac => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|Selector12~0_combout\);

-- Location: LCFF_X14_Y13_N29
\instDecodeComand|poM1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector12~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(5));

-- Location: LCFF_X9_Y10_N9
\instDecodeComand|M1Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[4]~13_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(4));

-- Location: LCCOMB_X14_Y13_N4
\instDecodeComand|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector13~0_combout\ = (\instDecodeComand|state.ZM1~regout\ & \instDecodeComand|M1Count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.ZM1~regout\,
	datac => \instDecodeComand|M1Count\(4),
	combout => \instDecodeComand|Selector13~0_combout\);

-- Location: LCFF_X14_Y13_N5
\instDecodeComand|poM1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector13~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(4));

-- Location: LCFF_X9_Y10_N7
\instDecodeComand|M1Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M1Count[3]~11_combout\,
	sclr => \instDecodeComand|ALT_INV_state.VEL_M1_U~regout\,
	ena => \instDecodeComand|M1Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M1Count\(3));

-- Location: LCCOMB_X14_Y13_N30
\instDecodeComand|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector14~0_combout\ = (\instDecodeComand|M1Count\(3) & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M1Count\(3),
	datac => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|Selector14~0_combout\);

-- Location: LCFF_X14_Y13_N31
\instDecodeComand|poM1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector14~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(3));

-- Location: LCCOMB_X14_Y13_N26
\instDecodeComand|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector16~0_combout\ = (\instDecodeComand|M1Count\(1) & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M1Count\(1),
	datac => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|Selector16~0_combout\);

-- Location: LCFF_X14_Y13_N27
\instDecodeComand|poM1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector16~0_combout\,
	ena => \instDecodeComand|poM1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM1\(1));

-- Location: LCCOMB_X14_Y13_N6
\instPWM|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~1_cout\ = CARRY((\instDecodeComand|poM1\(0) & !\instPWM|auxCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poM1\(0),
	datab => \instPWM|auxCount\(0),
	datad => VCC,
	cout => \instPWM|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y13_N8
\instPWM|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~3_cout\ = CARRY((\instPWM|auxCount\(1) & ((!\instPWM|LessThan0~1_cout\) # (!\instDecodeComand|poM1\(1)))) # (!\instPWM|auxCount\(1) & (!\instDecodeComand|poM1\(1) & !\instPWM|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(1),
	datab => \instDecodeComand|poM1\(1),
	datad => VCC,
	cin => \instPWM|LessThan0~1_cout\,
	cout => \instPWM|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y13_N10
\instPWM|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~5_cout\ = CARRY((\instDecodeComand|poM1\(2) & ((!\instPWM|LessThan0~3_cout\) # (!\instPWM|auxCount\(2)))) # (!\instDecodeComand|poM1\(2) & (!\instPWM|auxCount\(2) & !\instPWM|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poM1\(2),
	datab => \instPWM|auxCount\(2),
	datad => VCC,
	cin => \instPWM|LessThan0~3_cout\,
	cout => \instPWM|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y13_N12
\instPWM|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~7_cout\ = CARRY((\instPWM|auxCount\(3) & ((!\instPWM|LessThan0~5_cout\) # (!\instDecodeComand|poM1\(3)))) # (!\instPWM|auxCount\(3) & (!\instDecodeComand|poM1\(3) & !\instPWM|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(3),
	datab => \instDecodeComand|poM1\(3),
	datad => VCC,
	cin => \instPWM|LessThan0~5_cout\,
	cout => \instPWM|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y13_N14
\instPWM|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~9_cout\ = CARRY((\instPWM|auxCount\(4) & (\instDecodeComand|poM1\(4) & !\instPWM|LessThan0~7_cout\)) # (!\instPWM|auxCount\(4) & ((\instDecodeComand|poM1\(4)) # (!\instPWM|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(4),
	datab => \instDecodeComand|poM1\(4),
	datad => VCC,
	cin => \instPWM|LessThan0~7_cout\,
	cout => \instPWM|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y13_N16
\instPWM|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~11_cout\ = CARRY((\instPWM|auxCount\(5) & ((!\instPWM|LessThan0~9_cout\) # (!\instDecodeComand|poM1\(5)))) # (!\instPWM|auxCount\(5) & (!\instDecodeComand|poM1\(5) & !\instPWM|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(5),
	datab => \instDecodeComand|poM1\(5),
	datad => VCC,
	cin => \instPWM|LessThan0~9_cout\,
	cout => \instPWM|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y13_N18
\instPWM|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~12_combout\ = (\instDecodeComand|poM1\(6) & ((!\instPWM|auxCount\(6)) # (!\instPWM|LessThan0~11_cout\))) # (!\instDecodeComand|poM1\(6) & (!\instPWM|LessThan0~11_cout\ & !\instPWM|auxCount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|poM1\(6),
	datad => \instPWM|auxCount\(6),
	cin => \instPWM|LessThan0~11_cout\,
	combout => \instPWM|LessThan0~12_combout\);

-- Location: LCCOMB_X15_Y10_N8
\instPWM|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan0~14_combout\ = (\instDecodeComand|poM1\(7)) # (\instPWM|LessThan0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poM1\(7),
	datad => \instPWM|LessThan0~12_combout\,
	combout => \instPWM|LessThan0~14_combout\);

-- Location: LCCOMB_X15_Y10_N30
\instDecodeComand|M2CountD[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2CountD[3]~0_combout\ = (!\RESET~combout\ & (\instDecodeComand|state.VEL_M2~regout\ & \instSerialPort|poDR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datac => \instDecodeComand|state.VEL_M2~regout\,
	datad => \instSerialPort|poDR~regout\,
	combout => \instDecodeComand|M2CountD[3]~0_combout\);

-- Location: LCFF_X9_Y11_N25
\instDecodeComand|M2CountD[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(3),
	sload => VCC,
	ena => \instDecodeComand|M2CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountD\(3));

-- Location: LCFF_X9_Y11_N11
\instDecodeComand|M2CountD[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(2),
	sload => VCC,
	ena => \instDecodeComand|M2CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountD\(2));

-- Location: LCFF_X9_Y11_N5
\instDecodeComand|M2CountD[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(1),
	sload => VCC,
	ena => \instDecodeComand|M2CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountD\(1));

-- Location: LCFF_X9_Y11_N23
\instDecodeComand|M2CountD[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instSerialPort|poCM\(0),
	sload => VCC,
	ena => \instDecodeComand|M2CountD[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2CountD\(0));

-- Location: LCCOMB_X9_Y11_N4
\instDecodeComand|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add2~2_combout\ = \instDecodeComand|M2CountD\(3) $ (\instDecodeComand|M2CountD\(1) $ (((\instDecodeComand|M2CountD\(2) & \instDecodeComand|M2CountD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M2CountD\(2),
	datab => \instDecodeComand|M2CountD\(3),
	datac => \instDecodeComand|M2CountD\(1),
	datad => \instDecodeComand|M2CountD\(0),
	combout => \instDecodeComand|Add2~2_combout\);

-- Location: LCCOMB_X17_Y11_N18
\instDecodeComand|M2Count[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[1]~9_combout\ = (\instDecodeComand|M2CountU\(1) & (\instDecodeComand|M2CountD\(0) $ (VCC))) # (!\instDecodeComand|M2CountU\(1) & (\instDecodeComand|M2CountD\(0) & VCC))
-- \instDecodeComand|M2Count[1]~10\ = CARRY((\instDecodeComand|M2CountU\(1) & \instDecodeComand|M2CountD\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M2CountU\(1),
	datab => \instDecodeComand|M2CountD\(0),
	datad => VCC,
	combout => \instDecodeComand|M2Count[1]~9_combout\,
	cout => \instDecodeComand|M2Count[1]~10\);

-- Location: LCCOMB_X17_Y11_N26
\instDecodeComand|M2Count[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[5]~17_combout\ = (\instDecodeComand|M2Count[4]~16\ & ((\instDecodeComand|Add2~1_combout\ $ (\instDecodeComand|M2CountD\(2))))) # (!\instDecodeComand|M2Count[4]~16\ & (\instDecodeComand|Add2~1_combout\ $ 
-- (\instDecodeComand|M2CountD\(2) $ (VCC))))
-- \instDecodeComand|M2Count[5]~18\ = CARRY((!\instDecodeComand|M2Count[4]~16\ & (\instDecodeComand|Add2~1_combout\ $ (\instDecodeComand|M2CountD\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add2~1_combout\,
	datab => \instDecodeComand|M2CountD\(2),
	datad => VCC,
	cin => \instDecodeComand|M2Count[4]~16\,
	combout => \instDecodeComand|M2Count[5]~17_combout\,
	cout => \instDecodeComand|M2Count[5]~18\);

-- Location: LCCOMB_X17_Y11_N28
\instDecodeComand|M2Count[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[6]~19_combout\ = (\instDecodeComand|M2Count[5]~18\ & (\instDecodeComand|Add2~0_combout\ $ ((!\instDecodeComand|M2CountD\(3))))) # (!\instDecodeComand|M2Count[5]~18\ & ((\instDecodeComand|Add2~0_combout\ $ 
-- (\instDecodeComand|M2CountD\(3))) # (GND)))
-- \instDecodeComand|M2Count[6]~20\ = CARRY((\instDecodeComand|Add2~0_combout\ $ (!\instDecodeComand|M2CountD\(3))) # (!\instDecodeComand|M2Count[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|Add2~0_combout\,
	datab => \instDecodeComand|M2CountD\(3),
	datad => VCC,
	cin => \instDecodeComand|M2Count[5]~18\,
	combout => \instDecodeComand|M2Count[6]~19_combout\,
	cout => \instDecodeComand|M2Count[6]~20\);

-- Location: LCCOMB_X15_Y10_N6
\instDecodeComand|M2Count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[7]~23_combout\ = (\instSerialPort|poDR~regout\ & (\instDecodeComand|process_0~1_combout\ & (!\RESET~combout\ & \instDecodeComand|state.VEL_M2_U~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instSerialPort|poDR~regout\,
	datab => \instDecodeComand|process_0~1_combout\,
	datac => \RESET~combout\,
	datad => \instDecodeComand|state.VEL_M2_U~regout\,
	combout => \instDecodeComand|M2Count[7]~23_combout\);

-- Location: LCFF_X17_Y11_N29
\instDecodeComand|M2Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[6]~19_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(6));

-- Location: LCCOMB_X15_Y10_N22
\instDecodeComand|next_state~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|next_state~38_combout\ = (\instDecodeComand|state.VEL_M2_U~regout\ & \instDecodeComand|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|state.VEL_M2_U~regout\,
	datad => \instDecodeComand|process_0~1_combout\,
	combout => \instDecodeComand|next_state~38_combout\);

-- Location: LCFF_X15_Y10_N23
\instDecodeComand|next_state.ZM2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|next_state~38_combout\,
	ena => \instDecodeComand|next_state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|next_state.ZM2~regout\);

-- Location: LCFF_X18_Y11_N23
\instDecodeComand|state.ZM2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|next_state.ZM2~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|state.ZM2~regout\);

-- Location: LCCOMB_X18_Y11_N2
\instDecodeComand|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector19~0_combout\ = (\instDecodeComand|M2Count\(6) & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2Count\(6),
	datac => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|Selector19~0_combout\);

-- Location: LCCOMB_X18_Y11_N22
\instDecodeComand|poM2[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poM2[7]~0_combout\ = (\instDecodeComand|poHEX1[2]~1_combout\ & ((\instDecodeComand|state.ZM2~regout\) # (\instDecodeComand|state.STOP~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|poHEX1[2]~1_combout\,
	datac => \instDecodeComand|state.ZM2~regout\,
	datad => \instDecodeComand|state.STOP~regout\,
	combout => \instDecodeComand|poM2[7]~0_combout\);

-- Location: LCFF_X18_Y11_N3
\instDecodeComand|poM2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector19~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(6));

-- Location: LCFF_X17_Y11_N27
\instDecodeComand|M2Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[5]~17_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(5));

-- Location: LCCOMB_X18_Y11_N18
\instDecodeComand|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector20~0_combout\ = (\instDecodeComand|M2Count\(5) & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2Count\(5),
	datac => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|Selector20~0_combout\);

-- Location: LCFF_X18_Y11_N19
\instDecodeComand|poM2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector20~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(5));

-- Location: LCFF_X17_Y10_N21
\instPWM|auxCount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instPWM|auxCount[3]~13_combout\,
	sclr => \instPWM|auxCount[5]~23_combout\,
	ena => \instPWM|auxCount[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instPWM|auxCount\(3));

-- Location: LCFF_X17_Y11_N19
\instDecodeComand|M2Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[1]~9_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(1));

-- Location: LCCOMB_X18_Y11_N26
\instDecodeComand|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector24~0_combout\ = (\instDecodeComand|M2Count\(1) & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2Count\(1),
	datac => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|Selector24~0_combout\);

-- Location: LCFF_X18_Y11_N27
\instDecodeComand|poM2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector24~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(1));

-- Location: LCCOMB_X17_Y11_N16
\instDecodeComand|M2Count[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[0]~feeder_combout\ = \instDecodeComand|M2CountU\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|M2CountU\(0),
	combout => \instDecodeComand|M2Count[0]~feeder_combout\);

-- Location: LCFF_X17_Y11_N17
\instDecodeComand|M2Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[0]~feeder_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(0));

-- Location: LCCOMB_X18_Y11_N28
\instDecodeComand|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector25~0_combout\ = (\instDecodeComand|M2Count\(0) & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2Count\(0),
	datac => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|Selector25~0_combout\);

-- Location: LCFF_X18_Y11_N29
\instDecodeComand|poM2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector25~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(0));

-- Location: LCCOMB_X18_Y11_N4
\instPWM|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~1_cout\ = CARRY((!\instPWM|auxCount\(0) & \instDecodeComand|poM2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(0),
	datab => \instDecodeComand|poM2\(0),
	datad => VCC,
	cout => \instPWM|LessThan1~1_cout\);

-- Location: LCCOMB_X18_Y11_N6
\instPWM|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~3_cout\ = CARRY((\instPWM|auxCount\(1) & ((!\instPWM|LessThan1~1_cout\) # (!\instDecodeComand|poM2\(1)))) # (!\instPWM|auxCount\(1) & (!\instDecodeComand|poM2\(1) & !\instPWM|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(1),
	datab => \instDecodeComand|poM2\(1),
	datad => VCC,
	cin => \instPWM|LessThan1~1_cout\,
	cout => \instPWM|LessThan1~3_cout\);

-- Location: LCCOMB_X18_Y11_N8
\instPWM|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~5_cout\ = CARRY((\instDecodeComand|poM2\(2) & ((!\instPWM|LessThan1~3_cout\) # (!\instPWM|auxCount\(2)))) # (!\instDecodeComand|poM2\(2) & (!\instPWM|auxCount\(2) & !\instPWM|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poM2\(2),
	datab => \instPWM|auxCount\(2),
	datad => VCC,
	cin => \instPWM|LessThan1~3_cout\,
	cout => \instPWM|LessThan1~5_cout\);

-- Location: LCCOMB_X18_Y11_N10
\instPWM|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~7_cout\ = CARRY((\instDecodeComand|poM2\(3) & (\instPWM|auxCount\(3) & !\instPWM|LessThan1~5_cout\)) # (!\instDecodeComand|poM2\(3) & ((\instPWM|auxCount\(3)) # (!\instPWM|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poM2\(3),
	datab => \instPWM|auxCount\(3),
	datad => VCC,
	cin => \instPWM|LessThan1~5_cout\,
	cout => \instPWM|LessThan1~7_cout\);

-- Location: LCCOMB_X18_Y11_N12
\instPWM|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~9_cout\ = CARRY((\instDecodeComand|poM2\(4) & ((!\instPWM|LessThan1~7_cout\) # (!\instPWM|auxCount\(4)))) # (!\instDecodeComand|poM2\(4) & (!\instPWM|auxCount\(4) & !\instPWM|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poM2\(4),
	datab => \instPWM|auxCount\(4),
	datad => VCC,
	cin => \instPWM|LessThan1~7_cout\,
	cout => \instPWM|LessThan1~9_cout\);

-- Location: LCCOMB_X18_Y11_N14
\instPWM|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~11_cout\ = CARRY((\instPWM|auxCount\(5) & ((!\instPWM|LessThan1~9_cout\) # (!\instDecodeComand|poM2\(5)))) # (!\instPWM|auxCount\(5) & (!\instDecodeComand|poM2\(5) & !\instPWM|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(5),
	datab => \instDecodeComand|poM2\(5),
	datad => VCC,
	cin => \instPWM|LessThan1~9_cout\,
	cout => \instPWM|LessThan1~11_cout\);

-- Location: LCCOMB_X18_Y11_N16
\instPWM|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~12_combout\ = (\instPWM|auxCount\(6) & (!\instPWM|LessThan1~11_cout\ & \instDecodeComand|poM2\(6))) # (!\instPWM|auxCount\(6) & ((\instDecodeComand|poM2\(6)) # (!\instPWM|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instPWM|auxCount\(6),
	datad => \instDecodeComand|poM2\(6),
	cin => \instPWM|LessThan1~11_cout\,
	combout => \instPWM|LessThan1~12_combout\);

-- Location: LCCOMB_X9_Y11_N24
\instDecodeComand|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Add2~0_combout\ = (\instDecodeComand|M2CountD\(2) & ((\instDecodeComand|M2CountD\(1) & ((\instDecodeComand|M2CountD\(0)) # (\instDecodeComand|M2CountD\(3)))) # (!\instDecodeComand|M2CountD\(1) & (\instDecodeComand|M2CountD\(0) & 
-- \instDecodeComand|M2CountD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|M2CountD\(1),
	datab => \instDecodeComand|M2CountD\(0),
	datac => \instDecodeComand|M2CountD\(3),
	datad => \instDecodeComand|M2CountD\(2),
	combout => \instDecodeComand|Add2~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\instDecodeComand|M2Count[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|M2Count[7]~21_combout\ = \instDecodeComand|M2Count[6]~20\ $ (((!\instDecodeComand|Add2~0_combout\) # (!\instDecodeComand|M2CountD\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instDecodeComand|M2CountD\(3),
	datad => \instDecodeComand|Add2~0_combout\,
	cin => \instDecodeComand|M2Count[6]~20\,
	combout => \instDecodeComand|M2Count[7]~21_combout\);

-- Location: LCFF_X17_Y11_N31
\instDecodeComand|M2Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|M2Count[7]~21_combout\,
	ena => \instDecodeComand|M2Count[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|M2Count\(7));

-- Location: LCCOMB_X18_Y11_N0
\instDecodeComand|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|Selector18~0_combout\ = (\instDecodeComand|state.ZM2~regout\ & \instDecodeComand|M2Count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|state.ZM2~regout\,
	datac => \instDecodeComand|M2Count\(7),
	combout => \instDecodeComand|Selector18~0_combout\);

-- Location: LCFF_X18_Y11_N1
\instDecodeComand|poM2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|Selector18~0_combout\,
	ena => \instDecodeComand|poM2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poM2\(7));

-- Location: LCCOMB_X10_Y11_N0
\instPWM|LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instPWM|LessThan1~14_combout\ = (\instPWM|LessThan1~12_combout\) # (\instDecodeComand|poM2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instPWM|LessThan1~12_combout\,
	datad => \instDecodeComand|poM2\(7),
	combout => \instPWM|LessThan1~14_combout\);

-- Location: LCCOMB_X12_Y10_N30
\instDisplaySelector|next_state.A_Mode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|next_state.A_Mode~0_combout\ = !\instDisplaySelector|state.M2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDisplaySelector|state.M2~regout\,
	combout => \instDisplaySelector|next_state.A_Mode~0_combout\);

-- Location: LCCOMB_X13_Y10_N8
\instBaudRate|auxCount_Sec[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[0]~25_combout\ = \instBaudRate|auxCount_Sec\(0) $ (VCC)
-- \instBaudRate|auxCount_Sec[0]~26\ = CARRY(\instBaudRate|auxCount_Sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(0),
	datad => VCC,
	combout => \instBaudRate|auxCount_Sec[0]~25_combout\,
	cout => \instBaudRate|auxCount_Sec[0]~26\);

-- Location: LCCOMB_X13_Y10_N12
\instBaudRate|auxCount_Sec[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[2]~31_combout\ = (\instBaudRate|auxCount_Sec\(2) & (\instBaudRate|auxCount_Sec[1]~30\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(2) & (!\instBaudRate|auxCount_Sec[1]~30\ & VCC))
-- \instBaudRate|auxCount_Sec[2]~32\ = CARRY((\instBaudRate|auxCount_Sec\(2) & !\instBaudRate|auxCount_Sec[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(2),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[1]~30\,
	combout => \instBaudRate|auxCount_Sec[2]~31_combout\,
	cout => \instBaudRate|auxCount_Sec[2]~32\);

-- Location: LCCOMB_X13_Y10_N14
\instBaudRate|auxCount_Sec[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[3]~33_combout\ = (\instBaudRate|auxCount_Sec\(3) & (!\instBaudRate|auxCount_Sec[2]~32\)) # (!\instBaudRate|auxCount_Sec\(3) & ((\instBaudRate|auxCount_Sec[2]~32\) # (GND)))
-- \instBaudRate|auxCount_Sec[3]~34\ = CARRY((!\instBaudRate|auxCount_Sec[2]~32\) # (!\instBaudRate|auxCount_Sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(3),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[2]~32\,
	combout => \instBaudRate|auxCount_Sec[3]~33_combout\,
	cout => \instBaudRate|auxCount_Sec[3]~34\);

-- Location: LCCOMB_X17_Y10_N12
\instBaudRate|auxCount_Sec[24]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[24]~28_combout\ = (!\RESET~combout\ & ((\ENABLE~combout\) # ((!\RX~combout\ & \instBaudRate|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datab => \RESET~combout\,
	datac => \RX~combout\,
	datad => \instBaudRate|process_0~0_combout\,
	combout => \instBaudRate|auxCount_Sec[24]~28_combout\);

-- Location: LCFF_X13_Y10_N15
\instBaudRate|auxCount_Sec[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[3]~33_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(3));

-- Location: LCCOMB_X13_Y10_N16
\instBaudRate|auxCount_Sec[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[4]~35_combout\ = (\instBaudRate|auxCount_Sec\(4) & (\instBaudRate|auxCount_Sec[3]~34\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(4) & (!\instBaudRate|auxCount_Sec[3]~34\ & VCC))
-- \instBaudRate|auxCount_Sec[4]~36\ = CARRY((\instBaudRate|auxCount_Sec\(4) & !\instBaudRate|auxCount_Sec[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(4),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[3]~34\,
	combout => \instBaudRate|auxCount_Sec[4]~35_combout\,
	cout => \instBaudRate|auxCount_Sec[4]~36\);

-- Location: LCFF_X13_Y10_N17
\instBaudRate|auxCount_Sec[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[4]~35_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(4));

-- Location: LCFF_X13_Y10_N13
\instBaudRate|auxCount_Sec[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[2]~31_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(2));

-- Location: LCCOMB_X13_Y10_N0
\instBaudRate|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~0_combout\ = (\instBaudRate|auxCount_Sec\(1) & (\instBaudRate|auxCount_Sec\(3) & (\instBaudRate|auxCount_Sec\(4) & \instBaudRate|auxCount_Sec\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(1),
	datab => \instBaudRate|auxCount_Sec\(3),
	datac => \instBaudRate|auxCount_Sec\(4),
	datad => \instBaudRate|auxCount_Sec\(2),
	combout => \instBaudRate|Equal3~0_combout\);

-- Location: LCCOMB_X13_Y10_N18
\instBaudRate|auxCount_Sec[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[5]~37_combout\ = (\instBaudRate|auxCount_Sec\(5) & (!\instBaudRate|auxCount_Sec[4]~36\)) # (!\instBaudRate|auxCount_Sec\(5) & ((\instBaudRate|auxCount_Sec[4]~36\) # (GND)))
-- \instBaudRate|auxCount_Sec[5]~38\ = CARRY((!\instBaudRate|auxCount_Sec[4]~36\) # (!\instBaudRate|auxCount_Sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(5),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[4]~36\,
	combout => \instBaudRate|auxCount_Sec[5]~37_combout\,
	cout => \instBaudRate|auxCount_Sec[5]~38\);

-- Location: LCFF_X13_Y10_N19
\instBaudRate|auxCount_Sec[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[5]~37_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(5));

-- Location: LCCOMB_X13_Y10_N22
\instBaudRate|auxCount_Sec[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[7]~41_combout\ = (\instBaudRate|auxCount_Sec\(7) & (!\instBaudRate|auxCount_Sec[6]~40\)) # (!\instBaudRate|auxCount_Sec\(7) & ((\instBaudRate|auxCount_Sec[6]~40\) # (GND)))
-- \instBaudRate|auxCount_Sec[7]~42\ = CARRY((!\instBaudRate|auxCount_Sec[6]~40\) # (!\instBaudRate|auxCount_Sec\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(7),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[6]~40\,
	combout => \instBaudRate|auxCount_Sec[7]~41_combout\,
	cout => \instBaudRate|auxCount_Sec[7]~42\);

-- Location: LCFF_X13_Y10_N23
\instBaudRate|auxCount_Sec[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[7]~41_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(7));

-- Location: LCCOMB_X13_Y10_N24
\instBaudRate|auxCount_Sec[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[8]~43_combout\ = (\instBaudRate|auxCount_Sec\(8) & (\instBaudRate|auxCount_Sec[7]~42\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(8) & (!\instBaudRate|auxCount_Sec[7]~42\ & VCC))
-- \instBaudRate|auxCount_Sec[8]~44\ = CARRY((\instBaudRate|auxCount_Sec\(8) & !\instBaudRate|auxCount_Sec[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(8),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[7]~42\,
	combout => \instBaudRate|auxCount_Sec[8]~43_combout\,
	cout => \instBaudRate|auxCount_Sec[8]~44\);

-- Location: LCCOMB_X13_Y10_N26
\instBaudRate|auxCount_Sec[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[9]~45_combout\ = (\instBaudRate|auxCount_Sec\(9) & (!\instBaudRate|auxCount_Sec[8]~44\)) # (!\instBaudRate|auxCount_Sec\(9) & ((\instBaudRate|auxCount_Sec[8]~44\) # (GND)))
-- \instBaudRate|auxCount_Sec[9]~46\ = CARRY((!\instBaudRate|auxCount_Sec[8]~44\) # (!\instBaudRate|auxCount_Sec\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(9),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[8]~44\,
	combout => \instBaudRate|auxCount_Sec[9]~45_combout\,
	cout => \instBaudRate|auxCount_Sec[9]~46\);

-- Location: LCFF_X13_Y10_N27
\instBaudRate|auxCount_Sec[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[9]~45_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(9));

-- Location: LCCOMB_X13_Y10_N28
\instBaudRate|auxCount_Sec[10]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[10]~47_combout\ = (\instBaudRate|auxCount_Sec\(10) & (\instBaudRate|auxCount_Sec[9]~46\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(10) & (!\instBaudRate|auxCount_Sec[9]~46\ & VCC))
-- \instBaudRate|auxCount_Sec[10]~48\ = CARRY((\instBaudRate|auxCount_Sec\(10) & !\instBaudRate|auxCount_Sec[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(10),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[9]~46\,
	combout => \instBaudRate|auxCount_Sec[10]~47_combout\,
	cout => \instBaudRate|auxCount_Sec[10]~48\);

-- Location: LCFF_X13_Y10_N29
\instBaudRate|auxCount_Sec[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[10]~47_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(10));

-- Location: LCCOMB_X13_Y10_N30
\instBaudRate|auxCount_Sec[11]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[11]~49_combout\ = (\instBaudRate|auxCount_Sec\(11) & (!\instBaudRate|auxCount_Sec[10]~48\)) # (!\instBaudRate|auxCount_Sec\(11) & ((\instBaudRate|auxCount_Sec[10]~48\) # (GND)))
-- \instBaudRate|auxCount_Sec[11]~50\ = CARRY((!\instBaudRate|auxCount_Sec[10]~48\) # (!\instBaudRate|auxCount_Sec\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(11),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[10]~48\,
	combout => \instBaudRate|auxCount_Sec[11]~49_combout\,
	cout => \instBaudRate|auxCount_Sec[11]~50\);

-- Location: LCFF_X13_Y10_N31
\instBaudRate|auxCount_Sec[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[11]~49_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(11));

-- Location: LCCOMB_X13_Y9_N0
\instBaudRate|auxCount_Sec[12]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[12]~51_combout\ = (\instBaudRate|auxCount_Sec\(12) & (\instBaudRate|auxCount_Sec[11]~50\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(12) & (!\instBaudRate|auxCount_Sec[11]~50\ & VCC))
-- \instBaudRate|auxCount_Sec[12]~52\ = CARRY((\instBaudRate|auxCount_Sec\(12) & !\instBaudRate|auxCount_Sec[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(12),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[11]~50\,
	combout => \instBaudRate|auxCount_Sec[12]~51_combout\,
	cout => \instBaudRate|auxCount_Sec[12]~52\);

-- Location: LCFF_X13_Y9_N1
\instBaudRate|auxCount_Sec[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[12]~51_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(12));

-- Location: LCCOMB_X13_Y9_N2
\instBaudRate|auxCount_Sec[13]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[13]~53_combout\ = (\instBaudRate|auxCount_Sec\(13) & (!\instBaudRate|auxCount_Sec[12]~52\)) # (!\instBaudRate|auxCount_Sec\(13) & ((\instBaudRate|auxCount_Sec[12]~52\) # (GND)))
-- \instBaudRate|auxCount_Sec[13]~54\ = CARRY((!\instBaudRate|auxCount_Sec[12]~52\) # (!\instBaudRate|auxCount_Sec\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(13),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[12]~52\,
	combout => \instBaudRate|auxCount_Sec[13]~53_combout\,
	cout => \instBaudRate|auxCount_Sec[13]~54\);

-- Location: LCFF_X13_Y9_N3
\instBaudRate|auxCount_Sec[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[13]~53_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(13));

-- Location: LCCOMB_X13_Y9_N4
\instBaudRate|auxCount_Sec[14]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[14]~55_combout\ = (\instBaudRate|auxCount_Sec\(14) & (\instBaudRate|auxCount_Sec[13]~54\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(14) & (!\instBaudRate|auxCount_Sec[13]~54\ & VCC))
-- \instBaudRate|auxCount_Sec[14]~56\ = CARRY((\instBaudRate|auxCount_Sec\(14) & !\instBaudRate|auxCount_Sec[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(14),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[13]~54\,
	combout => \instBaudRate|auxCount_Sec[14]~55_combout\,
	cout => \instBaudRate|auxCount_Sec[14]~56\);

-- Location: LCFF_X13_Y9_N5
\instBaudRate|auxCount_Sec[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[14]~55_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(14));

-- Location: LCCOMB_X13_Y9_N8
\instBaudRate|auxCount_Sec[16]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[16]~59_combout\ = (\instBaudRate|auxCount_Sec\(16) & (\instBaudRate|auxCount_Sec[15]~58\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(16) & (!\instBaudRate|auxCount_Sec[15]~58\ & VCC))
-- \instBaudRate|auxCount_Sec[16]~60\ = CARRY((\instBaudRate|auxCount_Sec\(16) & !\instBaudRate|auxCount_Sec[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(16),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[15]~58\,
	combout => \instBaudRate|auxCount_Sec[16]~59_combout\,
	cout => \instBaudRate|auxCount_Sec[16]~60\);

-- Location: LCFF_X13_Y9_N9
\instBaudRate|auxCount_Sec[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[16]~59_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(16));

-- Location: LCCOMB_X13_Y9_N26
\instBaudRate|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~3_combout\ = (!\instBaudRate|auxCount_Sec\(15) & (\instBaudRate|auxCount_Sec\(16) & (\instBaudRate|auxCount_Sec\(14) & \instBaudRate|auxCount_Sec\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(15),
	datab => \instBaudRate|auxCount_Sec\(16),
	datac => \instBaudRate|auxCount_Sec\(14),
	datad => \instBaudRate|auxCount_Sec\(13),
	combout => \instBaudRate|Equal3~3_combout\);

-- Location: LCFF_X13_Y10_N25
\instBaudRate|auxCount_Sec[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[8]~43_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(8));

-- Location: LCCOMB_X13_Y10_N2
\instBaudRate|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~1_combout\ = (!\instBaudRate|auxCount_Sec\(6) & (!\instBaudRate|auxCount_Sec\(7) & (!\instBaudRate|auxCount_Sec\(8) & \instBaudRate|auxCount_Sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(6),
	datab => \instBaudRate|auxCount_Sec\(7),
	datac => \instBaudRate|auxCount_Sec\(8),
	datad => \instBaudRate|auxCount_Sec\(5),
	combout => \instBaudRate|Equal3~1_combout\);

-- Location: LCCOMB_X12_Y10_N16
\instBaudRate|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~4_combout\ = (\instBaudRate|Equal3~2_combout\ & (\instBaudRate|Equal3~0_combout\ & (\instBaudRate|Equal3~3_combout\ & \instBaudRate|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal3~2_combout\,
	datab => \instBaudRate|Equal3~0_combout\,
	datac => \instBaudRate|Equal3~3_combout\,
	datad => \instBaudRate|Equal3~1_combout\,
	combout => \instBaudRate|Equal3~4_combout\);

-- Location: LCCOMB_X13_Y9_N10
\instBaudRate|auxCount_Sec[17]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[17]~61_combout\ = (\instBaudRate|auxCount_Sec\(17) & (!\instBaudRate|auxCount_Sec[16]~60\)) # (!\instBaudRate|auxCount_Sec\(17) & ((\instBaudRate|auxCount_Sec[16]~60\) # (GND)))
-- \instBaudRate|auxCount_Sec[17]~62\ = CARRY((!\instBaudRate|auxCount_Sec[16]~60\) # (!\instBaudRate|auxCount_Sec\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(17),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[16]~60\,
	combout => \instBaudRate|auxCount_Sec[17]~61_combout\,
	cout => \instBaudRate|auxCount_Sec[17]~62\);

-- Location: LCCOMB_X13_Y9_N14
\instBaudRate|auxCount_Sec[19]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[19]~65_combout\ = (\instBaudRate|auxCount_Sec\(19) & (!\instBaudRate|auxCount_Sec[18]~64\)) # (!\instBaudRate|auxCount_Sec\(19) & ((\instBaudRate|auxCount_Sec[18]~64\) # (GND)))
-- \instBaudRate|auxCount_Sec[19]~66\ = CARRY((!\instBaudRate|auxCount_Sec[18]~64\) # (!\instBaudRate|auxCount_Sec\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(19),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[18]~64\,
	combout => \instBaudRate|auxCount_Sec[19]~65_combout\,
	cout => \instBaudRate|auxCount_Sec[19]~66\);

-- Location: LCFF_X13_Y9_N15
\instBaudRate|auxCount_Sec[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[19]~65_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(19));

-- Location: LCCOMB_X13_Y9_N16
\instBaudRate|auxCount_Sec[20]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[20]~67_combout\ = (\instBaudRate|auxCount_Sec\(20) & (\instBaudRate|auxCount_Sec[19]~66\ $ (GND))) # (!\instBaudRate|auxCount_Sec\(20) & (!\instBaudRate|auxCount_Sec[19]~66\ & VCC))
-- \instBaudRate|auxCount_Sec[20]~68\ = CARRY((\instBaudRate|auxCount_Sec\(20) & !\instBaudRate|auxCount_Sec[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(20),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[19]~66\,
	combout => \instBaudRate|auxCount_Sec[20]~67_combout\,
	cout => \instBaudRate|auxCount_Sec[20]~68\);

-- Location: LCCOMB_X13_Y9_N18
\instBaudRate|auxCount_Sec[21]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[21]~69_combout\ = (\instBaudRate|auxCount_Sec\(21) & (!\instBaudRate|auxCount_Sec[20]~68\)) # (!\instBaudRate|auxCount_Sec\(21) & ((\instBaudRate|auxCount_Sec[20]~68\) # (GND)))
-- \instBaudRate|auxCount_Sec[21]~70\ = CARRY((!\instBaudRate|auxCount_Sec[20]~68\) # (!\instBaudRate|auxCount_Sec\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(21),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[20]~68\,
	combout => \instBaudRate|auxCount_Sec[21]~69_combout\,
	cout => \instBaudRate|auxCount_Sec[21]~70\);

-- Location: LCFF_X13_Y9_N19
\instBaudRate|auxCount_Sec[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[21]~69_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(21));

-- Location: LCCOMB_X13_Y9_N22
\instBaudRate|auxCount_Sec[23]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[23]~73_combout\ = (\instBaudRate|auxCount_Sec\(23) & (!\instBaudRate|auxCount_Sec[22]~72\)) # (!\instBaudRate|auxCount_Sec\(23) & ((\instBaudRate|auxCount_Sec[22]~72\) # (GND)))
-- \instBaudRate|auxCount_Sec[23]~74\ = CARRY((!\instBaudRate|auxCount_Sec[22]~72\) # (!\instBaudRate|auxCount_Sec\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instBaudRate|auxCount_Sec\(23),
	datad => VCC,
	cin => \instBaudRate|auxCount_Sec[22]~72\,
	combout => \instBaudRate|auxCount_Sec[23]~73_combout\,
	cout => \instBaudRate|auxCount_Sec[23]~74\);

-- Location: LCFF_X13_Y9_N23
\instBaudRate|auxCount_Sec[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[23]~73_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(23));

-- Location: LCCOMB_X13_Y9_N24
\instBaudRate|auxCount_Sec[24]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[24]~75_combout\ = \instBaudRate|auxCount_Sec\(24) $ (!\instBaudRate|auxCount_Sec[23]~74\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(24),
	cin => \instBaudRate|auxCount_Sec[23]~74\,
	combout => \instBaudRate|auxCount_Sec[24]~75_combout\);

-- Location: LCFF_X13_Y9_N25
\instBaudRate|auxCount_Sec[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[24]~75_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(24));

-- Location: LCCOMB_X13_Y9_N30
\instBaudRate|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~6_combout\ = (\instBaudRate|auxCount_Sec\(22) & (!\instBaudRate|auxCount_Sec\(23) & (\instBaudRate|auxCount_Sec\(24) & \instBaudRate|auxCount_Sec\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(22),
	datab => \instBaudRate|auxCount_Sec\(23),
	datac => \instBaudRate|auxCount_Sec\(24),
	datad => \instBaudRate|auxCount_Sec\(21),
	combout => \instBaudRate|Equal3~6_combout\);

-- Location: LCFF_X13_Y9_N17
\instBaudRate|auxCount_Sec[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[20]~67_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(20));

-- Location: LCFF_X13_Y9_N11
\instBaudRate|auxCount_Sec[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[17]~61_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(17));

-- Location: LCCOMB_X13_Y9_N28
\instBaudRate|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~5_combout\ = (\instBaudRate|auxCount_Sec\(18) & (\instBaudRate|auxCount_Sec\(19) & (\instBaudRate|auxCount_Sec\(20) & !\instBaudRate|auxCount_Sec\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|auxCount_Sec\(18),
	datab => \instBaudRate|auxCount_Sec\(19),
	datac => \instBaudRate|auxCount_Sec\(20),
	datad => \instBaudRate|auxCount_Sec\(17),
	combout => \instBaudRate|Equal3~5_combout\);

-- Location: LCCOMB_X12_Y10_N18
\instBaudRate|Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|Equal3~7_combout\ = (\instBaudRate|Equal3~6_combout\ & \instBaudRate|Equal3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instBaudRate|Equal3~6_combout\,
	datad => \instBaudRate|Equal3~5_combout\,
	combout => \instBaudRate|Equal3~7_combout\);

-- Location: LCCOMB_X13_Y10_N6
\instBaudRate|auxCount_Sec[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \instBaudRate|auxCount_Sec[10]~27_combout\ = ((\instBaudRate|Equal3~4_combout\ & (\instBaudRate|auxCount_Sec\(0) & \instBaudRate|Equal3~7_combout\))) # (!\ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~combout\,
	datab => \instBaudRate|Equal3~4_combout\,
	datac => \instBaudRate|auxCount_Sec\(0),
	datad => \instBaudRate|Equal3~7_combout\,
	combout => \instBaudRate|auxCount_Sec[10]~27_combout\);

-- Location: LCFF_X13_Y10_N9
\instBaudRate|auxCount_Sec[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instBaudRate|auxCount_Sec[0]~25_combout\,
	sclr => \instBaudRate|auxCount_Sec[10]~27_combout\,
	ena => \instBaudRate|auxCount_Sec[24]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instBaudRate|auxCount_Sec\(0));

-- Location: LCCOMB_X12_Y10_N12
\instDisplaySelector|poC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|poC~0_combout\ = (\instBaudRate|Equal3~4_combout\ & (!\RESET~combout\ & (!\instBaudRate|auxCount_Sec\(0) & \instBaudRate|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instBaudRate|Equal3~4_combout\,
	datab => \RESET~combout\,
	datac => \instBaudRate|auxCount_Sec\(0),
	datad => \instBaudRate|Equal3~7_combout\,
	combout => \instDisplaySelector|poC~0_combout\);

-- Location: LCFF_X12_Y10_N31
\instDisplaySelector|next_state.A_Mode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|next_state.A_Mode~0_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|next_state.A_Mode~regout\);

-- Location: LCCOMB_X12_Y10_N4
\instDisplaySelector|state.A_Mode~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|state.A_Mode~feeder_combout\ = \instDisplaySelector|next_state.A_Mode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDisplaySelector|next_state.A_Mode~regout\,
	combout => \instDisplaySelector|state.A_Mode~feeder_combout\);

-- Location: LCFF_X12_Y10_N5
\instDisplaySelector|state.A_Mode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|state.A_Mode~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|state.A_Mode~regout\);

-- Location: LCCOMB_X12_Y10_N8
\instDisplaySelector|next_state.M1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|next_state.M1~0_combout\ = !\instDisplaySelector|state.A_Mode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDisplaySelector|state.A_Mode~regout\,
	combout => \instDisplaySelector|next_state.M1~0_combout\);

-- Location: LCFF_X12_Y10_N9
\instDisplaySelector|next_state.M1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|next_state.M1~0_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|next_state.M1~regout\);

-- Location: LCFF_X12_Y10_N29
\instDisplaySelector|state.M1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDisplaySelector|next_state.M1~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|state.M1~regout\);

-- Location: LCFF_X12_Y10_N7
\instDisplaySelector|next_state.B_Mode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDisplaySelector|state.M1~regout\,
	sload => VCC,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|next_state.B_Mode~regout\);

-- Location: LCCOMB_X12_Y10_N10
\instDisplaySelector|state.B_Mode~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|state.B_Mode~feeder_combout\ = \instDisplaySelector|next_state.B_Mode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDisplaySelector|next_state.B_Mode~regout\,
	combout => \instDisplaySelector|state.B_Mode~feeder_combout\);

-- Location: LCFF_X12_Y10_N11
\instDisplaySelector|state.B_Mode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|state.B_Mode~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|state.B_Mode~regout\);

-- Location: LCCOMB_X12_Y10_N2
\instDisplaySelector|next_state.M2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|next_state.M2~feeder_combout\ = \instDisplaySelector|state.B_Mode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDisplaySelector|state.B_Mode~regout\,
	combout => \instDisplaySelector|next_state.M2~feeder_combout\);

-- Location: LCFF_X12_Y10_N3
\instDisplaySelector|next_state.M2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|next_state.M2~feeder_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|next_state.M2~regout\);

-- Location: LCCOMB_X12_Y10_N22
\instDisplaySelector|state.M2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|state.M2~feeder_combout\ = \instDisplaySelector|next_state.M2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDisplaySelector|next_state.M2~regout\,
	combout => \instDisplaySelector|state.M2~feeder_combout\);

-- Location: LCFF_X12_Y10_N23
\instDisplaySelector|state.M2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|state.M2~feeder_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|state.M2~regout\);

-- Location: LCCOMB_X9_Y10_N16
\instDecodeComand|poHEX1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[3]~feeder_combout\ = \instDecodeComand|M1CountD\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|M1CountD\(3),
	combout => \instDecodeComand|poHEX1[3]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N24
\instDecodeComand|poHEX1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[2]~2_combout\ = (\instDecodeComand|poHEX1[2]~1_combout\ & \instDecodeComand|state.ZM1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|poHEX1[2]~1_combout\,
	datad => \instDecodeComand|state.ZM1~regout\,
	combout => \instDecodeComand|poHEX1[2]~2_combout\);

-- Location: LCFF_X9_Y10_N17
\instDecodeComand|poHEX1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX1[3]~feeder_combout\,
	ena => \instDecodeComand|poHEX1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX1\(3));

-- Location: LCCOMB_X12_Y10_N26
\instDisplaySelector|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|Selector3~0_combout\ = (\instDisplaySelector|state.M2~regout\ & (\instDecodeComand|poHEX2\(3))) # (!\instDisplaySelector|state.M2~regout\ & (((\instDecodeComand|poHEX1\(3)) # (!\instDisplaySelector|state.M1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poHEX2\(3),
	datab => \instDisplaySelector|state.M2~regout\,
	datac => \instDecodeComand|poHEX1\(3),
	datad => \instDisplaySelector|state.M1~regout\,
	combout => \instDisplaySelector|Selector3~0_combout\);

-- Location: LCFF_X12_Y10_N27
\instDisplaySelector|poD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|Selector3~0_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|poD~regout\);

-- Location: LCCOMB_X10_Y11_N16
\instDecodeComand|poHEX2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX2[2]~feeder_combout\ = \instDecodeComand|M2CountD\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|M2CountD\(2),
	combout => \instDecodeComand|poHEX2[2]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N30
\instDecodeComand|poHEX2[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX2[2]~0_combout\ = (\instDecodeComand|poHEX1[2]~1_combout\ & \instDecodeComand|state.ZM2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|poHEX1[2]~1_combout\,
	datad => \instDecodeComand|state.ZM2~regout\,
	combout => \instDecodeComand|poHEX2[2]~0_combout\);

-- Location: LCFF_X10_Y11_N17
\instDecodeComand|poHEX2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX2[2]~feeder_combout\,
	ena => \instDecodeComand|poHEX2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX2\(2));

-- Location: LCCOMB_X9_Y10_N24
\instDecodeComand|poHEX1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[2]~feeder_combout\ = \instDecodeComand|M1CountD\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|M1CountD\(2),
	combout => \instDecodeComand|poHEX1[2]~feeder_combout\);

-- Location: LCFF_X9_Y10_N25
\instDecodeComand|poHEX1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX1[2]~feeder_combout\,
	ena => \instDecodeComand|poHEX1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX1\(2));

-- Location: LCCOMB_X12_Y10_N20
\instDisplaySelector|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|Selector2~0_combout\ = (\instDisplaySelector|state.M1~regout\ & ((\instDecodeComand|poHEX1\(2)) # ((\instDecodeComand|poHEX2\(2) & \instDisplaySelector|state.M2~regout\)))) # (!\instDisplaySelector|state.M1~regout\ & 
-- (\instDecodeComand|poHEX2\(2) & ((\instDisplaySelector|state.M2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|state.M1~regout\,
	datab => \instDecodeComand|poHEX2\(2),
	datac => \instDecodeComand|poHEX1\(2),
	datad => \instDisplaySelector|state.M2~regout\,
	combout => \instDisplaySelector|Selector2~0_combout\);

-- Location: LCFF_X12_Y10_N21
\instDisplaySelector|poC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|Selector2~0_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|poC~regout\);

-- Location: LCCOMB_X9_Y10_N18
\instDecodeComand|poHEX1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[1]~feeder_combout\ = \instDecodeComand|M1CountD\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instDecodeComand|M1CountD\(1),
	combout => \instDecodeComand|poHEX1[1]~feeder_combout\);

-- Location: LCFF_X9_Y10_N19
\instDecodeComand|poHEX1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX1[1]~feeder_combout\,
	ena => \instDecodeComand|poHEX1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX1\(1));

-- Location: LCFF_X10_Y11_N19
\instDecodeComand|poHEX2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \instDecodeComand|M2CountD\(1),
	sload => VCC,
	ena => \instDecodeComand|poHEX2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX2\(1));

-- Location: LCCOMB_X12_Y10_N14
\instDisplaySelector|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|Selector1~0_combout\ = (\instDisplaySelector|state.M2~regout\ & (((\instDecodeComand|poHEX2\(1))))) # (!\instDisplaySelector|state.M2~regout\ & (((\instDecodeComand|poHEX1\(1))) # (!\instDisplaySelector|state.M1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|state.M1~regout\,
	datab => \instDecodeComand|poHEX1\(1),
	datac => \instDecodeComand|poHEX2\(1),
	datad => \instDisplaySelector|state.M2~regout\,
	combout => \instDisplaySelector|Selector1~0_combout\);

-- Location: LCFF_X12_Y10_N15
\instDisplaySelector|poB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|Selector1~0_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|poB~regout\);

-- Location: LCCOMB_X12_Y10_N24
\instDisplaySelector|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|Selector0~1_combout\ = (\instDisplaySelector|Selector0~0_combout\) # (\instDisplaySelector|state.B_Mode~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|Selector0~0_combout\,
	datad => \instDisplaySelector|state.B_Mode~regout\,
	combout => \instDisplaySelector|Selector0~1_combout\);

-- Location: LCFF_X12_Y10_N25
\instDisplaySelector|poA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|Selector0~1_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|poA~regout\);

-- Location: LCCOMB_X17_Y7_N16
\instHexDecode|poAH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poAH~0_combout\ = (\instDisplaySelector|poD~regout\ & (\instDisplaySelector|poA~regout\ & (\instDisplaySelector|poC~regout\ $ (\instDisplaySelector|poB~regout\)))) # (!\instDisplaySelector|poD~regout\ & (!\instDisplaySelector|poB~regout\ & 
-- (\instDisplaySelector|poC~regout\ $ (\instDisplaySelector|poA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poAH~0_combout\);

-- Location: LCCOMB_X17_Y7_N18
\instHexDecode|poBH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poBH~0_combout\ = (\instDisplaySelector|poD~regout\ & ((\instDisplaySelector|poA~regout\ & ((\instDisplaySelector|poB~regout\))) # (!\instDisplaySelector|poA~regout\ & (\instDisplaySelector|poC~regout\)))) # 
-- (!\instDisplaySelector|poD~regout\ & (\instDisplaySelector|poC~regout\ & (\instDisplaySelector|poB~regout\ $ (\instDisplaySelector|poA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poBH~0_combout\);

-- Location: LCCOMB_X17_Y7_N20
\instHexDecode|poCH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poCH~0_combout\ = (\instDisplaySelector|poD~regout\ & (\instDisplaySelector|poC~regout\ & ((\instDisplaySelector|poB~regout\) # (!\instDisplaySelector|poA~regout\)))) # (!\instDisplaySelector|poD~regout\ & (!\instDisplaySelector|poC~regout\ 
-- & (\instDisplaySelector|poB~regout\ & !\instDisplaySelector|poA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poCH~0_combout\);

-- Location: LCCOMB_X17_Y7_N6
\instHexDecode|poDH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poDH~0_combout\ = (\instDisplaySelector|poA~regout\ & ((\instDisplaySelector|poC~regout\ $ (!\instDisplaySelector|poB~regout\)))) # (!\instDisplaySelector|poA~regout\ & ((\instDisplaySelector|poD~regout\ & (!\instDisplaySelector|poC~regout\ 
-- & \instDisplaySelector|poB~regout\)) # (!\instDisplaySelector|poD~regout\ & (\instDisplaySelector|poC~regout\ & !\instDisplaySelector|poB~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poDH~0_combout\);

-- Location: LCCOMB_X17_Y7_N8
\instHexDecode|poEH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poEH~0_combout\ = (\instDisplaySelector|poB~regout\ & (!\instDisplaySelector|poD~regout\ & ((\instDisplaySelector|poA~regout\)))) # (!\instDisplaySelector|poB~regout\ & ((\instDisplaySelector|poC~regout\ & 
-- (!\instDisplaySelector|poD~regout\)) # (!\instDisplaySelector|poC~regout\ & ((\instDisplaySelector|poA~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poEH~0_combout\);

-- Location: LCCOMB_X17_Y7_N2
\instHexDecode|poFH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poFH~0_combout\ = (\instDisplaySelector|poC~regout\ & (\instDisplaySelector|poA~regout\ & (\instDisplaySelector|poD~regout\ $ (\instDisplaySelector|poB~regout\)))) # (!\instDisplaySelector|poC~regout\ & (!\instDisplaySelector|poD~regout\ & 
-- ((\instDisplaySelector|poB~regout\) # (\instDisplaySelector|poA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poFH~0_combout\);

-- Location: LCCOMB_X17_Y7_N12
\instHexDecode|poGH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instHexDecode|poGH~0_combout\ = (\instDisplaySelector|poA~regout\ & (!\instDisplaySelector|poD~regout\ & (\instDisplaySelector|poC~regout\ $ (!\instDisplaySelector|poB~regout\)))) # (!\instDisplaySelector|poA~regout\ & (!\instDisplaySelector|poB~regout\ 
-- & (\instDisplaySelector|poD~regout\ $ (!\instDisplaySelector|poC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDisplaySelector|poD~regout\,
	datab => \instDisplaySelector|poC~regout\,
	datac => \instDisplaySelector|poB~regout\,
	datad => \instDisplaySelector|poA~regout\,
	combout => \instHexDecode|poGH~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y10_N30
\instDecodeComand|poHEX_aux1[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX_aux1[4]~0_combout\ = (\instDecodeComand|process_0~0_combout\ & ((\instDecodeComand|M1CountU[3]~0_combout\ & (\instSerialPort|poCM\(0))) # (!\instDecodeComand|M1CountU[3]~0_combout\ & ((\instDecodeComand|poHEX_aux1\(4)))))) # 
-- (!\instDecodeComand|process_0~0_combout\ & (((\instDecodeComand|poHEX_aux1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|process_0~0_combout\,
	datab => \instSerialPort|poCM\(0),
	datac => \instDecodeComand|poHEX_aux1\(4),
	datad => \instDecodeComand|M1CountU[3]~0_combout\,
	combout => \instDecodeComand|poHEX_aux1[4]~0_combout\);

-- Location: LCFF_X10_Y10_N31
\instDecodeComand|poHEX_aux1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX_aux1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX_aux1\(4));

-- Location: LCCOMB_X9_Y10_N28
\instDecodeComand|poHEX1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDecodeComand|poHEX1[4]~feeder_combout\ = \instDecodeComand|poHEX_aux1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instDecodeComand|poHEX_aux1\(4),
	combout => \instDecodeComand|poHEX1[4]~feeder_combout\);

-- Location: LCFF_X9_Y10_N29
\instDecodeComand|poHEX1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDecodeComand|poHEX1[4]~feeder_combout\,
	ena => \instDecodeComand|poHEX1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDecodeComand|poHEX1\(4));

-- Location: LCCOMB_X12_Y10_N0
\instDisplaySelector|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instDisplaySelector|Selector4~0_combout\ = (\instDecodeComand|poHEX2\(4) & ((\instDisplaySelector|state.M2~regout\) # ((\instDecodeComand|poHEX1\(4) & \instDisplaySelector|state.M1~regout\)))) # (!\instDecodeComand|poHEX2\(4) & 
-- (\instDecodeComand|poHEX1\(4) & (\instDisplaySelector|state.M1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instDecodeComand|poHEX2\(4),
	datab => \instDecodeComand|poHEX1\(4),
	datac => \instDisplaySelector|state.M1~regout\,
	datad => \instDisplaySelector|state.M2~regout\,
	combout => \instDisplaySelector|Selector4~0_combout\);

-- Location: LCFF_X12_Y10_N1
\instDisplaySelector|poH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \instDisplaySelector|Selector4~0_combout\,
	ena => \instDisplaySelector|poC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instDisplaySelector|poH~regout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M1~I\ : cycloneii_io
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
	datain => \instPWM|LessThan0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M1);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\M2~I\ : cycloneii_io
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
	datain => \instPWM|LessThan1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M2);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[0]~I\ : cycloneii_io
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
	datain => \instHexDecode|poAH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[1]~I\ : cycloneii_io
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
	datain => \instHexDecode|poBH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(1));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[2]~I\ : cycloneii_io
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
	datain => \instHexDecode|poCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(2));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[3]~I\ : cycloneii_io
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
	datain => \instHexDecode|poDH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(3));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[4]~I\ : cycloneii_io
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
	datain => \instHexDecode|poEH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(4));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[5]~I\ : cycloneii_io
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
	datain => \instHexDecode|poFH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[6]~I\ : cycloneii_io
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
	datain => \instHexDecode|poGH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(6));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX[7]~I\ : cycloneii_io
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
	datain => \instDisplaySelector|ALT_INV_poH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX(7));
END structure;


