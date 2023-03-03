----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:08 03/01/2023 
-- Design Name: 
-- Module Name:    rom_descudificacao - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_descodificacao is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_alu : out  STD_LOGIC_VECTOR (2 downto 0);
           escr_p : out  STD_LOGIC;
           sel_data : out  STD_LOGIC_VECTOR (1 downto 0);
           escr_r : out  STD_LOGIC;
           wr : out  STD_LOGIC;
           sel_pc : out  STD_LOGIC_VECTOR (2 downto 0);
           escr_flag : out  STD_LOGIC;
           sel_flag : out  STD_LOGIC_VECTOR (2 downto 0));
end rom_descodificacao;

architecture Behavioral of rom_descodificacao is

begin
	
	process ( opcode ) 
	begin	
	
		case opcode is
			
			-- perifericos
			
			when "00000" => 
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "01";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "00001" => 
				sel_alu <= "XXX";
				escr_p <= '1';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
			
			-- leitura e escrita
			
			when "00010" => 
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "11";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "00011" => 
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "10";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "00100" => 
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '1';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
			
			-- aritmetica
			
			when "00101" => -- add
				sel_alu <= "000";
				escr_p <= '0';
				sel_data <= "00";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "00110" => --sub
				sel_alu <= "001";
				escr_p <= '0';
				sel_data <= "00";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "00111" =>  --and
				sel_alu <= "010";
				escr_p <= '0';
				sel_data <= "00";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "01000" => --or
				sel_alu <= "011";
				escr_p <= '0';
				sel_data <= "00";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "01001" => --nor
				sel_alu <= "100";
				escr_p <= '0';
				sel_data <= "00";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "01010" => --xor
				sel_alu <= "101";
				escr_p <= '0';
				sel_data <= "00";
				escr_r <= '1';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "01011" => --comp
				sel_alu <= "110";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '1';
				sel_flag <= "XXX";
			
			-- salto
			
			when "01100" => --JL
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "000";
				escr_flag <= '0';
				sel_flag <= "000";
				
			when "01101" => --JLE
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "000";
				escr_flag <= '0';
				sel_flag <= "001";
				
			when "01110" => --JE
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "000";
				escr_flag <= '0';
				sel_flag <= "010";
				
			when "01111" => --JG
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "000";
				escr_flag <= '0';
				sel_flag <= "011";
				
			when "10000" => --JGE
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "000";
				escr_flag <= '0';
				sel_flag <= "100";
				
			when "10001" => --JZ RA
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "001";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "10010" => --JN RA
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "010";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when "10011" => --JMP 
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "100";
				escr_flag <= '0';
				sel_flag <= "XXX";
				
			when others =>
				
				sel_alu <= "XXX";
				escr_p <= '0';
				sel_data <= "XX";
				escr_r <= '0';
				wr <= '0';
				sel_pc <= "011";
				escr_flag <= '0';
				sel_flag <= "XXX";

		end case;
	
	end process;

end Behavioral;

