library IEEE;
use IEEE.std_logic_1164.all;

entity Mux is
  port(
    clk: in std_logic;
    i: in std_logic_vector(3 downto 0);
    accu: in std_logic_vector(3 downto 0);
    oram: in std_logic_vector(3 downto 0);
    osum: in std_logic_vector(3 downto 0);
    osub: in std_logic_vector(3 downto 0);
    oand: in std_logic_vector(3 downto 0);
    oor : in std_logic_vector(3 downto 0);
    oxor: in std_logic_vector(3 downto 0);
    Dout: buffer std_logic_vector(3 downto 0)
  );
end Mux;

architecture rtl of Mux is

begin

  process(clk)
  begin
    if rising_edge(clk) then
      if (i = "0010") then
        Dout <= oram;
      elsif (i = "1100") then
        Dout <= osum;
      elsif (i = "1101") then
        Dout <= osub;
      elsif (i = "1001") then
        Dout <= oand;
      elsif (i = "1010") then
        Dout <= oor;
      elsif (i = "1011") then
        Dout <= oxor;
      else
        Dout <= accu;
      end if;
    else
      Dout <= Dout;
    end if;
  end process;

end rtl;