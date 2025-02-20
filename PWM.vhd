library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM is
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
end PWM;

architecture A_PWM of PWM is
 signal auxCount: unsigned(NBits-1 downto 0);
 signal dutyCycle1: unsigned(NBits downto 0); -- Ciclo de trabajo para motor 1
 signal dutyCycle2: unsigned(NBits downto 0); -- Ciclo de trabajo para motor 2
 signal auxpiM1  : unsigned(7 downto 0);
 signal auxpiM2  : unsigned(7 downto 0);

begin
    process(piClk, piRst, piEna,piPWM)
    begin
        if rising_edge(piClk) then
            if piRst = '1' then
                auxCount <= to_unsigned(0, NBits);
            elsif piEna = '1' and piPWM = '1' then
                auxCount <= auxCount + to_unsigned(1, NBits);
                if auxCount = to_unsigned(Max-1, NBits) then
                    auxCount <= to_unsigned(0, NBits);
                end if;
            end if;
        end if;
    end process;
	
    -- Calcular ciclos de trabajo basados en las entradas piM1 y piM2
    dutyCycle1 <= unsigned(piM1);
    dutyCycle2 <= unsigned(piM2);

    -- Generar salidas PWM para los motores
    poM1 <= '1' when auxCount < dutyCycle1 else '0';
    poM2 <= '1' when auxCount < dutyCycle2 else '0';

end A_PWM;

