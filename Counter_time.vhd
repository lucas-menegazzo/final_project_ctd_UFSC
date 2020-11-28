------ Contador de Tempo - Counter_time - Pedro
-- DONE assignar nomes corretos às IOs
-- TODO verificar se funciona isoladamente

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;

entity Counter_time is
    port (
    tc   :out std_logic_vector (7 downto 0);  	    -- Output of the counter. Se conecta com MUX2:1 de entrada E2
                                                    -- Se tc = 5, ativa end_time
E :in  std_logic;                      		        -- Enable counting. Se conecta com E1
    clk    :in  std_logic;                          -- Input clock. Se conecta com CLK_1Hz
R  :in  std_logic                      		        -- Input reset. Se conecta com R1
    );
end entity;

architecture rtl of Counter_time is
signal count :std_logic_vector (7 downto 0);	    -- Sinal de Contagem
begin
    process (clk, R) begin
        if (R = '1') then
            count <= (others=>'0');
        elsif (rising_edge(clk)) then
            if (E = '1') then
                count <= count + 1;
            end if;
        end if;
    end process;
    tc <= count;


end architecture;