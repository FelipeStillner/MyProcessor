library IEEE;
use IEEE.std_logic_1164.all;

entity ProjetoFinal is
  port (
    clkBoard: in std_logic;                 -- Fpga Clock (PIN N14)
    hex0: out std_logic_vector(6 downto 0); -- Address
    hex1: out std_logic_vector(6 downto 0); -- Instruction
    hex2: out std_logic_vector(6 downto 0); -- Data in Accumulator
    hex3: out std_logic_vector(6 downto 0)  -- Data in Address 
  );
end entity ProjetoFinal;

architecture rtl of ProjetoFinal is

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
  component RAM IS
	 PORT
	 (
		address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	 );
  END component;

  -- ROM - Armazena as instucoes e enderecos onde as instocues agirao
  component ROM IS
	 PORT
	 (
		address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	 );
  END component;

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
      Dout: buffer std_logic_vector(3 downto 0)
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
  
  component Conv is
	 port(
	   x: in std_logic_vector(3 downto 0);
		seg: out std_logic_vector(6 downto 0)
	 );
  end component;
 
  signal clkTmp: std_logic;
  signal clk: std_logic_vector(3 downto 0); 
  signal romAddr: std_logic_vector(3 downto 0); 

  signal romOut: std_logic_vector(7 downto 0);
  signal clkAccu: std_logic;
  signal clkMux: std_logic;
  signal clkRom: std_logic;
  signal clkRam: std_logic;
  signal muxData: std_logic_vector(3 downto 0);
  signal ssum, ssub, sand, sor, sxor: std_logic_vector(3 downto 0);

  signal wren: std_logic;

  signal addr: std_logic_vector(3 downto 0); 
  signal inst: std_logic_vector(3 downto 0); 
  signal accuData: std_logic_vector(3 downto 0); 
  signal addrData: std_logic_vector(3 downto 0); 
  
begin
  TimRef0: TimRef port map(clkBoard, clkTmp);
  DivFreq0: DivFreq port map(clk, clkTmp, '0'); -- Mudara quando for colocar na placa
  DivFreq1: DivFreq port map(romAddr, clk(3), '0');
  
  Rom0: ROM port map(romAddr, clkRom, romOut);
  Ram0: RAM port map(addr, clkRam, accuData, wren, addrData);

  inst <= romOut(7 downto 4);
  addr <= romOut(3 downto 0);

  Accu0: Accu port map(clkAccu, muxData, accuData);

  Sum0: Sum port map(accuData, addrData, ssum);
  Sub0: Sub port map(accuData, addrData, ssub);
  And0: AndG port map(accuData, addrData, sand);
  Or0 : OrG port map(accuData, addrData, sor);
  Xor0: XorG port map(accuData, addrData, sxor);

  clkRom  <= not clk(3) and not clk(2) and not clk(1) and clk(0);
  clkRam  <= not clk(3) and clk(1) and not clk(0);
  clkMux  <= not clk(3) and not clk(2) and clk(1) and clk(0);
  clkAccu <= not clk(3) and clk(2) and not clk(1) and not clk(0);

  Mux0: Mux port map(clkMux, inst, accuData, addrData, ssum, ssub, sand, sor, sxor, muxData);

  wren <= (not inst(3) and not inst(2) and inst(1) and inst(0)) or ((not inst(3) and inst(2) and not inst(1) and inst(0)) and accuData(3));

  Conv0: Conv port map(addr, hex0);
  Conv1: Conv port map(inst, hex1);
  Conv2: Conv port map(accuData, hex2);
  Conv3: Conv port map(addrData, hex3);
  --hex0 <= addr;
  --hex1 <= inst;
  --hex2 <= accuData;
  --hex3 <= addrData;
end architecture rtl;