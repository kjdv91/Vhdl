--libraries 
library ieee;
use ieee.std_logic_1164.all;
--entity

entity multiplexor4 is 
    port(I1: in std_logic_vector(7 downto 0);
        I2: in std_logic_vector(7 downto 0);
        I3: in std_logic_vector (7 downto 0);
        I4: in std_logic_vector(7 downto 0);
        E: in std_logic;
        sel: in std_logic_vector(1 downto 0);
        F: out std_logic_vector(7 downto 0));
end multiplexor4;


--architecture
architecture Behavioral of multiplexor4 is 
signal link: std_logic_vector(7 downto 0);
begin 
    with sel select 
        link <= I1 when "00",
             I2 when "01",
             I3 when "10",
             I4 when others;
    with E select 
        F <= link when '0',
            "00000000" when others;

end Behavioral;   
