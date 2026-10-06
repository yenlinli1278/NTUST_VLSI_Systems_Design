************************************************************************
* auCdl Netlist:
* 
* Library Name:  vlsi
* Top Cell Name: register_8bit
* View Name:     schematic
* Netlisted on:  May 28 03:47:46 2026
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

.GLOBAL vss!
+        vdd!

*.PIN vss!
*+    vdd!

************************************************************************
* Library Name: vlsi
* Cell Name:    DFlipFlop
* View Name:    schematic
************************************************************************

.SUBCKT DFlipFlop CLK CLK_b D Q
*.PININFO CLK:I CLK_b:I D:I Q:O
MM10 net40 CLK net39 vss! nmos l=180n w=2u m=1
MM1 D CLK_b net23 vss! nmos l=180n w=2u m=1
MM2 net40 net23 vss! vss! nmos l=180n w=2u m=1
MM14 net24 CLK_b net39 vss! nmos l=180n w=2u m=1
MM13 net24 Q vss! vss! nmos l=180n w=2u m=1
MM12 Q net39 vss! vss! nmos l=180n w=2u m=1
MM6 net48 net40 vss! vss! nmos l=180n w=2u m=1
MM8 net48 CLK net23 vss! nmos l=180n w=2u m=1
MM11 net40 CLK_b net39 vdd! pmos l=180.0n w=4u m=1
MM0 D CLK net23 vdd! pmos l=180.0n w=4u m=1
MM3 net40 net23 vdd! vdd! pmos l=180.0n w=4u m=1
MM15 Q net39 vdd! vdd! pmos l=180.0n w=4u m=1
MM7 net48 net40 vdd! vdd! pmos l=180.0n w=4u m=1
MM16 net24 Q vdd! vdd! pmos l=180.0n w=4u m=1
MM9 net48 CLK_b net23 vdd! pmos l=180.0n w=4u m=1
MM17 net24 CLK net39 vdd! pmos l=180.0n w=4u m=1
.ENDS

************************************************************************
* Library Name: vlsi
* Cell Name:    register_8bit
* View Name:    schematic
************************************************************************

.SUBCKT register_8bit CLK CLK_b D<7> D<6> D<5> D<4> D<3> D<2> D<1> D<0> Q<7> Q<6> 
+ Q<5> Q<4> Q<3> Q<2> Q<1> Q<0>
*.PININFO CLK:I CLK_b:I D<7>:I D<6>:I D<5>:I D<4>:I D<3>:I D<2>:I D<1>:I 
*.PININFO D<0>:I Q<7>:O Q<6>:O Q<5>:O Q<4>:O Q<3>:O Q<2>:O Q<1>:O Q<0>:O
XI7 CLK CLK_b D<0> Q<0> / DFlipFlop
XI6 CLK CLK_b D<1> Q<1> / DFlipFlop
XI5 CLK CLK_b D<2> Q<2> / DFlipFlop
XI4 CLK CLK_b D<3> Q<3> / DFlipFlop
XI3 CLK CLK_b D<4> Q<4> / DFlipFlop
XI2 CLK CLK_b D<5> Q<5> / DFlipFlop
XI1 CLK CLK_b D<6> Q<6> / DFlipFlop
XI0 CLK CLK_b D<7> Q<7> / DFlipFlop
.ENDS

*********add the following lines **********
.lib "PTM180.l" cmos

xregister_8bit CLK CLK_b D<7> D<6> D<5> D<4> D<3> D<2> D<1> D<0> Q<7> Q<6> Q<5> Q<4> Q<3> Q<2> Q<1> Q<0> register_8bit

vdd vdd! 0 1.8
vss vss! 0 0

VCLK  CLK   0 PULSE(0 1.8 1n 0.1n 0.1n 0.8n 2n)
VCLKB CLK_b 0 PULSE(1.8 0 1n 0.1n 0.1n 0.8n 2n)

VD0  D<0>  0  PULSE(0 1.8   2n 0.1n 0.1n   3.8n    8n)
VD1  D<1>  0  PULSE(0 1.8   4n 0.1n 0.1n   7.8n   16n)
VD2  D<2>  0  PULSE(0 1.8   8n 0.1n 0.1n  15.8n   32n)
VD3  D<3>  0  PULSE(0 1.8  16n 0.1n 0.1n  31.8n   64n)
VD4  D<4>  0  PULSE(0 1.8  32n 0.1n 0.1n  63.8n  128n)
VD5  D<5>  0  PULSE(0 1.8  64n 0.1n 0.1n 127.8n  256n)
VD6  D<6>  0  PULSE(0 1.8 128n 0.1n 0.1n 255.8n  512n)
VD7  D<7>  0  PULSE(0 1.8 256n 0.1n 0.1n 511.8n 1024n)

.trans 1ps 512ns

.option post=2
.end

