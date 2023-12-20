library IEEE;
use IEEE.std_logic_1164.all;

entity Sum is
  port(
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    s: out std_logic_vector(3 downto 0)
  );
end entity Sum;

architecture rtl of Sum is

	component FullAdder
    port( 
      a, b, i: in std_logic;
      s, o: out std_logic
    );
  end component;

  signal oi: std_logic_vector(2 downto 0);
  signal co: std_logic;

  

begin
  adder0: FullAdder port map(a=>a(0), b=>b(0), i=>'0', s=>s(0), o=>oi(0));
  adder1: FullAdder port map(a=>a(1), b=>b(1), i=>oi(0), s=>s(1), o=>oi(1));
  adder2: FullAdder port map(a=>a(2), b=>b(2), i=>oi(1), s=>s(2), o=>oi(2));
  adder3: FullAdder port map(a=>a(3), b=>b(3), i=>oi(2), s=>s(3), o=>co);
end rtl;
