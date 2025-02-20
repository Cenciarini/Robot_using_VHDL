library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DisplaySelector is

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

end entity;
	
architecture A_DisplaySelector of DisplaySelector is

type state_type is (A_Mode, B_Mode, M1, M2);
signal state, next_state : state_type;
signal DecM1,DecM2 : unsigned(3 downto 0);
signal auxSec: std_logic := '0';

begin

	process (piSec, piRst)
	begin

		if piRst = '1' then
			state <= A_Mode;
		elsif rising_edge(piClk) then	-- todo ok
--			auxSec <= not auxSec;
--			poH <= auxSec;
			state <= next_state;
			if piSec = '1' then
				case state is
					when A_Mode =>		-- wtf
						poA <= '0';
						poB <= '1';
						poC <= '0';
						poD <= '1';
						poH <= '0';
						next_state <= M1;
					when M1 =>
						poA <= piHEX_1(0);
						poB <= piHEX_1(1);
						poC <= piHEX_1(2);
						poD <= piHEX_1(3);
						poH <= piHEX_1(4);
						next_state <= B_Mode;
					when B_Mode =>
						poA <= '1';
						poB <= '1';
						poC <= '0';
						poD <= '1';
						poH <= '0';
						next_state <= M2;
					when M2 =>
						poA <= piHEX_2(0);
						poB <= piHEX_2(1);
						poC <= piHEX_2(2);
						poD <= piHEX_2(3);
						poH <= piHEX_2(4);
						next_state <= A_Mode;
				end case;
			end if;
		end if;
	end process;

end A_DisplaySelector;
