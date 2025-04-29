--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

-- leere entity
entity tb_mux1 is
end entity tb_mux1;

architecture bhv of tb_mux1 is
  -- input
  signal a_tb, b_tb, sel_tb: bit;
  -- output
  signal y_tb : bit;
  
begin

  -- Modulinstatziierung
  dut : entity work.mux1(beh)
    port map (
      A  => a_tb,
      B  => b_tb,
      SEL => sel_tb,
      Y  => y_tb
      );
    a_tb <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns, '0' after 130 ns;
    b_tb <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 130 ns;
    sel_tb <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 100 ns, '0' after 120 ns, '1' after 140 ns, '0' after 150 ns;
end architecture;
