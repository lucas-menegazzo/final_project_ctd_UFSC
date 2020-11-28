--	MUX	1 ----
library	IEEE;	
use	IEEE.Std_Logic_1164.all;	
entity	MUX1	is	
port	(R_OUT:	in	std_logic_vector(3	downto	0);	
			 C_OUT:	in	std_logic_vector(3	downto	0);		
			 E2:	in	std_logic_vector(1	downto	0);	
						M:	out	std_logic_vector(3	downto	0)	
					);	
end	MUX1;	
architecture	MUX1_bhv	of	MUX1	is	
begin		
		M	<=	(A	or	B)	when	E2	=	'1'	else	
							(A	and	B);	
end	MUX1_bhv;

---------- topo ---------

component M1
 port (R_OUT : in std_logic_vector(3 downto 0);
 C_OUT : in std_logic_vector(3 downto 0);
 E2 : in std_logic_vector(1 downto 0);
 M_OUT : out std_logic_vector(3 downto 0)
 );
 end component; 

 L3: Mux port map (R_OUT,  C_OUT,  E2,
 SW(17 downto 16), LEDR(3 downto 0));