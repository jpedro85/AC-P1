----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:30 03/02/2023 
-- Design Name: 
-- Module Name:    memoria_instrocoes - Behavioral 
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

entity memoria_instrocoes is
    Port ( endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_r : out  STD_LOGIC;
           constante : out  STD_LOGIC_VECTOR (7 downto 0));
end memoria_instrocoes;

architecture Behavioral of memoria_instrocoes is

begin
	
	process (endereco) 
	begin
	
		case endereco is
		
			when "00000000" => opcode<="00010"; sel_r<='1'; constante<="00001010" ;
			when "00000001" => opcode<="00000"; sel_r<='0'; constante<="00000000" ;
			when "00000010" => opcode<="10010"; sel_r<='0'; constante<="00000111" ;
			when "00000011" => opcode<="01011"; sel_r<='0'; constante<="00000000" ;
			when "00000100" => opcode<="01111"; sel_r<='0'; constante<="00001110" ;
			when "00000101" => opcode<="00010"; sel_r<='0'; constante<="11111111" ;
			when "00000110" => opcode<="10011"; sel_r<='0'; constante<="00011101" ;
			when "00000111" => opcode<="00010"; sel_r<='1'; constante<="11111111" ;
			when "00001000" => opcode<="01010"; sel_r<='0'; constante<="00000000" ;
			when "00001001" => opcode<="00010"; sel_r<='1'; constante<="00000001" ;
			
			when "00001010" => opcode<="00101"; sel_r<='0'; constante<="00000000" ;
			when "00001011" => opcode<="00010"; sel_r<='1'; constante<="00001110" ;
			when "00001100" => opcode<="00110"; sel_r<='0'; constante<="00000000" ;
			when "00001101" => opcode<="10011"; sel_r<='0'; constante<="00011101" ;
			when "00001110" => opcode<="00100"; sel_r<='0'; constante<="00001010" ;
			when "00001111" => opcode<="00010"; sel_r<='0'; constante<="00000000" ;
			when "00010000" => opcode<="00100"; sel_r<='0'; constante<="00001011" ;
			when "00010001" => opcode<="00010"; sel_r<='0'; constante<="00000011" ;
			when "00010010" => opcode<="00100"; sel_r<='0'; constante<="00000101" ;
			when "00010011" => opcode<="00011"; sel_r<='0'; constante<="00001011" ;
			
			when "00010100" => opcode<="00011"; sel_r<='1'; constante<="00001010" ;
			when "00010101" => opcode<="00101"; sel_r<='0'; constante<="00000000" ;
			when "00010110" => opcode<="00100"; sel_r<='0'; constante<="00001011" ;
			when "00010111" => opcode<="00011"; sel_r<='0'; constante<="00000101" ;
			when "00011000" => opcode<="00010"; sel_r<='1'; constante<="00000001" ;
			when "00011001" => opcode<="00110"; sel_r<='0'; constante<="00000000" ;
			when "00011010" => opcode<="10001"; sel_r<='0'; constante<="00011100" ;
			when "00011011" => opcode<="10011"; sel_r<='0'; constante<="00010010" ;
			when "00011100" => opcode<="00011"; sel_r<='0'; constante<="00001011" ;
			when "00011101" => opcode<="00001"; sel_r<='0'; constante<="00000000" ;
			when "00011110" => opcode<="10011"; sel_r<='0'; constante<="00011110" ;
			
			when others 	 => opcode<="XXXXX"; sel_r<='X'; constante<="XXXXXXXX" ;
			
			
		end case;
			
	end process;

end Behavioral;

