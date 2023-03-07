--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:52:07 03/02/2023
-- Design Name:   
-- Module Name:   D:/VM/Partilha/P1/Proj1/rom_descudificacao_TB.vhd
-- Project Name:  Proj1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rom_descudificacao
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
 
ENTITY rom_descodificacao_TB IS
END rom_descodificacao_TB;
 
ARCHITECTURE behavior OF rom_descodificacao_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rom_descodificacao
    PORT(
         opcode : IN  std_logic_vector(4 downto 0);
         sel_alu : OUT  std_logic_vector(2 downto 0);
         escr_p : OUT  std_logic;
         sel_data : OUT  std_logic_vector(1 downto 0);
         escr_r : OUT  std_logic;
         wr : OUT  std_logic;
         sel_pc : OUT  std_logic_vector(2 downto 0);
         escr_flag : OUT  std_logic;
         sel_flag : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
 
   --Inputs
   signal opcode : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal sel_alu : std_logic_vector(2 downto 0);
   signal escr_p : std_logic;
   signal sel_data : std_logic_vector(1 downto 0);
   signal escr_r : std_logic;
   signal wr : std_logic;
   signal sel_pc : std_logic_vector(2 downto 0);
   signal escr_flag : std_logic;
   signal sel_flag : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_descodificacao PORT MAP (
          opcode => opcode,
          sel_alu => sel_alu,
          escr_p => escr_p,
          sel_data => sel_data,
          escr_r => escr_r,
          wr => wr,
          sel_pc => sel_pc,
          escr_flag => escr_flag,
          sel_flag => sel_flag
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 25 ns;	

      opcode <= "00000"; wait for 25 ns;
		opcode <= "00001"; wait for 25  ns;
		opcode <= "00010"; wait for 25  ns;
		opcode <= "00011"; wait for 25  ns;
		opcode <= "00100"; wait for 25  ns;
		opcode <= "00101"; wait for 25  ns;
		opcode <= "00110"; wait for 25  ns;
		opcode <= "00111"; wait for 25  ns;
		opcode <= "01000"; wait for 25  ns;
		opcode <= "01001"; wait for 25  ns;
		opcode <= "01010"; wait for 25  ns;
		opcode <= "01011"; wait for 25  ns;
		opcode <= "01100"; wait for 25  ns;
		opcode <= "01101"; wait for 25  ns;
		opcode <= "01110"; wait for 25  ns;
		opcode <= "01111"; wait for 25  ns;
		opcode <= "10000"; wait for 25  ns;
		opcode <= "10001"; wait for 25  ns;
		opcode <= "10010"; wait for 25  ns;
		opcode <= "10011"; wait for 25  ns;
		opcode <= "10100"; wait for 25  ns;
		opcode <= "10101"; wait for 25  ns;
		opcode <= "10110"; wait for 25  ns;
		opcode <= "10111"; wait for 25  ns;
		opcode <= "11000"; wait for 25  ns;
		opcode <= "11001"; wait for 25  ns;
		opcode <= "11010"; wait for 25  ns;
		opcode <= "11011"; wait for 25  ns;
		opcode <= "11100"; wait for 25  ns;
		opcode <= "11101"; wait for 25  ns;
		opcode <= "11110"; wait for 25  ns;
		opcode <= "11111"; wait for 25  ns;
		
      wait;
   end process;

END;
