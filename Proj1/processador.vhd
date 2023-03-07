----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:39 03/03/2023 
-- Design Name: 
-- Module Name:    processador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processador is
    Port ( reset : in  STD_LOGIC;
	 
           pin : in  STD_LOGIC_VECTOR (7 downto 0);
           pout : out  STD_LOGIC_VECTOR (7 downto 0);
			  
           endereco_instrucao : out  STD_LOGIC_VECTOR (7 downto 0);
           opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_r : in  STD_LOGIC;
           constante : in  STD_LOGIC_VECTOR (7 downto 0);
			  
			  endereco_m : out  STD_LOGIC_VECTOR (7 downto 0);--na interaça
			  dados_m : in  STD_LOGIC_VECTOR (7 downto 0);
           operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           wr : out  STD_LOGIC;
			  
           clk : in  STD_LOGIC);
end processador;

architecture structural of processador is

	component rom_descodificacao
		Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_alu : out  STD_LOGIC_VECTOR (2 downto 0);
           escr_p : out  STD_LOGIC;
           sel_data : out  STD_LOGIC_VECTOR (1 downto 0);
           escr_r : out  STD_LOGIC;
           wr : out  STD_LOGIC;
           sel_pc : out  STD_LOGIC_VECTOR (2 downto 0);
           escr_flag : out  STD_LOGIC;
           sel_flag : out  STD_LOGIC_VECTOR (2 downto 0));
	end component;

	component muxR 
		Port ( constante : in  STD_LOGIC_VECTOR (7 downto 0);
           dados_m : in  STD_LOGIC_VECTOR (7 downto 0);
           dados_in : in  STD_LOGIC_VECTOR (7 downto 0);
           resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           sel_data : in  STD_LOGIC_VECTOR (1 downto 0);
           dados_r : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component muxPC
		Port ( escr_pc : out  STD_LOGIC;
           sel_pc : in  STD_LOGIC_VECTOR (2 downto 0);
           s_flag : in  STD_LOGIC;
           operando1: in  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component registo_a
		Port ( dados_r : in  STD_LOGIC_VECTOR (7 downto 0);
			  sel_r: in STD_LOGIC;
           escr_r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           operando : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component registo_b
		Port ( dados_r : in  STD_LOGIC_VECTOR (7 downto 0);
           sel_r : in  STD_LOGIC;
           escr_r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           operando : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component registo_flags
		Port ( sel_flag : in  STD_LOGIC_VECTOR (2 downto 0);
           escr_flag : in  STD_LOGIC;
           e_flag : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           s_flag : out  STD_LOGIC);
   end component;
	
	component alu 
		Port ( resultado : out SIGNED (7 downto 0);--
           e_flag : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_alu : in  STD_LOGIC_VECTOR (2 downto 0);
           operando1 : in  SIGNED (7 downto 0);--
           operando2 : in  SIGNED (7 downto 0));--
   end component;
	
	component gestor_perifericos
		Port ( pin : in  STD_LOGIC_VECTOR (7 downto 0);
           Pout : out  STD_LOGIC_VECTOR (7 downto 0);
           dados_in : out  STD_LOGIC_VECTOR (7 downto 0);
           escr_p : in  STD_LOGIC;
           operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
	end component;
	
	component pc 
		Port ( reset : in  STD_LOGIC;
           escr_pc : in  STD_LOGIC;
           constante : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           endereco : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component nor8bit 
		Port ( A : STD_LOGIC_VECTOR ( 7 downto 0 );
				 S : STD_LOGIC );
	end component;
		
	signal s_dados_r , s_dados_in : STD_LOGIC_VECTOR (7 downto 0);
	signal s_operando1 , s_operando2 : STD_LOGIC_VECTOR (7 downto 0);
	signal s_resultado : SIGNED (7 downto 0);
	signal s_e_flag : STD_LOGIC_VECTOR (4 downto 0);
	signal s_escr_p , s_escr_r , s_escr_flag , s_escr_pc , s_s_flag : STD_LOGIC ;
	signal s_sel_data : STD_LOGIC_VECTOR (1 downto 0);
	signal s_sel_alu , s_sel_flag , s_sel_pc : STD_LOGIC_VECTOR (2 downto 0);

begin
	
	rom_desd: rom_descodificacao port map ( opcode ,s_sel_alu ,s_escr_p ,s_sel_data ,s_escr_r ,wr ,s_sel_pc ,s_escr_flag ,s_sel_flag );
	
	mux_r : muxR port map (constante ,dados_m ,s_dados_in , STD_LOGIC_VECTOR(s_resultado) ,s_sel_data ,s_dados_r );
	
	resg_a : registo_a port map(s_dados_r , sel_r, s_escr_r ,clk ,s_operando1);
	
	resg_b : registo_b port map(s_dados_r , sel_r, s_escr_r ,clk ,s_operando2);
	
	resg_flags : registo_flags port map(s_sel_flag ,s_escr_flag ,s_e_flag ,clk ,s_s_flag);
	
	unidade_arit : alu port map(s_resultado ,s_e_flag ,s_sel_alu ,SIGNED(s_operando1),SIGNED(s_operando2));	
	
	gt_perifericos : gestor_perifericos port map( pin ,pout ,s_dados_in ,s_escr_p ,s_operando1 ,clk);
	
	p_c : pc port map (reset ,s_escr_pc ,constante ,clk ,endereco_instrucao);
			
	mux_pc : muxPC port map( s_escr_pc ,s_sel_pc ,s_s_flag ,s_operando1);
	
	operando1 <= s_operando1;
	
	endereco_m <= constante;

end structural;

