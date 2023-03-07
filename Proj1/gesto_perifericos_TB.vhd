--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:17:48 03/01/2023
-- Design Name:   
-- Module Name:   D:/VM/Partilha/P1/Proj1/gesto_perifericos_TB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gestor_perifericos
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
 
ENTITY gesto_perifericos_TB IS
END gesto_perifericos_TB;
 
ARCHITECTURE behavior OF gesto_perifericos_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gestor_perifericos
    PORT(
         pin : IN  std_logic_vector(7 downto 0);
         Pout : OUT  std_logic_vector(7 downto 0);
         dados_in : OUT  std_logic_vector(7 downto 0);
         escr_p : IN  std_logic;
         operando1 : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal pin : std_logic_vector(7 downto 0) := (others => '0');
   signal escr_p : std_logic := '0';
   signal operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Pout : std_logic_vector(7 downto 0);
   signal dados_in : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gestor_perifericos PORT MAP (
          pin => pin,
          Pout => Pout,
          dados_in => dados_in,
          escr_p => escr_p,
          operando1 => operando1,
          clk => clk
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

		pin <= "00000000"; escr_p <= '0'; operando1 <= "00111011"; wait for 50 ns;
		pin <= "10101010"; escr_p <= '0'; operando1 <= "01111111"; wait for 50 ns;
		pin <= "10101010"; escr_p <= '1'; operando1 <= "00110100"; wait for 50 ns;
		pin <= "10101010"; escr_p <= '0'; operando1 <= "00110100"; wait for 50 ns;
		
      wait;
   end process;

END;
