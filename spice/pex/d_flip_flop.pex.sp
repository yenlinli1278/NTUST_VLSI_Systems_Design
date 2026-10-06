* File: d_flip_flop.pex.sp
* Created: Thu May 28 00:50:21 2026
* Program "Calibre xRC"
* Version "v2021.1_33.19"
* 
.include "d_flip_flop.pex.sp.pex"
.subckt d_flip_flop  CLK_B CLK Q VSS! D VDD!
* 
* VDD!	VDD!
* D	D
* VSS!	VSS!
* Q	Q
* CLK	CLK
* CLK_B	CLK_B
MM1 N_D_MM1_d N_CLK_B_MM1_g N_NET23_MM1_s N_VSS!_MM1_b nmos L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM8 N_NET48_MM8_d N_CLK_MM8_g N_NET23_MM8_s N_VSS!_MM1_b nmos L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM2 N_NET40_MM2_d N_NET23_MM2_g N_VSS!_MM2_s N_VSS!_MM1_b nmos L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM6 N_NET48_MM6_d N_NET40_MM6_g N_VSS!_MM6_s N_VSS!_MM1_b nmos L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM10 N_NET40_MM10_d N_CLK_MM10_g N_NET39_MM10_s N_VSS!_MM1_b nmos L=1.8e-07
+ W=2e-06 AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM14 N_NET24_MM14_d N_CLK_B_MM14_g N_NET39_MM14_s N_VSS!_MM1_b nmos L=1.8e-07
+ W=2e-06 AD=5.4e-13 AS=5.4e-13 PD=2.54e-06 PS=2.54e-06 NRD=0.135 NRS=0.135
MM13 N_NET24_MM13_d N_Q_MM13_g N_VSS!_MM13_s N_VSS!_MM1_b nmos L=1.8e-07 W=2e-06
+ AD=5.4e-13 AS=5.4e-13 PD=2.54e-06 PS=2.54e-06 NRD=0.135 NRS=0.135
MM12 N_Q_MM12_d N_NET39_MM12_g N_VSS!_MM12_s N_VSS!_MM1_b nmos L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM0 N_D_MM0_d N_CLK_MM0_g N_NET23_MM0_s N_VDD!_MM0_b pmos L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM9 N_NET48_MM9_d N_CLK_B_MM9_g N_NET23_MM9_s N_VDD!_MM0_b pmos L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM3 N_NET40_MM3_d N_NET23_MM3_g N_VDD!_MM3_s N_VDD!_MM0_b pmos L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM7 N_NET48_MM7_d N_NET40_MM7_g N_VDD!_MM7_s N_VDD!_MM0_b pmos L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM11 N_NET40_MM11_d N_CLK_B_MM11_g N_NET39_MM11_s N_VDD!_MM0_b pmos L=1.8e-07
+ W=4e-06 AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM17 N_NET24_MM17_d N_CLK_MM17_g N_NET39_MM17_s N_VDD!_MM0_b pmos L=1.8e-07
+ W=4e-06 AD=1.08e-12 AS=1.08e-12 PD=4.54e-06 PS=4.54e-06 NRD=0.0675 NRS=0.0675
MM16 N_NET24_MM16_d N_Q_MM16_g N_VDD!_MM16_s N_VDD!_MM0_b pmos L=1.8e-07 W=4e-06
+ AD=1.08e-12 AS=1.08e-12 PD=4.54e-06 PS=4.54e-06 NRD=0.0675 NRS=0.0675
MM15 N_Q_MM15_d N_NET39_MM15_g N_VDD!_MM15_s N_VDD!_MM0_b pmos L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
*
.include "d_flip_flop.pex.sp.d_flip_flop.pxi"
*
.ends
*
*
*********add the following lines **********
.lib "PTM180.l" cmos
xd_flip_flop  CLK_B CLK Q VSS! D VDD! d_flip_flop
vdd vdd! 0 1.8
vss vss! 0 0
VD     D      0  PULSE(0   1.8  1n  0.1n  0.1n  3.8n  8n)
VCLK   CLK    0  PULSE(0   1.8  2n  0.1n  0.1n  1.8n  4n)
VCLKB  CLK_b  0  PULSE(1.8 0    2n  0.1n  0.1n  1.8n  4n)
.trans 1ps 32ns

.option post=2
.end