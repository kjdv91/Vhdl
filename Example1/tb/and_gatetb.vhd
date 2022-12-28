--librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad

entity and_gatetb is 
end and_gatetb;    
 
--Arquitectura
architecture dataFlow of and_gatetb is
    signal AA:   std_logic: ='0';
    signal BB:   std_logic: ='0';
    SIGNAL CC:   std_logic;

    --circuito a testear  definicion estructural
component and_gate is 
    port(A,B : in std_logic;
        C: out std_logic);
end component;  

begin
    --instanciar circuito a testet
    u1: and_gate port map(A =>AA,
                        B =>BB,
                        C=>CC
                        );   -- descripcion estructural
    --generar estimulos
    process is   ---descripcion comportamental
        begin
        AA <= '0';
        BB <= '0';
        wait for 10 ns; 
        AA <= '0';
        BB <= '1';
        wait for 10 ns; 
        AA <= '1';
        BB <= '0';
        wait for 10 ns; 
        AA <= '1';
        BB <= '1';
        wait for 10 ns; 
    end process;
end dataFlow;