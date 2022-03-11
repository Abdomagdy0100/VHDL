--OR_GATE
Library ieee;
use ieee . std_logic_1164 . all;

entity OR_GATE is
port(
	a,b : IN BIT
	z : OUT BIT); 
end OR_GATE;

architecture OR_GATE_Arch of OR_GATE is
begin
z <= a OR b;

end OR_GATE_Arch;