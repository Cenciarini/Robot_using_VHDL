library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SerialPort is
    Port (  
				piBR : in STD_LOGIC;
				piClk : in STD_LOGIC;
            piEna : in STD_LOGIC;
            piRst : in STD_LOGIC;
				piRX	: in STD_LOGIC;
				poDR	: out std_LOGIC;
            poCM : out std_logic_vector(7 downto 0)
		 );	
end SerialPort;

architecture A_SerialPort of SerialPort is

type	MyState is (IDLE, START, BIT1, BIT2, BIT3, BIT4, BIT5, BIT6, BIT7, BIT8, STOP);
signal	state, next_state : MyState;
signal auxX : std_logic_vector(7 downto 0);

begin

    process(piBR, piEna, piRst, piClk)
    begin
		if piRst = '1' then
			next_state <= IDLE;
			state <= IDLE;
		elsif rising_edge(piClk) then
			state <= next_state;
			poDR <= '0';
			if piBR = '1' then
				case state is
					when IDLE =>
						if piRX = '0' then
							next_state <= BIT1;
						end if;
					when BIT1 =>
						auxX(0) <= piRX;
						next_state <= BIT2;
					when BIT2 =>
						auxX(1) <= piRX;
						next_state <= BIT3;
					when BIT3 =>
						auxX(2) <= piRX;
						next_state <= BIT4;
					when BIT4 =>
						auxX(3) <= piRX;
						next_state <= BIT5;
					when BIT5 =>
						auxX(4) <= piRX;
						next_state <= BIT6;
					when BIT6 =>
						auxX(5) <= piRX;
						next_state <= BIT7;
					when BIT7 =>
						auxX(6) <= piRX;
						next_state <= BIT8;
					when BIT8 =>
						auxX(7) <= piRX;
						next_state <= STOP;
					when STOP =>
						if piRX = '1' then
							next_state <= IDLE;
							poCM <= auxX;
							poDR <= '1';
						end if;
					when others =>
						next_state <= IDLE;
				end case;
			end if;
		end if;
	end process;
	
    
end A_SerialPort;