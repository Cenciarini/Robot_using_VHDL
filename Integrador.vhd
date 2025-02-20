library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Integrador is
	Port ( 	
		CLK 	: in STD_LOGIC;
		ENABLE: in STD_LOGIC;
		RESET	: in STD_LOGIC;
		RX		: in STD_LOGIC;
		M1	:	out STD_LOGIC;
		M2	:	out STD_LOGIC;
		HEX: out std_logic_vector(7 downto 0)
	);
end Integrador;

architecture aIntegrador of Integrador is

component BaudRate is
    Generic (NBits: natural := 13;
				Rx: natural := 2604;
	         Max: natural := 5208;
				NBits_PWM: natural := 16;
				Max_PWM: natural := 50000000/10000;
				NBits_Sec: natural := 25;
				Max_Sec: natural := 25000000
				);
				
    Port (  
				piClk : in STD_LOGIC;
            piEna : in STD_LOGIC;
            piRst : in STD_LOGIC;
				piRx	: in STD_LOGIC;
				poSEC	: out STD_LOGIC;
				poBR	: out STD_LOGIC;
				poPWM	: out STD_LOGIC
		 );	
end component BaudRate;

component SerialPort is
    Port (  
				piBR : in STD_LOGIC;
				piClk: in STD_LOGIC;
            piEna : in STD_LOGIC;
            piRst : in STD_LOGIC;
				piRx	: in STD_LOGIC;
				poDR	: out STD_LOGIC;
            poCM : out std_logic_vector(7 downto 0)
		 );		
end component SerialPort;

component DecodeComand is
    Port (  
				piClk : in STD_LOGIC;
            piEna : in STD_LOGIC;
            piRst : in STD_LOGIC;
				piDR	: in std_LOGIC;
				piCM	: in std_logic_vector(7 downto 0);
				poM1	: out std_logic_vector(7 downto 0);
				poM2	: out std_logic_vector(7 downto 0);
				poDebug : out std_LOGIC_vector(7 downto 0);
				poHEX1 : out std_logic_vector(4 downto 0);
				poHEX2 : out std_logic_vector(4 downto 0)
		 );
end component DecodeComand;

component PWM is
    Generic (NBits: natural := 7;
             Max: natural := 100);
    Port (
        piClk : in STD_LOGIC;
		  piPWM : in std_LOGIC;
        piEna : in STD_LOGIC;
        piRst : in STD_LOGIC;
        piM1  : in std_logic_vector(7 downto 0); -- Entradas de velocidad para motor 1
        piM2  : in std_logic_vector(7 downto 0); -- Entradas de velocidad para motor 2
        poM1  : out STD_LOGIC; -- Salida PWM para motor 1
        poM2  : out STD_LOGIC  -- Salida PWM para motor 2
    );
end component PWM;

component DisplaySelector is
	port
	(
		piClk	 : in std_logic;
		piSec	 : in	std_logic;
		piEna	 : in std_logic;
		piRst	 :	in std_logic;
		piM1	 : in	std_logic_vector(7 downto 0);
		piM2	 : in	std_logic_vector(7 downto 0);
		piHEX_1	 : in std_logic_vector(4 downto 0);
		piHEX_2	 : in std_logic_vector(4 downto 0);
		poA	 : out std_logic;
		poB	 : out std_logic;
		poC	 : out std_logic;
		poD	 : out std_logic;
		poH	 : out std_logic
	);
end component DisplaySelector;

component HexDecode is
    port ( 
        piA: in std_logic;
        piB: in std_logic;
        piC: in std_logic;
        piD: in std_logic;
		  piH: in std_logic;
		  
        poAH: out std_logic;
		  poBH: out std_logic;
		  poCH: out std_logic;
        poDH: out std_logic;
        poEH: out std_logic;
		  poFH: out std_logic;
		  poGH: out std_logic;
		  poHH: out std_logic
    );
end component HexDecode;

signal poBR_int, poSEC_int : STD_LOGIC;
signal poCM_int : std_logic_vector(7 downto 0);
signal poDR_int : std_LOGIC;
signal poM1_int, poM2_int : std_logic_vector(7 downto 0);
signal poA_int, poB_int, poC_int, poD_int, poH_int : std_LOGIC; 
signal pHEX1_int, pHEX2_int : std_logic_vector(4 downto 0);
signal poPWM_int : std_LOGIC;

begin

instBaudRate: BaudRate
	generic map(Nbits => 13, Rx => 2604, Max => 5208,NBits_PWM => 16, Max_PWM => 50000000/10000, NBits_Sec => 25, Max_Sec => 25000000)
	port map(piClk => CLK, piEna => ENABLE, piRst => RESET, piRx => RX, poBR => poBR_int, poSEC => poSEC_int, poPWM => poPWM_int);

instSerialPort: SerialPort
	port map(piBR => poBR_int, piClk => CLK, piEna => ENABLE, piRst => RESET, piRx => RX, poDR => poDR_int, poCM => poCM_int);
	
instDecodeComand: DecodeComand
	port map(piClk => CLK, piEna => ENABLE, piRst => RESET, piCM => poCM_int, piDR => poDR_int, poM1 => poM1_int, poM2 => poM2_int, poHEX1(0) => pHEX1_int(0), poHEX1(1) => pHEX1_int(1), poHEX1(2) => pHEX1_int(2), poHEX1(3) => pHEX1_int(3), poHEX1(4) => pHEX1_int(4), poHEX2(0) => pHEX2_int(0), poHEX2(1) => pHEX2_int(1), poHEX2(2) => pHEX2_int(2), poHEX2(3) => pHEX2_int(3), poHEX2(4) => pHEX2_int(4));
--	port map(piClk => CLK, piEna => ENABLE, piRst => RESET, piCM => poCM_int, piDR => poDR_int, poM1 => poM1_int, poM2 => poM2_int, poDebug(0) => HEX(0), poDebug(1) => HEX(1), poDebug(2) => HEX(2), poDebug(3) => HEX(3), poDebug(4) => HEX(4), poDebug(5) => HEX(5), poDebug(6) => HEX(6), poDebug(7) => HEX(7));

instPWM: PWM
	generic map(Nbits => 7, Max => 100)
	port map(piClk => CLK, piEna => ENABLE, piRst => RESET, piM1 => poM1_int, piM2 => poM2_int, poM1 => M1, poM2 => M2, piPWM => poPWM_int);

instDisplaySelector: DisplaySelector
-- port map(piClk => CLK, piSec => poSEC_int, piEna => ENABLE, piRst => RESET, piM1 => poM1_int, piM2 => poM2_int, poA => poA_int, poB => poB_int, poC => poC_int, poD => poD_int, poH => poH_int);
	port map(piClk => CLK, piSec => poSEC_int, piEna => ENABLE, piRst => RESET, piM1 => poM1_int, piM2 => poM2_int, poA => poA_int, poB => poB_int, poC => poC_int, poD => poD_int, poH => poH_int, piHEX_1(0) => pHEX1_int(0), piHEX_1(1) => pHEX1_int(1), piHEX_1(2) => pHEX1_int(2), piHEX_1(3) => pHEX1_int(3), piHEX_1(4) => pHEX1_int(4), piHEX_2(0) => pHEX2_int(0), piHEX_2(1) => pHEX2_int(1), piHEX_2(2) => pHEX2_int(2), piHEX_2(3) => pHEX2_int(3), piHEX_2(4) => pHEX2_int(4));
	
instHexDecode: HexDecode
	port map(piA => poA_int, piB => poB_int, piC => poC_int, piD => poD_int, piH => poH_int ,poAH => HEX(0), poBH => HEX(1), poCH => HEX(2), poDH => HEX(3), poEH => HEX(4), poFH => HEX(5), poGH => HEX(6), poHH => HEX(7));
--	port map(piA => poA_int, piB => poB_int, piC => poC_int, piD => poD_int, piH => poH_int);
	
end architecture aIntegrador;