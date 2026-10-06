************************************************************************
* auCdl Netlist:
* 
* Library Name:  vlsi
* Top Cell Name: d_flip_flop
* View Name:     schematic
* Netlisted on:  May 28 00:13:45 2026
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

*.GLOBAL vss!
+        vdd!

*.PIN vss!
*+    vdd!

************************************************************************
* Library Name: vlsi
* Cell Name:    d_flip_flop
* View Name:    schematic
************************************************************************

.SUBCKT d_flip_flop CLK CLK_b D Q
*.PININFO CLK:I CLK_b:I D:I Q:O
MM10 net40 CLK net39 vss! N l=180n w=2u m=1
MM1 D CLK_b net23 vss! N l=180n w=2u m=1
MM2 net40 net23 vss! vss! N l=180n w=2u m=1
MM14 net24 CLK_b net39 vss! N l=180n w=2u m=1
MM13 net24 Q vss! vss! N l=180n w=2u m=1
MM12 Q net39 vss! vss! N l=180n w=2u m=1
MM6 net48 net40 vss! vss! N l=180n w=2u m=1
MM8 net48 CLK net23 vss! N l=180n w=2u m=1
MM11 net40 CLK_b net39 vdd! P l=180.0n w=4u m=1
MM0 D CLK net23 vdd! P l=180.0n w=4u m=1
MM3 net40 net23 vdd! vdd! P l=180.0n w=4u m=1
MM15 Q net39 vdd! vdd! P l=180.0n w=4u m=1
MM7 net48 net40 vdd! vdd! P l=180.0n w=4u m=1
MM16 net24 Q vdd! vdd! P l=180.0n w=4u m=1
MM9 net48 CLK_b net23 vdd! P l=180.0n w=4u m=1
MM17 net24 CLK net39 vdd! P l=180.0n w=4u m=1
.ENDS
*********add the following lines **********
.lib "PTM180.l" cmos
xd_flip_flop CLK CLK_b D Q d_flip_flop
vdd vdd! 0 1.8
vss vss! 0 0
VD     D      0  PULSE(0   1.8  1n  0.1n  0.1n  3.8n  8n)
VCLK   CLK    0  PULSE(0   1.8  2n  0.1n  0.1n  1.8n  4n)
VCLKB  CLK_b  0  PULSE(1.8 0    2n  0.1n  0.1n  1.8n  4n)
.trans 1ps 32ns

.option post=2
.end

