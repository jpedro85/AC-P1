--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:05:31 03/02/2023
-- Design Name:   
-- Module Name:   D:/VM/Partilha/P1/Proj1/memoria_instrocoes_TB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memoria_instrocoes
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
 
ENTITY memoria_instrocoes_TB IS
END memoria_instrocoes_TB;
 
ARCHITECTURE behavior OF memoria_instrocoes_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memoria_instrocoes
    PORT(
         endereco : IN  std_logic_vector(7 downto 0);
         opcode : OUT  std_logic_vector(4 downto 0);
         sel_r : OUT  std_logic;
         constante : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal endereco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal opcode : std_logic_vector(4 downto 0);
   signal sel_r : std_logic;
   signal constante : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memoria_instrocoes PORT MAP (
          endereco => endereco,
          opcode => opcode,
          sel_r => sel_r,
          constante => constante
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      endereco <= "00000000"; wait for 100 ns;
		endereco <= "00000001"; wait for 100 ns;
		endereco <= "00000010"; wait for 100 ns;
		endereco <= "00000011"; wait for 100 ns;
		endereco <= "00000100"; wait for 100 ns;
		endereco <= "00000101"; wait for 100 ns;
		endereco <= "00000110"; wait for 100 ns;
		endereco <= "00000111"; wait for 100 ns;
		endereco <= "00001000"; wait for 100 ns;
		endereco <= "00001001"; wait for 100 ns;
		
		endereco <= "00001010"; wait for 100 ns;
		endereco <= "00001011"; wait for 100 ns;
		endereco <= "00001100"; wait for 100 ns;
		endereco <= "00001101"; wait for 100 ns;
		endereco <= "00001110"; wait for 100 ns;
		endereco <= "00001111"; wait for 100 ns;
		endereco <= "00010000"; wait for 100 ns;
		endereco <= "00010001"; wait for 100 ns;
		endereco <= "00010010"; wait for 100 ns;
		endereco <= "00010011"; wait for 100 ns;
		
		endereco <= "00010100"; wait for 100 ns;
		endereco <= "00010101"; wait for 100 ns;
		endereco <= "00010110"; wait for 100 ns;
		endereco <= "00010111"; wait for 100 ns;
		endereco <= "00011000"; wait for 100 ns;
		endereco <= "00011001"; wait for 100 ns;
		endereco <= "00011010"; wait for 100 ns;
		endereco <= "00011011"; wait for 100 ns;
		endereco <= "00011100"; wait for 100 ns;
		endereco <= "00011101"; wait for 100 ns;
		endereco <= "00011110"; wait for 100 ns;
		endereco <= "00011111"; wait for 100 ns;
		
      wait;
   end process;

END;
