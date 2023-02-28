--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:42:19 02/28/2023
-- Design Name:   
-- Module Name:   Z:/P1/Proj1/registo_flagsTB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registo_flags
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
 
ENTITY registo_flagsTB IS
END registo_flagsTB;
 
ARCHITECTURE behavior OF registo_flagsTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registo_flags
    PORT(
         sel_flag : IN  std_logic_vector(2 downto 0);
         escr_flag : IN  std_logic;
         e_flag : IN  std_logic_vector(4 downto 0);
         clk : IN  std_logic;
         s_flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sel_flag : std_logic_vector(2 downto 0) := (others => '0');
   signal escr_flag : std_logic := '0';
   signal e_flag : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal s_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registo_flags PORT MAP (
          sel_flag => sel_flag,
          escr_flag => escr_flag,
          e_flag => e_flag,
          clk => clk,
          s_flag => s_flag
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      sel_flag <= "XXX"; escr_flag <= '0'; e_flag <= "11000"; wait for 100 ns;
		sel_flag <= "XXX"; escr_flag <= '1'; e_flag <= "11000"; wait for 100 ns;
		
		sel_flag <= "000"; escr_flag <= '0'; e_flag <= "11000"; wait for 100 ns;
		sel_flag <= "001"; escr_flag <= '0'; e_flag <= "11000"; wait for 100 ns;
		sel_flag <= "010"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "011"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "100"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		
		sel_flag <= "000"; escr_flag <= '1'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "000"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "001"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "010"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "011"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		sel_flag <= "100"; escr_flag <= '0'; e_flag <= "01101"; wait for 100 ns;
		
		sel_flag <= "000"; escr_flag <= '1'; e_flag <= "00011"; wait for 100 ns;
		sel_flag <= "000"; escr_flag <= '0'; e_flag <= "00011"; wait for 100 ns;
		sel_flag <= "001"; escr_flag <= '0'; e_flag <= "00011"; wait for 100 ns;
		sel_flag <= "010"; escr_flag <= '0'; e_flag <= "00011"; wait for 100 ns;
		sel_flag <= "011"; escr_flag <= '0'; e_flag <= "00011"; wait for 100 ns;
		sel_flag <= "100"; escr_flag <= '0'; e_flag <= "00011"; wait for 100 ns;
		
      wait;
   end process;

END;
