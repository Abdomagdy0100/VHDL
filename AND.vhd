--AND_GATE
Library ieee;
use ieee . std_logic_1164 . all;

entity AND_GATE is
port(
	a,b : IN BIT
	z : OUT BIT);
end AND_GATE;

architecture AND_GATE_Arch of AND_GATE is
begin
z <= a AND b;

end AND_GATE_Arch;
	
