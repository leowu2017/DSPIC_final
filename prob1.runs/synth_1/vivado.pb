
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
q
Command: %s
53*	vivadotcl2I
5synth_design -top mult_10bits -part xa7a100tcsg324-2I2default:defaultZ4-113
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
rStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 225.703 ; gain = 79.008
2default:default
¿
synthesizing module '%s'638*oasys2
mult_10bits2default:default2Q
;E:/Leo/DSP hw2/prob1/prob1.srcs/sources_1/new/mult_10bits.v2default:default2
42default:default8@Z8-638
€
8referenced signal '%s' should be on the sensitivity list567*oasys2
out_c2default:default2Q
;E:/Leo/DSP hw2/prob1/prob1.srcs/sources_1/new/mult_10bits.v2default:default2
312default:default8@Z8-567
˚
%done synthesizing module '%s' (%s#%s)256*oasys2
mult_10bits2default:default2
12default:default2
12default:default2Q
;E:/Leo/DSP hw2/prob1/prob1.srcs/sources_1/new/mult_10bits.v2default:default2
42default:default8@Z8-256
ó
%s*synth2á
sFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 258.984 ; gain = 112.289
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 258.984 ; gain = 112.289
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 258.984 ; gain = 112.289
2default:default
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
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 531.918 ; gain = 385.223
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
/
%s*synth2 
+---XORs : 
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit        Muxes := 3     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
7
%s*synth2(
Module mult_10bits 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
/
%s*synth2 
+---XORs : 
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     10 Bit        Muxes := 3     
2default:default
\
%s*synth2M
9DSP Report: Generating DSP out2, operation Mode is: A*B.
2default:default
X
%s*synth2I
5DSP Report: operator out2 is absorbed into DSP out2.
2default:default
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 531.922 ; gain = 385.227
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
)
%s*synth2

DSP:
2default:default
ß
%s*synth2ó
Ç+------------+---------+--------------+------------------+--------+--------+--------+--------+------+------+------+------+------+
2default:default
®
%s*synth2ò
É|Module Name | OP MODE | Neg Edge Clk | A Size (Signed?) | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | PREG | 
2default:default
ß
%s*synth2ó
Ç+------------+---------+--------------+------------------+--------+--------+--------+--------+------+------+------+------+------+
2default:default
®
%s*synth2ò
É|mult_10bits | A*B     | No           | 10 (N)           | 10 (N) | 48 (N) | 25 (N) | 19 (N) | 0    | 0    | 1    | 1    | 0    | 
2default:default
®
%s*synth2ò
É+------------+---------+--------------+------------------+--------+--------+--------+--------+------+------+------+------+------+

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
zFinished Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
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
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
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
<
%s*synth2-
+------+--------+------+
2default:default
<
%s*synth2-
|      |Cell    |Count |
2default:default
<
%s*synth2-
+------+--------+------+
2default:default
<
%s*synth2-
|1     |DSP48E1 |     1|
2default:default
<
%s*synth2-
|2     |LUT2    |     2|
2default:default
<
%s*synth2-
|3     |LUT3    |     4|
2default:default
<
%s*synth2-
|4     |LUT4    |     6|
2default:default
<
%s*synth2-
|5     |LUT5    |     9|
2default:default
<
%s*synth2-
|6     |LUT6    |    11|
2default:default
<
%s*synth2-
|7     |IBUF    |    20|
2default:default
<
%s*synth2-
|8     |OBUF    |    10|
2default:default
<
%s*synth2-
+------+--------+------+
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
"|1     |top      |       |    63|
2default:default
E
%s*synth26
"+------+---------+-------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 563.605 ; gain = 416.910
2default:default
]
-Analyzing %s Unisim elements for replacement
17*netlist2
212default:defaultZ29-17
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
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
132default:default2
22default:default2
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
00:00:492default:default2
00:00:522default:default2
807.5822default:default2
625.3712default:defaultZ17-268
:
#Going to infer timing constraints.
45*timingZ38-45
:
#Done inferring timing constraints.
33*timingZ38-33

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.094 . Memory (MB): peak = 807.637 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Dec 31 11:47:44 20132default:defaultZ17-206