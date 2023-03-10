library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram is
    Port ( operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           constante : in  STD_LOGIC_VECTOR (7 downto 0);
           wr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dados_m : out  STD_LOGIC_VECTOR (7 downto 0));
end ram;

architecture Behavioral of ram is

begin

	process(operando1, constante, wr, clk)
	
	type memoria is array ( 0 to 255) of STD_LOGIC_VECTOR (7 downto 0);
	variable memoria_endereco : memoria;
	
	begin
		
		if wr = '1' then 
			if  rising_edge (clk) then
				memoria_endereco(TO_INTEGER(unsigned(constante))) := operando1;
			end if;
		else
			dados_m <= memoria_endereco(TO_INTEGER(unsigned(constante)));
		end if;
		
	end process;

end Behavioral;

