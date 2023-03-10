library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gestor_perifericos is
    Port ( pin : in  STD_LOGIC_VECTOR (7 downto 0);
           Pout : out  STD_LOGIC_VECTOR (7 downto 0);
           dados_in : out  STD_LOGIC_VECTOR (7 downto 0);
           escr_p : in  STD_LOGIC;
           operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end gestor_perifericos;

architecture Behavioral of gestor_perifericos is

begin
	
	process (pin,escr_p,operando1,clk)
	begin
	
	if rising_edge( clk ) then
	
		if escr_p = '0' then
			dados_in <= pin;
		else
			Pout <= operando1;
		end if;
	
	end if;
	
	end process;
	
end Behavioral;

