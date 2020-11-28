#@DECODE HEX(3)
--------DECODE HEX(3)---------
library	IEEE;	
use	IEEE.Std_Logic_1164.all;	
entity	DEC3	is	
port (  --"play":	in	std_logic_vector(3	downto	0);	
		    F:	out	std_logic_vector(6	downto	0)	
		);	
end	DEC3;	
architecture DEC3_bhv	of DEC3 is	
begin		
		F	<="0001111" when --"play" = "1" else --"t" 
     "0000011" when --"play" = "0" else --"r" ;	
end	DEC3_bhv;


---------- topo ---------

entity	topo	is	
	port	(	HEX0:	out	std_logic_vector(6	downto	0));	

end	topo;	
architecture	topo_bhv	of	topo	is	
				
		signal	--"play":	std_logic_vector(3	downto	0);	
		signal	saida:	std_logic_vector(6	downto	0);	

component	DEC3	
			port	(N:	in	std_logic_vector(3	downto	0);		
					F:	out	std_logic_vector(6	downto	0)	
					);	
			end	component;	

begin	
			U3:	C3	port	map	(N,	saida);		
			HEX3	<=	saida;	
end	topo_bhv;	