----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:53:20 02/27/2023 
-- Design Name: 
-- Module Name:    registo_flags - Behavioral 
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
		begin
		
			if rising_edge(clk) then
			
				if escr_flag='1' then
					
					case sel_flag
						when "000" =>;
						when "001" =>;
						when "010" =>;
						when "011" =>;
						when "100" =>;
				end if;
			
			end if;
		
	end process;

end Behavioral;

