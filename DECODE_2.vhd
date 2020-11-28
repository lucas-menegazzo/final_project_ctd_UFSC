--------DECODE HEX(2)---------
library	IEEE;	
use	IEEE.Std_Logic_1164.all;	
entity	DEC2 is	
port (  tc: in std_logic_vector(3 downto 0);	----- SAIDA COUNTER ROUND	
        F: out std_logic_vector(6 downto 0)	---- SAIDA DECODER 
		);	
end	DEC2;	
architecture DEC2_bhv of DEC2 is	
begin		
F <="0000001" when N = "0000" else -- "0" 
     "1001111" when tc = "0001" else -- "1" 
     "0010010" when tc = "0010" else -- "2" 
     "0000110" when tc = "0011" else -- "3" 
     "1001100" when tc = "0100" else -- "4" 
     "0100100" when tc = "0101" else -- "5" 
     "0100000" when tc = "0110" else -- "6" 
     "0001111" when tc = "0111" else -- "7" 
    "0000000"  when tc = "1000" else -- "8"     
    "0000100"  when tc = "1001"; -- "9" 	

end DEC2_bhv;


---------- topo ---------

entity	topo is	
	port	(HEX2: out std_logic_vector(6 downto 0));	

end topo;	
architecture topo_bhv of topo is	
				
		signal	tc: std_logic_vector(3	downto	0);	
		signal	F: std_logic_vector(6 downto 0);	

component	DEC2	
			port	(tc: in	std_logic_vector(3 downto 0);		
				 F: out	std_logic_vector(6 downto 0)	
					);	
			end	component;	

begin	
			U3:	C3 port	map (tc, F);		
			HEX2	<= F;	
end	topo_bhv;	
