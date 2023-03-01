LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_Signed;
 

 
ENTITY alu_TB IS
END alu_TB;
 
ARCHITECTURE behavior OF alu_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         resultado : OUT  signed(7 downto 0);
         e_flag : OUT  std_logic_vector(4 downto 0);
         sel_alu : IN  std_logic_vector(2 downto 0);
         operando1 : IN  signed (7 downto 0);
         operando2 : IN  signed (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel_alu : std_logic_vector(2 downto 0) := (others => '0');
   signal operando1 : signed (7 downto 0) := (others => '0');
   signal operando2 : signed (7 downto 0) := (others => '0');

 	--Outputs
   signal resultado : signed (7 downto 0);
   signal e_flag : std_logic_vector(4 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
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


      sel_alu <= "111"; operando1 <= "00000000"; operando2 <= "00000010"; wait for 100 ns;
		
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
		
		sel_alu <= "110"; operando1 <= "11111111"; operando2 <= "11111111"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "00000000"; operando2 <= "00000000"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "00011110"; operando2 <= "01101010"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "01111111"; operando2 <= "00000111"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "10101111"; operando2 <= "10000111"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "10010000"; operando2 <= "01100000"; wait for 100 ns; 
		sel_alu <= "110"; operando1 <= "00011110"; operando2 <= "10101010"; wait for 100 ns;

      wait;
   end process;

END;
