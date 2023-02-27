--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:01:13 02/27/2023
-- Design Name:   
-- Module Name:   Z:/P1/Proj1/ALUTB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
  
ENTITY ALUTB IS
END ALUTB;
 
ARCHITECTURE behavior OF ALUTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         resultado : OUT  SIGNED (7 downto 0);
         e_flag : OUT  std_logic_vector(4 downto 0);
         sel_alu : IN  std_logic_vector(2 downto 0);
         operando1 : IN  SIGNED (7 downto 0);
         operando2 : IN  SIGNED (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel_alu : std_logic_vector (2 downto 0) := (others => '0');
   signal operando1 : SIGNED (7 downto 0) := (others => '0');
   signal operando2 : SIGNED (7 downto 0) := (others => '0');

 	--Outputs
   signal resultado : SIGNED(7 downto 0);
   signal e_flag : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          resultado => resultado,
          e_flag => e_flag,
          sel_alu => sel_alu,
          operando1 => operando1,
          operando2 => operando2
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for <clock>_period*10;
	  
		sel_alu <= "111"; operando1 <= "00000000"; operando2 <= "00000010"; wait for 1100 ns;
		
		sel_alu <= "000"; operando1 <= "00000000"; operando2 <= "00000010"; wait for 100 ns;
		sel_alu <= "000"; operando1 <= "01010111"; operando2 <= "00101111"; wait for 100 ns;
		sel_alu <= "000"; operando1 <= "10011111"; operando2 <= "01011110"; wait for 100 ns;
		sel_alu <= "000"; operando1 <= "10011110"; operando2 <= "10101010"; wait for 100 ns;
		
		sel_alu <= "001"; operando1 <= "00000000"; operando2 <= "00000010"; wait for 100 ns;
		sel_alu <= "001"; operando1 <= "01010111"; operando2 <= "00101111"; wait for 100 ns;
		sel_alu <= "001"; operando1 <= "10011111"; operando2 <= "01011110"; wait for 100 ns;
		sel_alu <= "001"; operando1 <= "10011110"; operando2 <= "10101010"; wait for 100 ns;
		
		sel_alu <= "010"; operando1 <= "11111111"; operando2 <= "11111111"; wait for 100 ns;
		sel_alu <= "010"; operando1 <= "00101111"; operando2 <= "00101111"; wait for 100 ns;
		sel_alu <= "010"; operando1 <= "00000000"; operando2 <= "00000000"; wait for 100 ns;
		sel_alu <= "010"; operando1 <= "10011110"; operando2 <= "10101010"; wait for 100 ns;
		
		sel_alu <= "011"; operando1 <= "11111111"; operando2 <= "11111111"; wait for 100 ns;
		sel_alu <= "011"; operando1 <= "00101111"; operando2 <= "00101111"; wait for 100 ns;
		sel_alu <= "011"; operando1 <= "00000000"; operando2 <= "00000000"; wait for 100 ns;
		sel_alu <= "011"; operando1 <= "10011110"; operando2 <= "10101010"; wait for 100 ns;
		
		sel_alu <= "100"; operando1 <= "11111111"; operando2 <= "11111111"; wait for 100 ns;
		sel_alu <= "100"; operando1 <= "00101111"; operando2 <= "00101111"; wait for 100 ns;
		sel_alu <= "100"; operando1 <= "00000000"; operando2 <= "00000000"; wait for 100 ns;
		sel_alu <= "100"; operando1 <= "10011110"; operando2 <= "10101010"; wait for 100 ns;
		
		sel_alu <= "101"; operando1 <= "11111111"; operando2 <= "11111111"; wait for 100 ns;
		sel_alu <= "101"; operando1 <= "00101111"; operando2 <= "00101111"; wait for 100 ns;
		sel_alu <= "101"; operando1 <= "00000000"; operando2 <= "00000000"; wait for 100 ns;
		sel_alu <= "101"; operando1 <= "10011110"; operando2 <= "10101010"; wait for 100 ns;
		
		sel_alu <= "110"; operando1 <= "11111111"; operando2 <= "11111111"; wait for 100 ns; --=
		sel_alu <= "110"; operando1 <= "00000000"; operando2 <= "00000000"; wait for 100 ns; --=
		sel_alu <= "110"; operando1 <= "00011110"; operando2 <= "01101010"; wait for 100 ns; --<
		sel_alu <= "110"; operando1 <= "01111111"; operando2 <= "00000111"; wait for 100 ns; -->
		sel_alu <= "110"; operando1 <= "10101111"; operando2 <= "10000111"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "10010000"; operando2 <= "01100000"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "00011110"; operando2 <= "10101010"; wait for 100 ns;
		
		wait;
   end process;
	
	

END;
