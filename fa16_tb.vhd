library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity fa16_tb is 
end entity fa16_tb;

architecture arch_fa16_tb of fa16_tb is
	signal cin_s : std_logic;
	signal a_s,b_s,s_s : std_logic_vector(15 downto 0);
	signal cout_s : std_logic;

	component fa16_adder is
		port ( cin : in std_logic;
			a,b : in std_logic_vector(15 downto 0);
			s : out std_logic_vector(15 downto 0);
			cout : out std_logic );
	end component fa16_adder;
	
	begin
		map_fa : fa16_adder port map ( cin_s, a_s, b_s, s_s, cout_s );
	
	input_a : process begin
		a_s <= "0000000000000000";
		wait for 10 ns;
		a_s <= "1111111111111111";
		wait for 10 ns;
	end process;
	
	input_b : process begin
		b_s <= "0000000000000000";
		wait for 20 ns;
		b_s <= "1111111111111111";
		wait for 20 ns;
	end process;
end architecture arch_fa16_tb;
	
