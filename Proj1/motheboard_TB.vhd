--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:38:19 03/04/2023
-- Design Name:   
-- Module Name:   D:/VM/Partilha/P1/Proj1/motheboard_TB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: motherboard
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
 
ENTITY motheboard_TB IS
END motheboard_TB;
 
ARCHITECTURE behavior OF motheboard_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT motherboard
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         pin : IN  std_logic_vector(7 downto 0);
         pout : OUT  std_logic_vector(7 downto 0);
			
			--teste
			intrucao : out STD_LOGIC_VECTOR (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal pin : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal pout : std_logic_vector(7 downto 0);
	signal intrucao : STD_LOGIC_VECTOR (7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: motherboard PORT MAP (
          reset => reset,
          clk => clk,
          pin => pin,
          pout => pout,
			 intrucao => intrucao
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

      reset <= '1'; pin <= "00000000"; wait for 100 ns;
		reset <= '0'; pin <= "00001010"; wait for 100 ns;

      wait;
   end process;

END;
