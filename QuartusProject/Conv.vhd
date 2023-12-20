library IEEE;
use IEEE.std_logic_1164.all;

entity Conv is
  port(
    x: in std_logic_vector(3 downto 0);
    seg: out std_logic_vector(6 downto 0)
  );
end Conv;

architecture rtl of Conv is

begin
  seg(0) <= not( (x(1) and (not x(3) or x(2))) or ((not x(1) and x(3)) and (not x(0) or not x(2))) or (not x(0) and not x(2)) or (x(0) and not x(3) and x(2)));
  seg(1) <= not( (not x(3) and ((x(1) xnor x(0)) or not x(2))) or (not x(1) and x(0) and x(3)) or (not x(0) and not x(2) and x(3)));
  seg(2) <= not( (not x(3) and (not x(1) or x(0))) or (x(0) and not x(1)) or (x(3) xor x(2)));
  seg(3) <= not( (not x(0) and ((not x(3) and not x(2)) or (not x(1) and x(3)) or (x(1) and x(2)))) or (x(0) and (x(1) xor x(2))));
  seg(4) <= not( (not x(0) and (not x(2) or x(1))) or (x(3) and (x(2) or x(1))));
  seg(5) <= not( (not x(1) and (not x(0) or (x(2) and not x(3)))) or (x(1) and (x(3) or (not x(0) and x(2)))) or (x(3) and not x(2)));
  seg(6) <= not( (x(1) and (not x(0) or (x(3) nor x(2)))) or (x(3) and (not x(2) or x(0))) or ((not x(3) and not x(1)) and x(2)));
end rtl;