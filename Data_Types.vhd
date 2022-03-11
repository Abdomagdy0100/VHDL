--Predefined data types
[Boolean {true or fals } , Natural , integer ,Signed , Unsigned]
-------------------------------------
--define new data type 
type type_name is type_defination;

--ex:
type integer is range 00000 to 11111 ;
type integer is range -32 to +32 ;
type BIT is ('1','0');
type my_std_logic is  ('1','0',);
type Color is  (red,blue);

signal abdo: unsigned(3 downto 0);
abdo = "0101"; --  5
abdo = "1101"; -- 13

signal abdo: signed(3 downto0);
abdo = "0101"; --  5
abdo = "1101"; -- -3
---------------------------------------
--note
--if we have any varible has(any type) and we need to 
--convert it to another type within our code 

signal any_variable: unsigned(3 downto 0);
--convert to integer
conv_integer (any_variable);

-----------------------------------------

--multi dimensional victors
type type_name is array(....) of data_type; --each bit in array has type of (data_type)
--EX:
type row    is array(7 downto 0) of std_logic; --std_logic صف مكون من 8 خانات كل خانة  من نوع 
type matrix is array(0 to 3)     of row;    -- من 8 خانات row مصفوفة كونة من أربعة صفوف كل صف مكون من 
signal abdo : matrix; -- there matrix called abdo
signal signal_name : type_name;
 
