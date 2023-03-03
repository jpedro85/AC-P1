----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:41 03/01/2023 
-- Design Name: 
-- Module Name:    muxPc - Behavioral 
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

entity muxPc is
    Port ( escr_pc : out  STD_LOGIC;
           sel_pc : in  STD_LOGIC_VECTOR (2 downto 0);
           s_flag : in  STD_LOGIC;
           operando1: in  STD_LOGIC_VECTOR (7 downto 0));
end muxPc;

architecture Behavioral of muxPc is

begin

	process(sel_pc,s_flag,operando1)
		begin
		
			case sel_pc is
				
				when "000" => escr_pc <= s_flag;
				when "001" => escr_pc <= not(operando1(7) or operando1(6) or operando1(5) or operando1(4) or operando1(3) or operando1(2) or operando1(1) or operando1(0));
				when "010" => escr_pc <= operando1(7);
				when "011" => escr_pc <= '0';
				when "100" => escr_pc <= '1';
				when others => escr_pc <= 'X';

			end case;
			
	end process;
	
end Behavioral;

