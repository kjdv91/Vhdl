library ieee;
use ieee.std_logic_1164.all;
--entity
entity alutb is 
end alutb;
--architecture
architecture Behavioral of alutb is 
    --INPUTS
    signal Xx: std_logic_vector(7 downto 0):= (others => '0');
    signal Yy: std_logic_vector(7 downto 0):= (others => '0');
    signal operacion : std_logic_vector(1 downto 0):= (others => '0');
   -- OUTPUTS

   signal resultado : std_logic_vector(7 downto 0);

    component alu is
        port(X : in std_logic_vector (7 downto 0);
            Y : in std_logic_vector (7 downto 0);
            opera : in std_logic_vector (1 downto 0);
            result : out std_logic_vector (7 downto 0)
        );
        

    end component;

    begin 
    --instancio circuito
    alu1: alu port map(
        X => Xx,
        Y => Yy,
        opera => operacion,
        result => resultado
    );
    
    process is 
        begin
        

        Xx <= "00001000";  --8
        Yy <= "00000100";  --4
        operacion <= "00";  --and
        wait for 100 ns; 
        
        Xx <= "00001000";  --8
        Yy <= "00000100";  --4
        operacion <= "01";  -- or
        wait for 100 ns; 

        Xx <= "00001000";  --8
        Yy <= "00000100";  --4
        operacion <= "10";  -- X
        wait for 100 ns; 

        Xx <= "00001000";  --8
        Yy <= "00000100";  --4
        operacion <= "11";  -- Y
        wait for 100 ns; 
    end process;


end Behavioral;
