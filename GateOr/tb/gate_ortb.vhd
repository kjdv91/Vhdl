--librerias

library ieee;
use ieee.std_logic_1164.all;


--Entidad

entity gate_ortb is 
end gate_ortb;    
 
--Arquitectura
architecture Behavioral of gate_ortb is
    signal Ab:   std_logic:='0';
    signal Bc:   std_logic:='0';
    signal De:   std_logic;

    --circuito a testear  definicion estructural
component gate_or is 
    port(entrada1 : in std_logic;
            entrada2 : in std_logic;
            salida : out std_logic);
end component; 

begin
    --instanciar circuito a testet
    u1: gate_or port map(entrada1 =>Ab,
                        entrada2 =>Bc,
                        salida=>De
                        );   -- descripcion estructural
    --generar estimulos
    process is   ---descripcion comportamental
        begin
        Ab <= '0';
        Bc <= '0';
        wait for 10 ns; 
        Ab <= '0';
        Bc <= '1';
        wait for 10 ns; 
        Ab <= '1';
        Bc <= '0';
        wait for 10 ns; 
        Ab <= '1';
        Bc <= '1';
        wait for 10 ns; 
    end process;
end Behavioral;