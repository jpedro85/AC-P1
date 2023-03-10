library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nor_8_bits is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           f : in  STD_LOGIC;
           g : in  STD_LOGIC;
           h : in  STD_LOGIC;
           s  : out  STD_LOGIC);
end Nor_8_bits;

architecture Behavioral of Nor_8_bits is

begin
	
	process (a,b,c,d,e,f,g,h) begin
		
		s <= not ( a or b  or c or d or e or f or g or h );
		
	end process;

end Behavioral;

