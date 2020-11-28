library ieee;
use ieee.std_logic_1164.all;
entity D_FF is port (
CLK_500Hz: in std_logic;
E3: in std_logic;
RST: in std_logic;
R2: in std_logic;
Q: out std_logic );
end D_FF;
architecture behv of D_FF is
begin
process(CLK_500Hz, R2)
begin
if (RST = '0') then
Q <= '0';
elsif (CLK_500Hz'event and CLK_500Hz = '1') then
if (E3 = '1') then
Q <= R2;
end if;
end if;
end process;
end behv;
process(CLK_500Hz,RST)
begin
if (RST = '0') then
Q <= '0';
elsif (CLK_500Hz'event and CLK_500Hz = '1') then
if (E3 = '1') then
Q <= R2;
end if;
end if;
end process;
