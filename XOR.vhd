--XOR_GATE
Library ieee;
use ieee . std_logic_1164 . all;

entity XOR_GATE is
port(
	a,b : IN BIT
	z : OUT BIT);
end XOR_GATE;

architecture XOR_GATE_Arch of XOR_GATE is
begin
z <= a XOR b;

end XOR_GATE_Arch;