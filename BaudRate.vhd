library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BaudRate is
    Generic (
				NBits: natural := 13;
				Rx: natural := 2604;
	         Max: natural := 5208;
				NBits_PWM: natural := 16;
				Max_PWM: natural := 50000000/10000;
				NBits_Sec: natural := 26;
				Max_Sec: natural := 50000000
		 );
				
    Port (  
				piClk : in STD_LOGIC;
            piEna : in STD_LOGIC;
            piRst : in STD_LOGIC;
				piRx	: in STD_LOGIC;
				poSEC	: out STD_LOGIC;
				poPWM	: out STD_LOGIC;
				poBR	: out STD_LOGIC
		 );	
end BaudRate;

architecture A_BaudRate of BaudRate is

signal auxCount: unsigned(NBits-1 downto 0);
signal auxCount_Sec: unsigned(NBits_Sec-1 downto 0);
signal auxCount_PWM: unsigned(NBits_PWM-1 downto 0);
signal uartCounter: unsigned(3 downto 0) := "0000";
signal auxSec: std_logic := '0';
signal auxPWM: std_logic := '0';

begin

    process(piClk, piEna, piRst)
    begin
	  if piRst = '1' then
			auxCount <= to_unsigned(0, NBits);
	  elsif rising_edge(piClk) then
			if piRx = '0' and uartCounter = "0000" then
				auxCount <= to_unsigned(0, NBits);
				auxCount_Sec <= to_unsigned(0, NBits_Sec);
				uartCounter <= "0001";
			end if;
			if piEna = '1' and uartCounter > "0000" then
				auxCount <= auxCount + to_unsigned(1, NBits);
				if auxCount = to_unsigned(Max-1, NBits) then
					auxCount <= to_unsigned(0, NBits);
					uartCounter <= uartCounter + to_unsigned(1,4);
					if uartCounter = "1010" then
						uartCounter <= to_unsigned(0,4);
					end if;
				end if;
			end if;
			if piEna = '1' then
				auxCount_Sec <= auxCount_Sec + to_unsigned(1, NBits_Sec);
				if auxCount_Sec = to_unsigned(Max_Sec-1, NBits_Sec) then
					auxCount_Sec <= to_unsigned(0, NBits_Sec);
					auxSec <= not auxSec;
				end if;
			end if;
			if piEna = '1' then
				auxCount_PWM <= auxCount_PWM + to_unsigned(1, NBits_PWM);
				if auxCount_PWM = to_unsigned(Max_PWM-1, NBits_PWM) then
					auxCount_PWM <= to_unsigned(0, NBits_PWM);
					auxPWM <= not auxPWM;
				end if;
			end if;
	  end if;        
	end process;

	poBR <= '1' when auxCount = to_unsigned(Rx, NBits) else '0';
	poSEC <= '1' when auxCount_Sec = to_unsigned(Max_Sec-2, NBits_Sec) else '0';
	poPWM <= '1' when auxCount_PWM = to_unsigned(Max_PWM-2, NBits_PWM) else '0';
    
end A_BaudRate;