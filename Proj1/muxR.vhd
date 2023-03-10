library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxR is
    Port ( constante : in  STD_LOGIC_VECTOR (7 downto 0);
           dados_m : in  STD_LOGIC_VECTOR (7 downto 0);
           dados_in : in  STD_LOGIC_VECTOR (7 downto 0);
           resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           sel_data : in  STD_LOGIC_VECTOR (1 downto 0);
           dados_r : out  STD_LOGIC_VECTOR (7 downto 0));
end muxR;

architecture Behavioral of muxR is

begin

	process(constante,dados_m,dados_in,resultado,sel_data)
	
		begin
			
			case sel_data is
			
				when "00" => dados_r <= resultado;
				when "01" => dados_r <= dados_in;
				when "10" => dados_r <= dados_m;
				when "11" => dados_r <= constante;
				when others => dados_r <= "XXXXXXXX";
				
			end case;
			
	end process;

end Behavioral;

