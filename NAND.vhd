--NAND_GATE
Library ieee;
use ieee . std_logic_1164 . all;

entity NAND_GATE is
port(
	a,b : IN BIT
	z : OUT BIT);
end NAND_GATE;

architecture NAND_GATE_Arch of NAND_GATE is
begin
z <= a NAND b;

end NAND_GATE_Arch;