library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is
  port(
    a, b, i: in std_logic;
    s, o: out std_logic
  );
end FullAdder;

architecture rtl of FullAdder is
begin
    s <= (a xor b) xor i;
    o <= (a and b) or (b and i) or (a and i);
end rtl;
