cd build
ghdl -a ../src/mux1.vhd 
ghdl -e mux1
ghdl -a ../src/tb_mux1.vhd 
ghdl -e tb_mux1
ghdl -r tb_mux1 --wave=wave.ghw
gtkwave wave.ghw 
