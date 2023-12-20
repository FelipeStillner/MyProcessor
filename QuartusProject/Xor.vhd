library IEEE;
use IEEE.std_logic_1164.all;

entity XorG is
  port (
    a, b: in std_logic_vector(3 downto 0);
    o: out std_logic_vector(3 downto 0)
  );
end entity XorG;

architecture rtl of XorG is
  
begin
  
  o(0) <= a(0) xor b(0); 
  o(1) <= a(1) xor b(1); 
  o(2) <= a(2) xor b(2); 
  o(3) <= a(3) xor b(3); 
  
end architecture rtl;