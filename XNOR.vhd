--XNOR_GATE
Library ieee;
use ieee . std_logic_1164 . all;

entity XNOR_GATE is
port(
	a,b : IN BIT
	z : OUT BIT);
end XNOR_GATE;

architecture XNOR_GATE_Arch of XNOR_GATE is
begin
z <= a XNOR b;

end XNOR_GATE_Arch;