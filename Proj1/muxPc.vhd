library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxPc is
    Port ( escr_pc : out  STD_LOGIC;
           sel_pc : in  STD_LOGIC_VECTOR (2 downto 0);
           s_flag : in  STD_LOGIC;
           operando1_nor: in  STD_LOGIC;
			  operando1_7 : in  STD_LOGIC;
			  zero : in STD_LOGIC;
			  um : in STD_LOGIC
			  );
end muxPc;

architecture Behavioral of muxPc is

begin

	process(sel_pc,s_flag,operando1_nor,operando1_7)
		begin
		
			case sel_pc is
				
				when "000" => escr_pc <= s_flag;
				when "001" => escr_pc <= operando1_nor;
				when "010" => escr_pc <= operando1_7;
				when "011" => escr_pc <= zero;
				when "100" => escr_pc <= um;
				when others => escr_pc <= 'X';

			end case;
			
	end process;
	
end Behavioral;

