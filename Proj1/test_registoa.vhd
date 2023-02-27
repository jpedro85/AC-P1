--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:21:03 02/27/2023
-- Design Name:   
-- Module Name:   Z:/P1/Proj1/test_registoa.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegistoA
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
 
ENTITY test_registoa IS
END test_registoa;
 
ARCHITECTURE behavior OF test_registoa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistoA
    PORT(
         dados_r : IN  std_logic_vector(7 downto 0);
         sel_r : IN  std_logic;
         escr_r : IN  std_logic;
         clk : IN  std_logic;
         operando : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dados_r : std_logic_vector(7 downto 0) := (others => '0');
   signal sel_r : std_logic := '0';
   signal escr_r : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal operando : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistoA PORT MAP (
          dados_r => dados_r,
          sel_r => sel_r,
          escr_r => escr_r,
          clk => clk,
          operando => operando
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
		
		--ESCr_R=0,SEL_R=0;Dados_r="01010101"
		dados_r<="01010101";escr_r<='0';sel_r<='0';wait for 100ns;
		--ESCr_R=1,SEL_R=0;Dados_r="01010101"
		dados_r<="01010101";escr_r<='1';sel_r<='0';wait for 100ns;
		--ESCr_R=0,SEL_R=0;Dados_r="01010101"
		dados_r<="01010100";escr_r<='0';sel_r<='0';wait for 100ns;
		--ESCr_R=1,SEL_R=1;Dados_r="01010101"
		dados_r<="01010100";escr_r<='1';sel_r<='1';wait for 100ns;
		--ESCr_R=1,SEL_R=0;Dados_r="01010101"
		escr_r<='1';sel_r<='0';dados_r<="01010100";wait for 100ns;

      wait;
   end process;

END;
