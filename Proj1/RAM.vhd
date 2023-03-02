----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:25:19 02/24/2023 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           constante : in  STD_LOGIC_VECTOR (7 downto 0);
           wr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dados_m : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is

begin

	process(operando1, constante, wr, clk)
	
	type memoria is array ( 0 to 255) of STD_LOGIC_VECTOR (7 downto 0);
	variable memoria_endereco : memoria;
	
	begin
		if rising_edge (clk) and wr = '1' then
				memoria_endereco(TO_INTEGER(unsigned(constante))) := operando1;
		else
			dados_m <= memoria_endereco(TO_INTEGER(unsigned(constante)));
		end if;
		
	end process;

end Behavioral;

