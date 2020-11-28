------ Contador de Rounds - Counter_round - Pedro
-- DONE assignar nomes corretos às IOs
-- TODO verificar se funciona isoladamente

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;

entity Counter_round is
    port (
        tc   :out std_logic_vector (7 downto 0);      -- Output of the counter. Se conecta ao dec7seg que está conectado ao HEX2
                                                      -- Se tc = 10, ativa end_round
        E :in  std_logic;                             -- Enable counting. Se conecta com E4
        clk    :in  std_logic;                        -- Input clock. Se conecta com CLK_500Hz
        R  :in  std_logic                             -- Input reset. Se conecta com R2
    );
end entity;

architecture rtl of Counter_round is
    signal count :std_logic_vector (7 downto 0);      -- Sinal de Contagem
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