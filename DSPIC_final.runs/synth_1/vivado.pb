
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Y
Failed to get a license: %s
295*common2"
Implementation2default:defaultZ17-301
–
πWARNING: No 'Implementation' license found. This message may be safely ignored if a Vivado WebPACK or device-locked license, common for board kits, will be used during implementation.

4*vivadoZ15-19
V
 Attempting to get a license: %s
78*common2
	Synthesis2default:defaultZ17-78
T
Failed to get a license: %s
295*common2
	Synthesis2default:defaultZ17-301
É
+Loading parts and site information from %s
36*device2?
+D:/Xilinx/Vivado/2013.3/data/parts/arch.xml2default:defaultZ21-36
ê
!Parsing RTL primitives file [%s]
14*netlist2U
AD:/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
ô
*Finished parsing RTL primitives file [%s]
11*netlist2U
AD:/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
i
Command: %s
53*	vivadotcl2A
-synth_design -top fft -part xa7a100tcsg324-1Q2default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
ñ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xa7a100t2default:defaultZ17-347
Ü
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xa7a100t2default:defaultZ17-349
ñ
%s*synth2Ü
rStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 226.211 ; gain = 80.453
2default:default
¥
synthesizing module '%s'638*oasys2
fft2default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/fft.v2default:default2
42default:default8@Z8-638
¿
synthesizing module '%s'638*oasys2
	butterfly2default:default2S
=E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/butterfly.v2default:default2
62default:default8@Z8-638
‘
synthesizing module '%s'638*oasys2'
flp32_complex_adder2default:default2]
GE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_adder.v2default:default2
32default:default8@Z8-638
»
synthesizing module '%s'638*oasys2!
flp32_add_sub2default:default2W
AE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_add_sub.v2default:default2
32default:default8@Z8-638
¥
synthesizing module '%s'638*oasys2
add2default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
32default:default8@Z8-638
Ô
%done synthesizing module '%s' (%s#%s)256*oasys2
add2default:default2
12default:default2
12default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
32default:default8@Z8-256
¥
synthesizing module '%s'638*oasys2
sub2default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/sub.v2default:default2
32default:default8@Z8-638
Ô
%done synthesizing module '%s' (%s#%s)256*oasys2
sub2default:default2
22default:default2
12default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/sub.v2default:default2
32default:default8@Z8-256
É
%done synthesizing module '%s' (%s#%s)256*oasys2!
flp32_add_sub2default:default2
32default:default2
12default:default2W
AE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_add_sub.v2default:default2
32default:default8@Z8-256
«
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
a_real2default:default2!
flp32_add_sub2default:default2
42default:default2
32default:default2]
GE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_adder.v2default:default2
72default:default8@Z8-350
«
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
a_imag2default:default2!
flp32_add_sub2default:default2
42default:default2
32default:default2]
GE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_adder.v2default:default2
82default:default8@Z8-350
è
%done synthesizing module '%s' (%s#%s)256*oasys2'
flp32_complex_adder2default:default2
42default:default2
12default:default2]
GE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_adder.v2default:default2
32default:default8@Z8-256
ﬁ
synthesizing module '%s'638*oasys2,
flp32_complex_subtracter2default:default2b
LE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_subtracter.v2default:default2
52default:default8@Z8-638
Ã
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
s_real2default:default2!
flp32_add_sub2default:default2
42default:default2
32default:default2b
LE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_subtracter.v2default:default2
92default:default8@Z8-350
Õ
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
s_imag2default:default2!
flp32_add_sub2default:default2
42default:default2
32default:default2b
LE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_subtracter.v2default:default2
102default:default8@Z8-350
ô
%done synthesizing module '%s' (%s#%s)256*oasys2,
flp32_complex_subtracter2default:default2
52default:default2
12default:default2b
LE:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_subtracter.v2default:default2
52default:default8@Z8-256
˚
%done synthesizing module '%s' (%s#%s)256*oasys2
	butterfly2default:default2
62default:default2
12default:default2S
=E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/butterfly.v2default:default2
62default:default8@Z8-256
Â
8referenced signal '%s' should be on the sensitivity list567*oasys2'
butterfly_8_o1_real2default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/fft.v2default:default2
212default:default8@Z8-567
Ô
%done synthesizing module '%s' (%s#%s)256*oasys2
fft2default:default2
72default:default2
12default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/fft.v2default:default2
42default:default8@Z8-256
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[31]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[30]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[29]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[28]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[27]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[26]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[25]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[24]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[23]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[22]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[21]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[20]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[19]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[18]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[17]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[16]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[15]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[14]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[13]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[12]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[11]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[10]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[9]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[8]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[7]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[6]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[5]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[4]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[3]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[2]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[1]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[0]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[31]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[30]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[29]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[28]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[27]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[26]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[25]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[24]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[23]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[22]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[21]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[20]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[19]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[18]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[17]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[16]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[15]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[14]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[13]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[12]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[11]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[10]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[9]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[8]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[7]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[6]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[5]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[4]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[3]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[2]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[1]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_imag[0]2default:defaultZ8-3331
o
!design %s has unconnected port %s3331*oasys2
fft2default:default2
finish2default:defaultZ8-3331
l
!design %s has unconnected port %s3331*oasys2
fft2default:default2
clk2default:defaultZ8-3331
l
!design %s has unconnected port %s3331*oasys2
fft2default:default2
rst2default:defaultZ8-3331
ó
%s*synth2á
sFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 258.305 ; gain = 112.547
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 258.305 ; gain = 112.547
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 258.305 ; gain = 112.547
2default:default
û
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
192default:default8@Z8-3537
≈
!inferring latch for variable '%s'327*oasys2

R_temp_reg2default:default2M
7E:/Leo/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
232default:default8@Z8-327
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
ú
Loading clock regions from %s
13*device2e
QD:/Xilinx/Vivado/2013.3/data\parts/xilinx/artix7/aartix7/xa7a100t/ClockRegion.xml2default:defaultZ21-13
ù
Loading clock buffers from %s
11*device2f
RD:/Xilinx/Vivado/2013.3/data\parts/xilinx/artix7/aartix7/xa7a100t/ClockBuffers.xml2default:defaultZ21-11
ô
&Loading clock placement rules from %s
318*place2Y
ED:/Xilinx/Vivado/2013.3/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318
ó
)Loading package pin functions from %s...
17*device2U
AD:/Xilinx/Vivado/2013.3/data\parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17
ô
Loading package from %s
16*device2h
TD:/Xilinx/Vivado/2013.3/data\parts/xilinx/artix7/aartix7/xa7a100t/csg324/Package.xml2default:defaultZ21-16
å
Loading io standards from %s
15*device2V
BD:/Xilinx/Vivado/2013.3/data\./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15
ò
+Loading device configuration modes from %s
14*device2T
@D:/Xilinx/Vivado/2013.3/data\parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14
ã
%s*synth2|
hPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB8 0 RAMB16 0 RAMB18 80 RAMB36 40)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:30 ; elapsed = 00:00:32 . Memory (MB): peak = 534.090 ; gain = 388.332
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     25 Bit       Adders := 4     
2default:default
Q
%s*synth2B
.	   3 Input     24 Bit       Adders := 12    
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 8     
2default:default
Q
%s*synth2B
.	   3 Input      8 Bit       Adders := 24    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 40    
2default:default
Q
%s*synth2B
.	   3 Input     24 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit        Muxes := 16    
2default:default
Q
%s*synth2B
.	   2 Input     23 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	  23 Input     23 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 28    
2default:default
Q
%s*synth2B
.	  23 Input      5 Bit        Muxes := 4     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
/
%s*synth2 
Module fft 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
D
%s*synth25
!Module flp32_complex_subtracter 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
5
%s*synth2&
Module butterfly 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
9
%s*synth2*
Module flp32_add_sub 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 10    
2default:default
?
%s*synth20
Module flp32_complex_adder 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
/
%s*synth2 
Module sub 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   3 Input     24 Bit       Adders := 3     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   3 Input      8 Bit       Adders := 4     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   3 Input     24 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     23 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	  23 Input     23 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 6     
2default:default
Q
%s*synth2B
.	  23 Input      5 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
/
%s*synth2 
Module add 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     25 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   3 Input      8 Bit       Adders := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:default
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[22] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[21] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[20] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[19] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[18] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[17] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[16] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[15] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[14] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[13] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[12] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[11] 2default:default2
add2default:defaultZ8-3332
ù
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\R_temp_reg[10] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[9] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[8] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[7] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[6] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[5] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[4] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[3] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[2] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[1] 2default:default2
add2default:defaultZ8-3332
ú
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\R_temp_reg[0] 2default:default2
add2default:defaultZ8-3332
S
!design %s has an empty top module3330*oasys2
fft2default:defaultZ8-3330
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[31]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[30]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[29]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[28]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[27]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[26]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[25]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[24]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[23]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[22]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[21]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[20]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[19]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[18]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[17]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[16]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[15]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[14]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[13]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[12]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[11]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_real[10]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[9]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[8]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[7]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[6]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[5]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[4]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[3]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[2]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[1]2default:defaultZ8-3331
t
!design %s has unconnected port %s3331*oasys2
fft2default:default2
out_real[0]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2
fft2default:default2 
out_imag[31]2default:defaultZ8-3331
‘
ÅMessage '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33312default:default2
1002default:defaultZ17-14
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:34 . Memory (MB): peak = 534.090 ; gain = 388.332
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:34 . Memory (MB): peak = 535.102 ; gain = 389.344
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:34 . Memory (MB): peak = 535.102 ; gain = 389.344
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:31 ; elapsed = 00:00:34 . Memory (MB): peak = 544.750 ; gain = 398.992
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 544.750 ; gain = 398.992
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 544.750 ; gain = 398.992
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 544.750 ; gain = 398.992
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
4
%s*synth2%
+-+-----+------+
2default:default
4
%s*synth2%
| |Cell |Count |
2default:default
4
%s*synth2%
+-+-----+------+
2default:default
4
%s*synth2%
+-+-----+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
E
%s*synth26
"+------+---------+-------+------+
2default:default
E
%s*synth26
"|      |Instance |Module |Cells |
2default:default
E
%s*synth26
"+------+---------+-------+------+
2default:default
E
%s*synth26
"|1     |top      |       |     0|
2default:default
E
%s*synth26
"+------+---------+-------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 544.750 ; gain = 398.992
2default:default
k
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 228 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 544.750 ; gain = 398.992
2default:default
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
_
 Attempting to get a license: %s
78*common2&
Internal_bitstream2default:defaultZ17-78
]
Failed to get a license: %s
295*common2&
Internal_bitstream2default:defaultZ17-301
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
ø
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242default:default2
1312default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:502default:default2
00:00:542default:default2
796.2932default:default2
614.5862default:defaultZ17-268
:
#Going to infer timing constraints.
45*timingZ38-45
:
#Done inferring timing constraints.
33*timingZ38-33

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.129 . Memory (MB): peak = 796.293 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jan 19 12:31:04 20142default:defaultZ17-206