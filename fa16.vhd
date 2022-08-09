library ieee;
use ieee.std_logic_1164.all;

entity fa16 is
	port ( cin : in std_logic;
		a0,b0,a1,b1 : in std_logic;
		a2,b2,a3,b3 : in std_logic;
		a4,b4,a5,b5 : in std_logic;
		a6,b6,a7,b7 : in std_logic;
		a8,b8,a9,b9 : in std_logic;
		a10,b10,a11,b11 : in std_logic;
		a12,b12,a13,b13 : in std_logic;
		a14,b14,a15,b15 : in std_logic;
		s0,s1,s2,s3 : out std_logic;
		s4,s5,s6,s7 : out std_logic;
		s8,s9,s10,s11 : out std_logic;
		s12,s13,s14,s15 : out std_logic;
		cout : out std_logic );
end entity fa16;

architecture arch_fa16 of fa16 is
	signal c0,c1,c2,c3 : std_logic;
	signal c4,c5,c6,c7 : std_logic;
	signal c8,c9,c10,c11 : std_logic;
	signal c12,c13,c14,c15 : std_logic;
	
	component fa16_adder is
		port( cin : in std_logic;
		a : in std_logic;
		b : in std_logic;
		s : out std_logic;
		cout : out std_logic);
	end component fa16_adder;
begin
	c0<='0';
	
	map_0 : fa16_adder port map ( cin, a0, b0, s0, c1);
	map_1 : fa16_adder port map ( c1, a1, b1, s1, c2);
	map_2 : fa16_adder port map ( c2, a2, b2, s2, c3);
	map_3 : fa16_adder port map ( c3, a3, b3, s3, c4);
	map_4 : fa16_adder port map ( c4, a4, b4, s4 ,c5);
	map_5 : fa16_adder port map ( c5, a5, b5, s5 ,c6);
	map_6 : fa16_adder port map ( c6, a6, b6, s5 ,c7);
	map_7 : fa16_adder port map ( c7, a7, b7, s5 ,c8);
	map_8 : fa16_adder port map ( c8, a8, b8, s5 ,c9);
	map_9 : fa16_adder port map ( c9, a9, b9, s5 ,c10);
	map_10 : fa16_adder port map ( c10, a10, b10, s5 ,c11);
	map_11 : fa16_adder port map ( c11, a11, b11, s5 ,c12);
	map_12 : fa16_adder port map ( c12, a12, b12, s5 ,c13);
	map_13 : fa16_adder port map ( c13, a13, b13, s5 ,c14);
	map_14 : fa16_adder port map ( c14, a14, b14, s5 ,c15);
	map_15 : fa16_adder port map ( c15, a15,b15,s15,cout);

end architecture arch_fa16;
