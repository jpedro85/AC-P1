--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:20 03/02/2023
-- Design Name:   
-- Module Name:   C:/Users/Pedro/Desktop/Pastas/trabalhos/UMa/2_Ano/2_Semestre/AC/P1/AC-P1/Proj1/testmuxR.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_muxR IS
END test_muxR;
 
ARCHITECTURE behavior OF test_muxR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxR
    PORT(
         constante : IN  std_logic_vector(7 downto 0);
         dados_m : IN  std_logic_vector(7 downto 0);
         dados_in : IN  std_logic_vector(7 downto 0);
         resultado : IN  std_logic_vector(7 downto 0);
         sel_data : IN  std_logic_vector(1 downto 0);
         dados_r : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal constante : std_logic_vector(7 downto 0) := (others => '0');
   signal dados_m : std_logic_vector(7 downto 0) := (others => '0');
   signal dados_in : std_logic_vector(7 downto 0) := (others => '0');
   signal resultado : std_logic_vector(7 downto 0) := (others => '0');
   signal sel_data : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal dados_r : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxR PORT MAP (
          constante => constante,
          dados_m => dados_m,
          dados_in => dados_in,
          resultado => resultado,
          sel_data => sel_data,
          dados_r => dados_r
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		--const="00000000";dados_m="11111111";dados_in="00001111";resultado="01010101";sel_data="00"
		constante <= "00000000"; dados_m <= "11111111"; dados_in <= "00001111"; resultado <="01010101"; sel_data <= "00";wait for 100ns;
		--const="00000000";dados_m="11111111";dados_in="00001111";resultado="01010101";sel_data="01"
		constante <= "00000000"; dados_m <= "11111111"; dados_in <= "00001111"; resultado <="01010101"; sel_data <= "01";wait for 100ns;
		--const="00000000";dados_m="11111111";dados_in="00001111";resultado="01010101";sel_data="10"
		constante <= "00000000"; dados_m <= "11111111"; dados_in <= "00001111"; resultado <="01010101"; sel_data <= "10";wait for 100ns;
		--const="00000000";dados_m="11111111";dados_in="00001111";resultado="01010101";sel_data="11"
		constante <= "00000000"; dados_m <= "11111111"; dados_in <= "00001111"; resultado <="01010101"; sel_data <= "11";wait for 100ns;

      wait;
   end process;

END;
