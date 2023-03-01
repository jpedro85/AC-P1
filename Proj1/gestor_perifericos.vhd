----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:50 03/01/2023 
-- Design Name: 
-- Module Name:    gestor_perifericos - Behavioral 
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

entity gestor_perifericos is
    Port ( pin : in  STD_LOGIC_VECTOR (7 downto 0);
           Pout : out  STD_LOGIC_VECTOR (7 downto 0);
           dados_in : out  STD_LOGIC_VECTOR (7 downto 0);
           escr_p : in  STD_LOGIC;
           operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end gestor_perifericos;

architecture Behavioral of gestor_perifericos is

begin
	
	process (pin,escr_p,operando1,clk)
	begin
	
	if rising_edge( clk ) then
	
		if escr_p = '0' then
			dados_in <= pin;
		else
			Pout <= operando1;
		end if;
	
	end if;
	
	end process;
	
end Behavioral;

