----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:01:21 02/27/2023 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity ALU is
    Port ( resultado : out SIGNED (7 downto 0);
           e_flag : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_alu : in  STD_LOGIC_VECTOR (2 downto 0);
           operando1 : in  SIGNED (7 downto 0);
           operando2 : in  SIGNED (7 downto 0));
end ALU;

architecture Behavioral of ALU is
	begin
		process ( operando1 , operando2 , sel_alu ) begin
			
			case sel_alu is
				when "000" => resultado <= operando1 + operando2;
				when "001" => resultado <= operando1 - operando2;
				when "010" => resultado <= operando1 + operando2;
				when "011" =>
				when "100" 
				when "101" 
				when "110" 
				others 
		end process

end Behavioral;

