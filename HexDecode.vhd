library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HexDecode is
    
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
end entity HexDecode;


-- ARCHITECTURE DECLARATION ------------------------------------------------------------------------
architecture A_HexDecode of HexDecode is
    -- local declarations (use function type file component constant signal procedure subtype alias)
--     signal aux : std_logic;
begin

	-- Segment A
	--poAH <= not((not piA and piD)or(not piB and not piC and not piD)or(piA and not piB and not piC)or(not piA and piB and piD));
	poAH <= (not piA and not piB and piC and not piD) or (piA and not piB and not piC and not piD) or (piA and not piB and piC and piD) or (piA and piB and not piC and piD);
			
	-- Segment B
	--poBH <= not((not piA and not piB)or(not piB and not piC)or(not piA and not piC and not piD)or(not piA and piC and piD));
	poBH <=  (not piA and piC and piD) or (not piA and piB and piC) or (piA and not piB and piC and not piD) or (piA and piB and piD);

	-- Segment C
	--poCH <= not((not piA and not piC)or(not piA and piD)or(not piB and not piC)or(not piA and piB));
	poCH <= (not piA and piC and piD) or (not piA and piB and not piC and not piD) or (piB and piC and piD);
	-- Segment D
	--poDH <= not ((not piA and not piB and not piD)or(not piB and not piC and not piD)or(not piA and not piB and piC)or(not piA and piC and not piD)or(not piA and piB and not piC and piD));
	poDH <= (not piA and not piB and piC and not piD) or (not piA and piB and not piC and piD) or (piA and not piB and not piC) or (piA and piB and piC);
	
	-- Segment E
	--poEH <= not((not piB and not piC and not piD)or(not piA and piC and not piD));
	poEH <= (not piB and piC and not piD) or (piA and not piB and not piC) or (piA and not piD);

	-- Segment F
	--poFH <= not((not piA and not piC and not piD)or(not piA and piB and not piC)or(not piA and piB and not piD)or(piA and not piB and not piC));
	poFH <= (piB and not piC and not piD) or (piA and not piC and not piD) or (piA and not piB and piC and piD) or (piA and piB and not piD);

	-- Segment G
	--poGH <= not((not piA and not piB and piC)or(not piA and piC and not piD)or(not piA and piB and not piC)or(piA and not piB and not piC));
	poGH <= (not piB and not piC and not piD) or (not piA and not piB and piC and piD) or (piA and piB and piC and not piD);

	-- Segment H
	poHH <= not piH;
     
end architecture A_HexDecode;
		 
