library IEEE;
use IEEE.std_logic_1164.all;

entity OrG is
  port (
    a, b: in std_logic_vector(3 downto 0);
    o: out std_logic_vector(3 downto 0)
  );
end entity OrG;

architecture rtl of OrG is
  
begin
  
  o(0) <= a(0) or b(0); 
  o(1) <= a(1) or b(1); 
  o(2) <= a(2) or b(2); 
  o(3) <= a(3) or b(3); 
  
end architecture rtl;