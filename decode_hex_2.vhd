#@DECODE HEX(2)
--------DECODE HEX(2)---------
library	IEEE;	
use	IEEE.Std_Logic_1164.all;	
entity	DEC2	is	
port (  N:	in	std_logic_vector(3	downto	0);	
		    F:	out	std_logic_vector(6	downto	0)	
		);	
end	DEC2;	
architecture DEC2_bhv	of DEC2 is	
begin		
		F	<="0000001" when N = "0000" else -- "0" 
     "1001111" when N = "0001" else -- "1" 
     "0010010" when N = "0010" else -- "2" 
     "0000110" when N = "0011" else -- "3" 
     "1001100" when N = "0100" else -- "4" 
     "0100100" when N = "0101" else -- "5" 
     "0100000" when N = "0110" else -- "6" 
     "0001111" when N = "0111" else -- "7" 
    "0000000"  when N = "1000" else -- "8"     
    "0000100"  when N = "1001"; -- "9" 	

end	DEC2_bhv;


---------- topo ---------

entity	topo	is	
	port	(	HEX0:	out	std_logic_vector(6	downto	0));	

end	topo;	
architecture	topo_bhv	of	topo	is	
				
		signal	N:	std_logic_vector(3	downto	0);	
		signal	saida:	std_logic_vector(6	downto	0);	

component	DEC2	
			port	(N:	in	std_logic_vector(3	downto	0);		
					F:	out	std_logic_vector(6	downto	0)	
					);	
			end	component;	

begin	
			U3:	C3	port	map	(N,	saida);		
			HEX2	<=	saida;	
end	topo_bhv;	