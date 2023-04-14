all:
	rm -rf csrc simv.daidir simv DVEfiles inter.vpd ucli.key
	vcs -full64 -sverilog -f Flist.test -top cva6
	./simv
	gtkwave out.vcd

clean:
	rm -rf csrc simv.daidir simv DVEfiles inter.vpd ucli.key

vcs:
	vcs -full64 -sverilog -f Flist.test -top cva6

run:
	./simv

show:
	gtkwave out.vcd