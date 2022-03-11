   
   --this is a comment
 --------------------------------------------------------------------------------------------------------------  
Code structure 
{
	1)Library; " المكتبات"
	{
		--each library contains some branches which contains some already 
		--written code . no need to rewrite them again 
		
		--how to write synthax of Library ?
		{
			library Library_name;
			use library_name . package_name . package_part;
		}
		
		--EXAMPLE;
		{
			--we will use these two libraries 
			Library ieee;
			use ieee . std_logic_1164 . all;
			
			library ieee;
			use ieee . std_logic_arith . all;
		}
	}
			--------------------------------------	
			
	2)entity " الكيان"
	{
		--list of ports and their discription 
		--which is input and which is output
	
		--how to write synthax of entity
		{
			entity entity_name is
			port(
				port_name : port_mode signal_type;
				:
				:
				port_name : port_mode signal_type);
			end entity_name;
		}
		
		--port_name : (a , b , c , ........)
		--port_mode : (IN , OUT )
		--signal_type : (BIT==STD_LOGIC "one bit input/output [1,0]" , VICTOR(),...)
		
		--EXAMPLE;
		{
			entity AND_GATE is
			port(
				a : IN BIT
				b : IN BIT
				--a,b : IN BIT
				z : OUT BIT);
			end AND_GATE;
		}
	}
			--------------------------------------
			
	3)architecture "المعمارية"
	{
		--How is the circuit works
		
		--how to write synthax of architecture
		{
			architecture architecture_name of entity_name is
		
			begin
			--circuit code 
			end architecture_name;
		}
		
		--EXAMPLE;
		{
			architecture AND_GATE_Arch of AND_GATE is
		
			begin
			z <= a AND b;
			end AND_GATE_Arch;
		}
	}

}