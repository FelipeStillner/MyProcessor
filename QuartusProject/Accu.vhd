library IEEE;
use IEEE.std_logic_1164.all;

entity Accu is
  port(
    clk: in std_logic;
    d: in std_logic_vector(3 downto 0);
    q: out std_logic_vector(3 downto 0)
  );
end Accu;

architecture rtl of Accu is

  component FFD is
    port(
      clk : in std_logic;
      d: in std_logic;
      q: out std_logic
    );
  end component;

begin
  FFD0: FFD port map(clk, d(0), q(0));
  FFD1: FFD port map(clk, d(1), q(1));
  FFD2: FFD port map(clk, d(2), q(2));
  FFD3: FFD port map(clk, d(3), q(3));
end rtl;