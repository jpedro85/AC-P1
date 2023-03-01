----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:33 03/01/2023 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

