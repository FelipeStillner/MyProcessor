entity ProjFinal is
  port (
    clkBoard: in std_logic;                 -- Fpga Clock (PIN N14)
    hex0: out std_logic_vector(6 downto 0); -- Address
    hex1: out std_logic_vector(6 downto 0); -- Instruction
    hex2: out std_logic_vector(6 downto 0); -- Data in Accumulator
    hex3: out std_logic_vector(6 downto 0)  -- Data in Address
  );
end entity ProjFinal;

architecture rtl of ProjFinal is

  component TimRef is
    port (
      clk: in std_logic;
      clk_2Hz: out std_logic
    );
  end component;

  component DivFreq is
    port (
      d: buffer std_logic_vector(3 downto 0);
      clk: in std_logic;
      rst: in std_logic
    );
  end component;

  component Accu is
    port(
      clk: in std_logic;
      d: in std_logic_vector(3 downto 0);
      q: out std_logic_vector(3 downto 0)
    );
  end component;

  -- RAM - Armazena os valores em cada endereco

  -- ROM - Armazena as instucoes e enderecos onde as instocues agirao

  component Mux is
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
      Dout: in std_logic_vector(3 downto 0);
    );
  end component;

  component Sum is
    port(
      a: in std_logic_vector(3 downto 0);
      b: in std_logic_vector(3 downto 0);
      s: out std_logic_vector(3 downto 0)
    );
  end component;

  component Sub is
    port(
      a: in std_logic_vector(3 downto 0);
      b: in std_logic_vector(3 downto 0);
      s: out std_logic_vector(3 downto 0)
    );
  end component;

  component AndG is
    port (
      a, b: in std_logic_vector(3 downto 0);
      o: out std_logic_vector(3 downto 0)
    );
  end component;

  component OrG is
    port (
      a, b: in std_logic_vector(3 downto 0);
      o: out std_logic_vector(3 downto 0)
    );
  end component;

  component XorG is
    port (
      a, b: in std_logic_vector(3 downto 0);
      o: out std_logic_vector(3 downto 0)
    );
  end component;

  signal clkTmp: std_logic;
  signal clk: std_logic_vector(3 downto 0); 
  signal romAddr: std_logic_vector(3 downto 0); 

  signal romOut: std_logic_vecto(7 downto 0);
  signal clkAccu: std_logic;
  signal clkMux: std_logic;
  signal clkRom: std_logic;
  signal clkRam: std_logic;
  signal muxData: std_logic_vector(3 downto 0);
  signal sum, sub, sand, sor, sxor: signal std_logic;

  signal wren: std_logic;

  signal addr: std_logic_vector(3 downto 0); 
  signal inst: std_logic_vector(3 downto 0); 
  signal accuData: std_logic_vector(3 downto 0); 
  signal addrData: std_logic_vector(3 downto 0); 
  
begin
  TimRef0: TimRef port map(clkBoard, clkTmp);
  DivFreq0: DivFreq port map(clk, clkTmp, '0');
  DivFreq1: DivFreq port map(romAddr, clk(3), '0');

  inst <= romOut(7 downto 4);
  addr <= romOut(3 downto 0);

  Accu0: Accu port map(clkAccu, muxData, accuData)

  Sum0: Sum port map(accuData, addrData, sum)
  Sub0: Sub port map(accuData, addrData, sub)
  And0: AndG port map(accuData, addrData, sand)
  Or0 : OrG port map(accuData, addrData, sor)
  Xor0: XorG port map(accuData, addrData, sxor)

  clkRom  <= not clk(2) and not clk(1) and clk(0);
  clkRam  <=  clk(1) and not clk(0);
  clkMux  <= not clk(2) and clk(1) and clk(0);
  clkAccu <= clk(2) and not clk(1) and not clk(0);

  Mux0: Mux port map(clkMux, inst, accuData, addrData, sum, sub, sand, sor, sxor, muxData)

  wren <= (not inst(3) and not inst(2) and inst(1) and inst(0)) or ((not inst(3) and inst(2) and not inst(1) and inst(0)) and accuData(3))

  Conv0: Conv port map(addr, hex0);
  Conv1: Conv port map(inst, hex1);
  Conv2: Conv port map(accuData, hex2);
  Conv3: Conv port map(addrData, hex3);
end architecture rtl;