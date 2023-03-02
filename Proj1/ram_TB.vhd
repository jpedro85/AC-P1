--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:37:40 03/02/2023
-- Design Name:   
-- Module Name:   D:/VM/Partilha/P1/Proj1/ram_TB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram
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
 
ENTITY ram_TB IS
END ram_TB;
 
ARCHITECTURE behavior OF ram_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         operando1 : IN  std_logic_vector(7 downto 0);
         constante : IN  std_logic_vector(7 downto 0);
         wr : IN  std_logic;
         clk : IN  std_logic;
         dados_m : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal constante : std_logic_vector(7 downto 0) := (others => '0');
   signal wr : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal dados_m : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram PORT MAP (
          operando1 => operando1,
          constante => constante,
          wr => wr,
          clk => clk,
          dados_m => dados_m
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

      operando1 <= "01011000"; constante<="00000010"; wr<='1'; wait for 100 ns;	
		operando1 <= "00011100"; constante<="00001000"; wr<='1'; wait for 100 ns;	
		operando1 <= "00001110"; constante<="00100000"; wr<='1'; wait for 100 ns;	
		operando1 <= "01011000"; constante<="00000010"; wr<='0'; wait for 100 ns;	
		operando1 <= "00011100"; constante<="00001000"; wr<='0'; wait for 100 ns;	
		operando1 <= "00001110"; constante<="00100000"; wr<='0'; wait for 100 ns;	
		
      wait;
   end process;

END;
