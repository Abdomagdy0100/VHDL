--NOR_GATE
Library ieee;
use ieee . std_logic_1164 . all;

entity NOR_GATE is
port(
	a,b : IN BIT
	z : OUT BIT);
end NOR_GATE;

architecture NOR_GATE_Arch of NOR_GATE is
begin
z <= a NOR b;

end NOR_GATE_Arch;