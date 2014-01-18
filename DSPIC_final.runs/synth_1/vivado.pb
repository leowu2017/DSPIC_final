
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
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
~
Command: %s
53*	vivadotcl2V
Bsynth_design -top flp32_complex_subtracter -part xa7a100tcsg324-1Q2default:defaultZ4-113
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
rStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 226.199 ; gain = 81.730
2default:default
€
synthesizing module '%s'638*oasys2,
flp32_complex_subtracter2default:default2^
HE:/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_subtracter.v2default:default2
232default:default8@Z8-638
ƒ
synthesizing module '%s'638*oasys2!
flp32_add_sub2default:default2S
=E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_add_sub.v2default:default2
32default:default8@Z8-638
∞
synthesizing module '%s'638*oasys2
add2default:default2I
3E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
32default:default8@Z8-638
Î
%done synthesizing module '%s' (%s#%s)256*oasys2
add2default:default2
12default:default2
12default:default2I
3E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
32default:default8@Z8-256
∞
synthesizing module '%s'638*oasys2
sub2default:default2I
3E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/sub.v2default:default2
32default:default8@Z8-638
Î
%done synthesizing module '%s' (%s#%s)256*oasys2
sub2default:default2
22default:default2
12default:default2I
3E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/sub.v2default:default2
32default:default8@Z8-256
ˇ
%done synthesizing module '%s' (%s#%s)256*oasys2!
flp32_add_sub2default:default2
32default:default2
12default:default2S
=E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_add_sub.v2default:default2
32default:default8@Z8-256
ñ
%done synthesizing module '%s' (%s#%s)256*oasys2,
flp32_complex_subtracter2default:default2
42default:default2
12default:default2^
HE:/DSPIC_final/DSPIC_final.srcs/sources_1/new/flp32_complex_subtracter.v2default:default2
232default:default8@Z8-256
ó
%s*synth2á
sFinished Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 258.402 ; gain = 113.934
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 258.402 ; gain = 113.934
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 258.402 ; gain = 113.934
2default:default
ö
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2I
3E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
192default:default8@Z8-3537
¡
!inferring latch for variable '%s'327*oasys2

R_temp_reg2default:default2I
3E:/DSPIC_final/DSPIC_final.srcs/sources_1/new/add.v2default:default2
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
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 533.324 ; gain = 388.855
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
.	   2 Input     25 Bit       Adders := 2     
2default:default
Q
%s*synth2B
.	   3 Input     24 Bit       Adders := 6     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 4     
2default:default
Q
%s*synth2B
.	   3 Input      8 Bit       Adders := 12    
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     32 Bit        Muxes := 20    
2default:default
Q
%s*synth2B
.	   3 Input     24 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit        Muxes := 8     
2default:default
Q
%s*synth2B
.	   2 Input     23 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	  23 Input     23 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 14    
2default:default
Q
%s*synth2B
.	  23 Input      5 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
D
%s*synth25
!Module flp32_complex_subtracter 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
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
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 534.316 ; gain = 389.848
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
°
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%flp32_add_sub:/\add_1/R_temp_reg[22] 2default:defaultZ8-3333
≠
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\add_1/R_temp_reg[22] 2default:default2!
flp32_add_sub2default:defaultZ8-3332
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 595.340 ; gain = 450.871
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 595.340 ; gain = 450.871
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 596.973 ; gain = 452.504
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 596.973 ; gain = 452.504
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
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 596.973 ; gain = 452.504
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 596.973 ; gain = 452.504
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
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|      |Cell   |Count |
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|1     |CARRY4 |    98|
2default:default
;
%s*synth2,
|2     |LUT2   |    76|
2default:default
;
%s*synth2,
|3     |LUT3   |   286|
2default:default
;
%s*synth2,
|4     |LUT4   |   406|
2default:default
;
%s*synth2,
|5     |LUT5   |   288|
2default:default
;
%s*synth2,
|6     |LUT6   |   570|
2default:default
;
%s*synth2,
|7     |MUXF7  |    38|
2default:default
;
%s*synth2,
|8     |LD     |    44|
2default:default
;
%s*synth2,
|9     |IBUF   |   128|
2default:default
;
%s*synth2,
|10    |OBUF   |    64|
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
R
%s*synth2C
/+------+-------------+----------------+------+
2default:default
R
%s*synth2C
/|      |Instance     |Module          |Cells |
2default:default
R
%s*synth2C
/+------+-------------+----------------+------+
2default:default
R
%s*synth2C
/|1     |top          |                |  1998|
2default:default
R
%s*synth2C
/|2     |  flp32_sub0 |flp32_add_sub   |   247|
2default:default
R
%s*synth2C
/|3     |    add_1    |add_1           |   247|
2default:default
R
%s*synth2C
/|4     |  flp32_sub1 |flp32_add_sub_0 |   247|
2default:default
R
%s*synth2C
/|5     |    add_1    |add             |   247|
2default:default
R
%s*synth2C
/+------+-------------+----------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 596.973 ; gain = 452.504
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 596.973 ; gain = 452.504
2default:default
^
-Analyzing %s Unisim elements for replacement
17*netlist2
1722default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
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
ó
!Unisim Transformation Summary:
%s111*project2[
G  A total of 44 instances were transformed.
  LD => LDCE: 44 instances
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
212default:default2
32default:default2
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
00:00:352default:default2
00:00:352default:default2
823.6212default:default2
641.8322default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.044 . Memory (MB): peak = 823.621 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Jan 18 15:26:00 20142default:defaultZ17-206