library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DecodeComand is
    Port (  
				piClk : in STD_LOGIC;
            piEna : in STD_LOGIC;
            piRst : in STD_LOGIC;
				piDR	: in std_LOGIC;
				piCM	: in std_logic_vector(7 downto 0);
				poM1	: out std_logic_vector(7 downto 0);
				poM2	: out std_logic_vector(7 downto 0);
				poVM	: out std_logic_vector(7 downto 0);
				poSIM	: out std_logic_vector(7 downto 0);
				poCTRL	:	out STD_LOGIC;
				poDebug : out std_LOGIC_vector(7 downto 0);
				poHEX1 : out std_logic_vector(4 downto 0);
				poHEX2 : out std_logic_vector(4 downto 0)
		 );
end DecodeComand;

architecture A_DecodeComand of DecodeComand is

type state_type is (IDLE, COMMAND, STOP, VEL_M1, VEL_M1_U, VEL_M2, VEL_M2_U, VEL_MED, VEL_MED_U, SIM, SIMX, CTRL, CTRLX, ZM1, ZM2, ZVM, ZSIM, ZCTRL);
signal state, next_state : state_type;
signal M1Count, M2Count, VelMed, VelMedD, VelMedU : unsigned(7 downto 0) := "00000000";
signal M1CountD,M1CountU, M2CountD, M2CountU : std_logic_vector(3 downto 0);
signal SimVal, auxSim, ctrlVal, auxCtrl : unsigned(7 downto 0);
signal poHEX_aux1, poHEX_aux2 : std_logic_vector(4 downto 0) := "00000";

begin
	
	process(piClk,piEna,piRst,piDR)
	begin
		if piRst = '1' then
			state <= IDLE;
		elsif (rising_edge(piClk)) then
			state <= next_state;
			if piDR = '1' then
				case state is
					when IDLE =>
						if piCM = "01000100" then
							next_state <= COMMAND;
						else
							next_state <= IDLE;
							--poDebug <= piCM;
						end if;
					when COMMAND =>
						if piCM = "00110000" then
							next_state <= STOP;
						elsif piCM = "00110001" then
							next_state <= VEL_M1;
							M1Count <= "00000000";
						elsif piCM = "00110010" then
							next_state <= VEL_M2;
						elsif piCM = "00110011" then
							next_state <= VEL_MED;
						elsif piCM = "00110100" then
							next_state <= SIM;
						elsif piCM = "00110101" then
							next_state <= CTRL;
						else
							next_state <= IDLE;
						end if;
					when STOP =>		-- REVISAR loop infinito en 0 (dependiendo el comando)
						if piCM = "00110000" then
							next_state <= STOP;
						elsif	piCM = "01011010" then --< Z
							poM1 <= "00000000";
							poM2 <= "00000000";
							--poDebug <= "11000000";
							next_state <= IDLE;
						else
							next_state <= IDLE;
						end if;
					when VEL_M1 =>																--< VEL_M1
						M1CountD <= piCM(3 downto 0);
						next_state <= VEL_M1_U;
						poHEX_aux1(0) <= piCM(0);
						poHEX_aux1(1) <= piCM(1);
						poHEX_aux1(2) <= piCM(2);
						poHEX_aux1(3) <= piCM(3);
					when VEL_M1_U =>
						M1CountU <= piCM(3 downto 0);
						if M1CountU = "0000" or M1CountU = "0101" then
							M1Count <= unsigned(M1CountD) * to_unsigned(10,4) + unsigned(M1CountU);
							poHEX_aux1(4) <= piCM(0);
							next_state <= ZM1;
						else
							next_state <= IDLE;
						end if;
					when ZM1 =>
						if piCM = "01011010" then --< Z
							poM1 <= std_logic_vector(M1Count);
							poHEX1 <= poHEX_aux1;
							--poDebug <= "11111001";
							next_state <= IDLE;
						else 
							next_state <= IDLE;
						end if;
					when VEL_M2 =>																--< VEL_M2
						M2CountD <= piCM(3 downto 0);
						poHEX_aux2(0) <= piCM(0);
						poHEX_aux2(1) <= piCM(1);
						poHEX_aux2(2) <= piCM(2);
						poHEX_aux2(3) <= piCM(3);
						next_state <= VEL_M2_U;
					when VEL_M2_U =>
						M2CountU <= piCM(3 downto 0);
						if M2CountU = "0000" or M2CountU = "0101" then
							M2Count <= unsigned(M2CountD) * to_unsigned(10,4) + unsigned(M2CountU);
							poHEX_aux2(4) <= piCM(0);
							next_state <= ZM2;
						else
							next_state <= IDLE;
						end if;
					when ZM2 =>
						if piCM = "01011010" then --< Z
							poM2 <= std_logic_vector(M2Count);
							poHEX2 <= poHEX_aux2;
							--poDebug <= "10100100";
							next_state <= IDLE;
						else 
							next_state <= IDLE;
						end if;
					when VEL_MED =>															--< VEL_MED
						VelMedD <= unsigned(piCM) - to_unsigned(30,8);
						next_state <= VEL_MED_U;
					when VEL_MED_U =>
						VelMedU <= unsigned(piCM) - to_unsigned(30,8);
						if VelMed = "00000" or VelMed = "00101" then
							VelMed <= (VelMedD sll 3) + (VelMedD sll 1) + VelMedU;
							next_state <= ZVM;
						else
							next_state <= IDLE;
						end if;
					when ZVM =>
						if piCM = "01011010" then --< Z
							poVM <= std_logic_vector(VelMed);
							--poDebug <= "10110000";
							next_state <= IDLE;
						else 
							next_state <= IDLE;
						end if;
					when SIM =>	-- 4 sensores... tres posibilidades => 1100 | 0110 | 0011 => 12 | 6 | 3		--< SIM
						SimVal <= unsigned(piCM) - to_unsigned(30,8);
						next_state <= SIMX;
					when SIMX =>
						auxSim <= unsigned(piCM) - to_unsigned(30,8);
						next_state <= ZSIM;
					when ZSIM =>
						if piCM = "01011010" then --< Z
							poSIM <= std_logic_vector(SimVal);
							--poDebug <= "10011001";
							next_state <= IDLE;
						else 
							next_state <= IDLE;
						end if;
					when CTRL =>
						ctrlVal <= unsigned(piCM) - to_unsigned(30,8);
						next_state <= CTRLX;
					when CTRLX =>
						auxCtrl <= unsigned(piCM) - to_unsigned(30,8);
						next_state <= ZCTRL;
					when ZCTRL =>
						if piCM = "01011010" then --< Z
							if ctrlVal = "00000000" then
								poCTRL <= '0';
							elsif ctrlVal = "00000001" then
								poCTRL <= '1';
							end if;
							--poDebug <= "10010010";
							next_state <= IDLE;
						else 
							next_state <= IDLE;
						end if;
					when others =>
						next_state <= IDLE;
				end case;
			end if;
		end if;
	end process;
  
end A_DecodeComand;