library IEEE;
use IEEE.std_logic_1164.all;

entity AndG is
  port (
    a, b: in std_logic_vector(3 downto 0);
    o: out std_logic_vector(3 downto 0)
  );
end entity AndG;

architecture rtl of AndG is
  
begin
  
  o(0) <= a(0) and b(0); 
  o(1) <= a(1) and b(1); 
  o(2) <= a(2) and b(2); 
  o(3) <= a(3) and b(3); 
  
end architecture rtl;