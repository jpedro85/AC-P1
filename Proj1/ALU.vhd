library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Port ( resultado : out signed (7 downto 0);
           e_flag : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_alu : in  STD_LOGIC_VECTOR (2 downto 0);
           operando1 : in  signed (7 downto 0);
           operando2 : in  signed (7 downto 0));
end alu;

architecture Behavioral of alu is
begin
	process ( operando1 , operando2 , sel_alu ) begin
		
		case sel_alu is
			when "000" => resultado <= operando1 + operando2;
			when "001" => resultado <= operando1 - operando2;
			when "010" => resultado <= operando1 and operando2;
			when "011" => resultado <= operando1 or operando2;
			when "100" => resultado <= operando1 nor operando2;
			when "101" => resultado <= operando1 xor operando2;
			when "110" =>  if operando1 < operando2 then
									e_flag(0) <= '1';
									e_flag(1) <= '1';
								else
									e_flag(0) <= '0';
									e_flag(1) <= '0';
								end if;
								if operando1 > operando2 then
									e_flag(3) <= '1';
									e_flag(4) <= '1';
								else
									e_flag(3) <= '0';
									e_flag(4) <= '0';
								end if;
								if operando1 = operando2 then
									e_flag(1) <= '1';
									e_flag(2) <= '1';
									e_flag(4) <= '1';
								else
									e_flag(2) <= '0';
								end if;
			when others =>
				resultado <= "XXXXXXXX";
				e_flag <= "XXXXX";
			
		end case;
	end process;
end Behavioral;