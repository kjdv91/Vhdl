--COMPUERTA OR
--Librerias
library ieee;
use ieee.std_logic_1164.all;


--Entidad
entity gate_or is 
    port(entrada1 : in std_logic;
            entrada2 : in std_logic;
            salida : out std_logic 
    );
end gate_or;


--arquitectura

architecture Behavioral of gate_or is 
begin 
salida <= entrada1 or entrada2;

end Behavioral;
