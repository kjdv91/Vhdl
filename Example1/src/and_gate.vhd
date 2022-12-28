--librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad

entity and_gate is 
    port(A,B : in std_logic;
        C: out std_logic);
end and_gate;    
--Arquitectura
architecture dataFlow of and_gate is
begin
    C <= A and B;
end dataFlow;