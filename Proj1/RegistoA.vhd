----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:19 02/27/2023 
-- Design Name: 
-- Module Name:    RegistoA - Behavioral 
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

entity RegistoA is
    Port ( dados_r : in  STD_LOGIC_VECTOR (7 downto 0);
			  sel_r: in STD_LOGIC;
           escr_r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           operando : out  STD_LOGIC_VECTOR (7 downto 0));
end RegistoA;

architecture Behavioral of RegistoA is

begin

	process(dados_r,escr_r,clk)
	
		variable registo : STD_LOGIC_VECTOR (7 downto 0);
		
		begin
		
		if escr_r = '1' then
				
			if rising_edge(clk) and  sel_r = '0' then
				
				registo:= dados_r;
				
			end if;
					
		end if;
				
		operando<=registo;
				
	end process;

end Behavioral;

