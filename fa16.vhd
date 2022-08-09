Library ieee;
use ieee.std_logic_1164.all;

entity adder16 is
	port ( Cin, x, y	: in std_logic;
		s, Cout		: out std_logic );
end entity adder16;


architecture fa16_logic of adder16 is
signal tmp_s : std_logic;
begin
	tmp_s <= (x and not y and not Cin) or (x and y and Cin) or (not x and y and not Cin) or (not x and not y and Cin);
	Cout <= (x and cin) or (y and cin) or (x and y);
end architecture fa16_logic;

library ieee;
use ieee.std_logic_1164.all;

entity fa16 is
	Generic ( n : Integer:= 16);
	port ( cin : in std_logic;
		a,b : in std_logic_vector(n-1 Downto 0);
		s : out std_logic_vector(n-1 Downto 0);
		cout : out std_logic );
end entity fa16;

architecture arch_fa16 of fa16 is
	signal c : std_logic_vector(1 to n-1);	
	component fa16_adder is
		port( cin, x, y: in std_logic;
		s, cout : out std_logic);
	end component;
begin
	fa_0 : fa16_adder port map ( cin,a(0),b(0),s(0),c(1));
	fa_1 : fa16_adder port map ( c(1),a(1),b(1),s(1),c(2));
	fa_2 : fa16_adder port map ( c(2),a(2),b(2),s(2),c(3));
	fa_3 : fa16_adder port map ( c(3),a(3),b(3),s(3),c(4));
	fa_4 : fa16_adder port map ( c(4),a(4),b(4),s(2),c(5));
	fa_5 : fa16_adder port map ( c(5),a(5),b(5),s(1),c(6));
	fa_6 : fa16_adder port map ( c(6),a(6),b(6),s(2),c(7));
	fa_7 : fa16_adder port map ( c(7),a(7),b(7),s(1),c(8));
	fa_8 : fa16_adder port map ( c(8),a(8),b(8),s(2),c(9));
	fa_9 : fa16_adder port map ( c(9),a(9),b(9),s(1),c(10));
	fa_10 : fa16_adder port map ( c(10),a(10),b(10),s(2),c(11));
	fa_11 : fa16_adder port map ( c(11),a(11),b(11),s(1),c(12));
	fa_12 : fa16_adder port map ( c(12),a(12),b(12),s(2),c(13));
	fa_13 : fa16_adder port map ( c(13),a(13),b(13),s(1),c(14));
	fa_14 : fa16_adder port map ( c(14),a(14),b(14),s(2),c(15));
	fa_15 : fa16_adder port map ( c(15),a(15),b(15),s(15),cout);

end architecture arch_fa16;
