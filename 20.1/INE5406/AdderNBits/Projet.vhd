library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adderNbits is
	generic(N: natural := 8);
	port(
		in0: in std_logic_vector(N-1 downto 0);
		in1: in std_logic_vector(N-1 downto 0);
		out0: out std_logic_vector(N-1 downto 0);
		ovf: out std_logic
	);
end entity;

architecture arch1 of adderNbits is
	signal tmp: std_logic_vector(N-1 downto 0);
begin
	ovf <= tmp(N-1) xor tmp(N-2);
	out0 <= tmp;
	tmp <= std_logic_vector( signed(in0) + signed(in1) );
	
end architecture; 