LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY pc_TB IS
END pc_TB;
 
ARCHITECTURE behavior OF pc_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pc
    PORT(
         reset : IN  std_logic;
         escr_pc : IN  std_logic;
         constante : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         endereco : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal escr_pc : std_logic := '0';
   signal constante : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal endereco : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pc PORT MAP (
          reset => reset,
          escr_pc => escr_pc,
          constante => constante,
          clk => clk,
          endereco => endereco
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

      reset <= '1' ; escr_pc <= '0' ; constante <= "00000000"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '0' ; constante <= "00000011"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '0' ; constante <= "00000101"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '0' ; constante <= "00000111"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '0' ; constante <= "00001111"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '1' ; constante <= "00000101"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '0' ; constante <= "00001111"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '1' ; constante <= "00001111"; wait for 100 ns;
		reset <= '0' ; escr_pc <= '0' ; constante <= "00001111"; wait for 100 ns;
		
      wait;
   end process;

END;
