entity tb_gatter1 is
end entity tb_gatter1;

architecture beh of tb_gatter1 is
    signal a_tb, b_tb: bit; -- Inputs
    signal y_tb: bit; -- outputs

begin
    dut: entity work.gatter1(beh)
        port map(
            A => a_tb,
            B => b_tb,
            Y => y_tb
        );
    a_tb <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns,  '0' after 40 ns;
    b_tb <= '0',                  '1' after 20 ns,                   '0' after 40 ns;
end architecture;