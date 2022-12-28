ghdl -s ../src/and_gate.vhd  ../tb/and_gatetb.vhd
ghdl -a ../src/and_gate.vhd  ../tb/and_gatetb.vhd
ghdl -e and_gatetb
ghdl -r and_gatetb  --vcd=and_gatetb.vcd --stop-time=1000ns
gtkwave and_gatetb.vcd