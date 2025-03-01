library IEEE;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Integrador_TB is
end Integrador_TB;


architecture A_Integrador_TB of Integrador_TB is

component Integrador is
    Port (  
			CLK : in STD_LOGIC;
			ENABLE: in STD_LOGIC;
			RESET: in STD_LOGIC;
			RX: in STD_LOGIC;
			BR: out STD_LOGIC;
			outPut : out std_logic_vector(7 downto 0)
		 );	
end component Integrador;

signal clk, ena, rst, rx, br: std_logic;
signal aux : std_logic_vector(9 downto 0);
signal x1 : std_logic_vector(7 downto 0);

begin
	
	instBb1: Integrador
		port map(CLK => clk, ENABLE => ena, RESET => rst,RX => rx, outPut => x1,BR => br);
		
	pClk: process
	begin
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
	end process;	
	
	
	process
	begin
		rst <= '1';
		ena <= '0';
		aux <= "1101101000";
		wait for 40 ns;
		rst <= '0';
		wait until falling_edge(clk);
		ena <= '1';
		wait for 100 ns;
		for i in 0 to 9 loop
			rx <= aux(i);
			wait for 104000 ns;
		end loop;
		wait;
	end process;
    
    
end A_Integrador_TB;