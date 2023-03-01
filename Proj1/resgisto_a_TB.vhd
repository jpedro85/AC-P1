LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY resgisto_a_TB IS
END resgisto_a_TB;
 
ARCHITECTURE behavior OF resgisto_a_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registo_a
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
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registo_a PORT MAP (
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

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
