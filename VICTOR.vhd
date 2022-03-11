--BIT_VICTOR
--the signal contains more than 1 bit 
a: BIT_VICTOR(3 downto 0); >> means>> [3,2,1,0]  >> each single bit contains 1 or 0
b: BIT_VICTOR(7 downto 0); >> means>> [7,6,5,....,0]  >> each single bit contains 1 or 0

--or it can written like 

a: BIT_VICTOR(0 to 3); >> means>> [0,1,2,3]  >> each single bit contains 1 or 0
b: BIT_VICTOR(0 to 7); >> means>> [0,1,2,...,7]  >> each single bit contains 1 or 0

--EX :
a: BIT_VICTOR(3 downto 0);
a <= "0111";