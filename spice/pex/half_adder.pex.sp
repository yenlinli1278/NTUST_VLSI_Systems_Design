* File: half_adder.pex.sp
* Created: Thu May 28 23:03:07 2026
* Program "Calibre xRC"
* Version "v2021.1_33.19"
* 
.include "half_adder.pex.sp.pex"
.subckt half_adder  Y X VSS! COUT VDD! SUM
* 
* SUM	SUM
* VDD!	VDD!
* COUT	COUT
* VSS!	VSS!
* X	X
* Y	Y
MM11 N_COUT_MM11_d N_X_NAND_Y_MM11_g N_VSS!_MM11_s N_VSS!_MM11_b nch L=1.8e-07
+ W=2e-06 AD=9.6e-13 AS=9.6e-13 PD=4.96e-06 PS=4.96e-06 NRD=0.24 NRS=0.24
MM6 N_NET15_MM6_d N_Y_MM6_g N_VSS!_MM6_s N_VSS!_MM11_b nch L=1.8e-07 W=2e-06
+ AD=5.4e-13 AS=9.6e-13 PD=2.54e-06 PS=4.96e-06 NRD=0.135 NRS=0.24
MM5 N_X_NAND_Y_MM5_d N_X_MM5_g N_NET15_MM5_s N_VSS!_MM11_b nch L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM9 N_NET7_MM9_d N_Y_MM9_g N_VSS!_MM9_s N_VSS!_MM11_b nch L=1.8e-07 W=2e-06
+ AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM8 N_NET7_MM8_d N_X_MM8_g N_VSS!_MM8_s N_VSS!_MM11_b nch L=1.8e-07 W=2e-06
+ AD=5.4e-13 AS=5.4e-13 PD=2.54e-06 PS=2.54e-06 NRD=0.135 NRS=0.135
MM7 N_NET075_MM7_d N_X_NAND_Y_MM7_g N_NET7_MM7_s N_VSS!_MM11_b nch L=1.8e-07
+ W=2e-06 AD=9.6e-13 AS=5.4e-13 PD=4.96e-06 PS=2.54e-06 NRD=0.24 NRS=0.135
MM14 N_SUM_MM14_d N_NET075_MM14_g N_VSS!_MM14_s N_VSS!_MM11_b nch L=1.8e-07
+ W=2e-06 AD=9.6e-13 AS=9.6e-13 PD=4.96e-06 PS=4.96e-06 NRD=0.24 NRS=0.24
MM12 N_COUT_MM12_d N_X_NAND_Y_MM12_g N_VDD!_MM12_s N_VDD!_MM12_b pch L=1.8e-07
+ W=4e-06 AD=1.92e-12 AS=1.92e-12 PD=8.96e-06 PS=8.96e-06 NRD=0.12 NRS=0.12
MM1 N_X_NAND_Y_MM1_d N_Y_MM1_g N_VDD!_MM1_s N_VDD!_MM12_b pch L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM0 N_X_NAND_Y_MM0_d N_X_MM0_g N_VDD!_MM0_s N_VDD!_MM12_b pch L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM3 N_NET075_MM3_d N_Y_MM3_g N_NET30_MM3_s N_VDD!_MM12_b pch L=1.8e-07 W=4e-06
+ AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM4 N_NET30_MM4_d N_X_MM4_g N_VDD!_MM4_s N_VDD!_MM12_b pch L=1.8e-07 W=4e-06
+ AD=1.08e-12 AS=1.08e-12 PD=4.54e-06 PS=4.54e-06 NRD=0.0675 NRS=0.0675
MM2 N_NET075_MM2_d N_X_NAND_Y_MM2_g N_VDD!_MM2_s N_VDD!_MM12_b pch L=1.8e-07
+ W=4e-06 AD=1.92e-12 AS=1.08e-12 PD=8.96e-06 PS=4.54e-06 NRD=0.12 NRS=0.0675
MM13 N_SUM_MM13_d N_NET075_MM13_g N_VDD!_MM13_s N_VDD!_MM12_b pch L=1.8e-07
+ W=4e-06 AD=1.92e-12 AS=1.92e-12 PD=8.96e-06 PS=8.96e-06 NRD=0.12 NRS=0.12
*
.include "half_adder.pex.sp.half_adder.pxi"
*
.ends
*
*
*********add the following lines **********
.lib "PTM180.l" cmos
.MALIAS nmos=nch
.MALIAS pmos=pch

xhalf_adder  Y X VSS! COUT VDD! SUM half_adder

vdd vdd! 0 1.8
vss vss! 0 0

VX  x  0  PULSE(0 1.8 2n 0.1n 0.1n 1.8n 4n)
VY  y  0  PULSE(0 1.8 1n 0.1n 0.1n 1.8n 4n)

.trans 1ps 8ns

.option post=2
.end