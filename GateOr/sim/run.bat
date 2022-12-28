ghdl -s ../src/gate_or.vhd  ../tb/gate_ortb.vhd
ghdl -a ../src/gate_or.vhd  ../tb/gate_ortb.vhd
ghdl -e gate_ortb
ghdl -r gate_ortb  --vcd=gate_ortb.vcd --stop-time=1000ns
gtkwave gate_ortb.vcd