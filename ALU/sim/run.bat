ghdl -s ../src/alu.vhd  ../tb/alutb.vhd
ghdl -a ../src/alu.vhd  ../tb/alutb.vhd
ghdl -e alutb
ghdl -r alutb  --vcd=alutb.vcd --stop-time=1000ns
gtkwave alutb.vcd