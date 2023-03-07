--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:19:39 03/02/2023
-- Design Name:   
-- Module Name:   C:/Users/Pedro/Desktop/Pastas/trabalhos/UMa/2_Ano/2_Semestre/AC/P1/AC-P1/Proj1/test_muxPC.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muxPc
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
 
ENTITY test_muxPC IS
END test_muxPC;
 
ARCHITECTURE behavior OF test_muxPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT muxPc
    PORT(
         escr_pc : OUT  std_logic;
         sel_pc : IN  std_logic_vector(2 downto 0);
         s_flag : IN  std_logic;
         operando1 : IN  std_logic_Vector (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel_pc : std_logic_vector(2 downto 0) := (others => '0');
   signal s_flag : std_logic := '0';
   signal operando1 : std_logic_Vector (7 downto 0);


 	--Outputs
   signal escr_pc : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: muxPc PORT MAP (
          escr_pc => escr_pc,
          sel_pc => sel_pc,
          s_flag => s_flag,
          operando1 => operando1
        );


   -- Stimulus process
   stim_proc: process
   begin		
      
		--sel_pc="000";s_flag='1';operando1_7<='0';testzero<='0';
		sel_pc <= "000";s_flag <= '1'; operando1 <= "00000000" ; wait for 50 ns;
		sel_pc <= "000";s_flag <= '0'; operando1 <= "00000000" ; wait for 50 ns;
		sel_pc <= "010";s_flag <= '0'; operando1 <= "10000000" ; wait for 50 ns;
		sel_pc <= "001";s_flag <= '0'; operando1 <= "01010010" ; wait for 50 ns;
		sel_pc <= "001";s_flag <= '1'; operando1 <= "00000000" ; wait for 50 ns;
		sel_pc <= "011";s_flag <= '1'; operando1 <= "00010000" ; wait for 50 ns;
		sel_pc <= "100";s_flag <= '0'; operando1 <= "01010010" ; wait for 50 ns;
		
      wait;
   end process;

END;
