ghdl -s ../src/multiplexor4.vhd  ../tb/multiplexor_tb.vhd
ghdl -a ../src/multiplexor4.vhd  ../tb/multiplexor_tb.vhd
ghdl -e multiplexor_tb
ghdl -r multiplexor_tb  --vcd=multiplexor_tb.vcd --stop-time=1000ns
gtkwave multiplexor_tb.vcd