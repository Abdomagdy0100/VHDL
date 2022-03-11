--Led blink MAX10 FPGA
library ieee;
use ieee. std_logic_1164 . all;
use ieee. numeric_std    . all;

entity my_led is
port(
	-- port decleration which input and which is output
	sys_clk  : in  std_logic; --leds will blink according to this clock
	LED_1    : out std_logic;
	LED_2    : out std_logic
	);
end entity my_led;

architecture my_led_arch of my_led is --main

	signal   state     : std_logic; --initial led state 
	constant sys_freq  : integer :=50000000; --system frequency
	constant LED_freq  : integer :=1;        --led blink freq
	--how many edges the counter should counter
	constant max_count : integer :=((sys_freq/LED_freq)/2);
	signal   counter   : unsigned(23 downto 0); --current stare of counter 

begin
	process (clk) begin --looks like while 1 the program is running here
		if rising_edge (clk) then --clock leading edge 
			if (counter = max_count) then --is it achive max_count which in the led will toggle?
				--if yes do that
				counter <= '0'; -- make the counter equal to 0
				state   <= not state; --toggle the state 
			else
				--if no do that
				counter <= counter+1; --increment the counter 
			end if;
		end if;
	end process;
	-- the two leds are always have diffrent states from each other
	LED_1 <= state;      --1
	LED_2 <= not state;  --0
end my_led_arch;	