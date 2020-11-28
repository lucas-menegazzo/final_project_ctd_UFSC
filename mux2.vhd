--	MUX2 ----
library	IEEE;	
use	IEEE.Std_Logic_1164.all;	
entity	MUX2	is	
port	(ROM_OUT:	in	std_logic_vector(9	downto	0);	---- SAIDA REGISTRADOR
		E5:	in	std_logic_vector(1	downto	0);	 ----- SAIDA CONTROLE
		LED_OUT:	out	std_logic_vector(9	downto	0));	----- SAIDA MUX
end	MUX2;	
architecture MUX2_bhv of MUX2 is	
begin		
		M<=	ROM_OUT when E5 = '1' else "0000000000";	
end	MUX2_bhv;

---------- topo ---------
entity	topo is	
	port LEDR: out std_logic_vector(9 downto 0);
end	topo;

architecture	topo_bhv	of	topo	is	
	signal	ROM_OUT:	std_logic_vector(9	downto	0);	---- DECLARACAO DE ENTRADAS MUX 4 BIT
	signal  E5: std_logic_vector(9	downto	0); ---- DECLARACAO DE ENTRADAS MUX 4 BIT
	signal	LED_OUT:	std_logic_vector(9	downto	0);	---- DECLARACAO SAIDA MUX 4 BIT


component M2
 port (R_OUT : in std_logic_vector(9 downto 0); ---- SAIDA REGISTRADOR
 E5 : in std_logic_vector(1 downto 0); ----- SAIDA CONTROLE
 LED_OUT : out std_logic_vector(9 downto 0) ----- SAIDA MUX
 );
 end component; 	

begin	
 	L2: MUX2 port map (R_OUT, E5, LED_OUT);
	LEDR <=	LED_OUT;	

 end topo_bhv;
