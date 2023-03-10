library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registo_flags is
    Port ( sel_flag : in  STD_LOGIC_VECTOR (2 downto 0);
           escr_flag : in  STD_LOGIC;
           e_flag : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           s_flag : out  STD_LOGIC);
end registo_flags;

architecture Behavioral of registo_flags is

begin
	
	process(sel_flag,escr_flag,e_flag,clk)
	
		variable registo : STD_LOGIC_VECTOR (4 downto 0);
	
	begin
		
			if rising_edge(clk) and escr_flag='1' then
					
				registo := e_flag;
				
			end if;
			
			case sel_flag is
			
				when "000" => s_flag <= registo(0);
				when "001" => s_flag <= registo(1);
				when "010" => s_flag <= registo(2);
				when "011" => s_flag <= registo(3);
				when "100" => s_flag <= registo(4);
				when others => s_flag <= 'X';
				
			end case;

	end process;

end Behavioral;

