library IEEE;
use IEEE.std_logic_1164.all;

entity DivFreq is
  port (
    d: buffer std_logic_vector(3 downto 0) := "0000";
    clk: in std_logic;
    rst: in std_logic
  );
end entity DivFreq;

architecture rtl of DivFreq is
  component FFJK is
    port ( 
      j, k, clk, reset, preset: in std_logic;
      q, qb: out std_logic
    );
  end component;

  signal nd: std_logic_vector(3 downto 0);
  signal i: std_logic_vector(3 downto 0);
  
begin
	i(0) <= '1';
	i(1) <= d(0);
	i(2) <= i(1) and d(1);
	i(3) <= i(2) and d(2);
  
  FFJK0: FFJK port map(i(0), i(0), clk, rst, '0', d(0), nd(0));
  FFJK1: FFJK port map(i(1), i(1), clk, rst, '0', d(1), nd(1));
  FFJK2: FFJK port map(i(2), i(2), clk, rst, '0', d(2), nd(2));
  FFJK3: FFJK port map(i(3), i(3), clk, rst, '0', d(3), nd(3));
  
end architecture rtl;