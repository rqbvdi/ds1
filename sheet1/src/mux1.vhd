entity mux1 is
port(
  A      : in bit;
  B      : in bit;
  SEL    : in bit;
  Y      : out bit);
end mux1;

architecture beh of mux1 is
  signal sel_n, and1_out, and2_out: bit;
begin
  sel_n <= not SEL after 1 ns;
  and1_out <= A AND sel_n after 1 ns; 
  and2_out <= B AND SEL after 1 ns; 
  Y <= and1_out OR and2_out after 1 ns; 
end beh;  
