library IEEE;
use IEEE.std_logic_1164.all;

entity FFD is
  port(
    clk : in std_logic;
    d: in std_logic;
    q: out std_logic
  );
end FFD;

architecture rtl of FFD is

begin

  process(clk)
  begin
    if clk'event and clk = '1' then
      q <= d;
    end if;
  end process;

end rtl;