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
		sum : out std_logic_vector(n-1 Downto 0);
		cout : out std_logic );
end entity fa16;

architecture arch_fa16 of fa16 is
	signal c : std_logic_vector(1 to n-1);	
	component fa16_adder is
		port( cin, x, y: in std_logic;
		s, cout : out std_logic);
	end component;
begin
	fa_0 : fa16_adder port map ( cin,a(0),b(0),sum(0),c(1));	
	g_1 : for i in 1 to n-2 Generate
		fa_i : fa16_adder port map ( c(i),a(i),b(i),sum(i),c(i+1));
	end Generate;
	fa_n : fa16_adder port map (c(n-1),a(n-1),b(n-1),sum(n-1),cout);

end architecture arch_fa16;
