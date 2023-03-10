library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pc is
    Port ( reset : in  STD_LOGIC;
           escr_pc : in  STD_LOGIC;
           constante : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end pc;

architecture Behavioral of pc is
	
begin

	process (reset,escr_pc,constante,clk)
	
	variable endereco_atual : STD_LOGIC_VECTOR ( 7 downto 0 );
	
	begin
	
		if rising_edge( clk ) then
			
			if	reset = '1' then
				endereco_atual := "00000000";	
			else
				if escr_pc = '0' then
					endereco_atual := endereco_atual + 1;
				else
					endereco_atual := constante;
				end if;
			end if;
			
		end if;
		
		endereco <= endereco_atual;
				
	end process;
	
end Behavioral;

