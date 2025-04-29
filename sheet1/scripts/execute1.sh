cd build
ghdl -a ../src/gatter1.vhd 
ghdl -e gatter1 
ghdl -a ../src/tb_gatter1.vhd 
ghdl -e tb_gatter1
ghdl -r tb_gatter1 --wave=wave.ghw
gtkwave wave.ghw