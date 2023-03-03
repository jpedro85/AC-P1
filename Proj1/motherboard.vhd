----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:32:48 03/03/2023 
-- Design Name: 
-- Module Name:    motherboard - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity motherboard is
    Port ( reset : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           pin : in  STD_LOGIC_VECTOR (7 downto 0);
           pout : out  STD_LOGIC_VECTOR (7 downto 0));
end motherboard;

architecture structural of motherboard is

	component processador
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
	end component;
	
	component memoria_instrocoes 
		Port ( endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_r : out  STD_LOGIC;
           constante : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component ram
		Port ( operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           constante : in  STD_LOGIC_VECTOR (7 downto 0);
           wr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dados_m : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal s_endereco_instrucao , s_constante , s_endereco_m ,s_dados_m , s_operando1  : STD_LOGIC_VECTOR (7 downto 0);
	signal s_opcode : STD_LOGIC_VECTOR (4 downto 0);
	signal s_sel_r ,s_wr: STD_LOGIC ;
	
begin
	
	m_i : memoria_instrocoes port map ( s_endereco_instrucao ,s_opcode ,s_sel_r ,s_constante );
	
	m_d : ram port map ( s_operando1, s_endereco_m ,s_wr ,clk ,s_dados_m);
	
	p : processador port map (reset ,pin ,pout ,s_endereco_instrucao ,s_opcode ,s_sel_r ,s_constante ,s_endereco_m ,s_dados_m ,s_operando1 ,s_wr ,clk);
	
end structural;

