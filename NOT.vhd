Library ieee;
use ieee . std_logic_1164 . all;

entity NOT_GATE is
port(
	a : IN BIT
	z : OUT BIT);
end NOT_GATE;

architecture NOT_GATE_Arch of NOT_GATE is
begin
z <= NOT a;

end NOT_GATE_Arch;
	
