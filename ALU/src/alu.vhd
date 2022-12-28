--libraries 
library ieee;
use ieee.std_logic_1164.all;
--entity
entity alu is 
    port(X : in std_logic_vector (7 downto 0);
        Y : in std_logic_vector (7 downto 0);
        opera : in std_logic_vector (1 downto 0);
        result : out std_logic_vector (7 downto 0)
    );
end alu;
--architecture
architecture Behavioral of alu is 
begin
    with opera select
        result <= X or Y when "00",
               X and Y   when "01",
               X         when "10",
               Y         when others;
             

end Behavioral;
