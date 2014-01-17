
H
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113
›
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xa7a100t2default:defaultZ17-347
‹
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xa7a100t2default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
L

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103
t
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611
m

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101
Š
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
710.8982default:default2
0.0002default:defaultZ17-268
v

Phase %s%s
101*constraints2
1.1 2default:default20
Mandatory Logic Optimization2default:defaultZ18-101
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
Š
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
710.8982default:default2
0.0002default:defaultZ17-268
H
<Phase 1.1 Mandatory Logic Optimization | Checksum: af92d9a9
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.115 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default


Phase %s%s
101*constraints2
1.2 2default:default2;
'Build Super Logic Region (SLR) Database2default:defaultZ18-101
S
GPhase 1.2 Build Super Logic Region (SLR) Database | Checksum: af92d9a9
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.130 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.3 2default:default2#
Add Constraints2default:defaultZ18-101
;
/Phase 1.3 Add Constraints | Checksum: af92d9a9
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.131 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default
f

Phase %s%s
101*constraints2
1.4 2default:default2 
Build Macros2default:defaultZ18-101
8
,Phase 1.4 Build Macros | Checksum: 6591060f
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.239 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default
v

Phase %s%s
101*constraints2
1.5 2default:default20
Routing Based Site Exclusion2default:defaultZ18-101
H
<Phase 1.5 Routing Based Site Exclusion | Checksum: 6591060f
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.251 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default
z

Phase %s%s
101*constraints2
1.6 2default:default24
 Implementation Feasibility check2default:defaultZ18-101
L
@Phase 1.6 Implementation Feasibility check | Checksum: 6591060f
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.443 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.7 2default:default2#
Pre-Place Cells2default:defaultZ18-101
;
/Phase 1.7 Pre-Place Cells | Checksum: 6591060f
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.448 . Memory (MB): peak = 710.898 ; gain = 0.0002default:default
Œ

Phase %s%s
101*constraints2
1.8 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101
^
RPhase 1.8 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 6591060f
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 720.422 ; gain = 9.5232default:default
t

Phase %s%s
101*constraints2
1.9 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101
m

Phase %s%s
101*constraints2
1.9.1 2default:default2%
Place Init Design2default:defaultZ18-101
?
3Phase 1.9.1 Place Init Design | Checksum: 945490dd
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 720.422 ; gain = 9.5232default:default
F
:Phase 1.9 Build Placer Netlist Model | Checksum: 945490dd
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 720.422 ; gain = 9.5232default:default
r

Phase %s%s
101*constraints2
1.10 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101
}

Phase %s%s
101*constraints2
1.10.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101
O
CPhase 1.10.1 Constrain Global/Regional Clocks | Checksum: 945490dd
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 720.422 ; gain = 9.5232default:default
D
8Phase 1.10 Constrain Clocks/Macros | Checksum: 945490dd
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 720.422 ; gain = 9.5232default:default
?
3Phase 1 Placer Initialization | Checksum: 945490dd
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 720.422 ; gain = 9.5232default:default
h

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101
:
.Phase 2 Global Placement | Checksum: 9ba8c3df
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 728.055 ; gain = 17.1562default:default
h

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101
t

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101
F
:Phase 3.1 Commit Multi Column Macros | Checksum: 9ba8c3df
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 728.055 ; gain = 17.1562default:default
v

Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101
H
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: ab5cfe7f
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 728.055 ; gain = 17.1562default:default
p

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101
C
7Phase 3.3 Area Swap Optimization | Checksum: 12be959e1
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 728.055 ; gain = 17.1562default:default
z

Phase %s%s
101*constraints2
3.4 2default:default24
 Commit Small Macros & Core Logic2default:defaultZ18-101
L
@Phase 3.4 Commit Small Macros & Core Logic | Checksum: 32700711
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
l

Phase %s%s
101*constraints2
3.5 2default:default2&
Re-assign LUT pins2default:defaultZ18-101
>
2Phase 3.5 Re-assign LUT pins | Checksum: 32700711
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
:
.Phase 3 Detail Placement | Checksum: 32700711
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
€

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101
p

Phase %s%s
101*constraints2
4.1 2default:default2*
Post Placement Cleanup2default:defaultZ18-101
C
7Phase 4.1 Post Placement Cleanup | Checksum: 173553796
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
j

Phase %s%s
101*constraints2
4.2 2default:default2$
Placer Reporting2default:defaultZ18-101
p

Phase %s%s
101*constraints2
4.2.1 2default:default2(
Congestion Reporting2default:defaultZ18-101
C
7Phase 4.2.1 Congestion Reporting | Checksum: 173553796
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
n

Phase %s%s
101*constraints2
4.2.2 2default:default2&
updateTiming final2default:defaultZ18-101
A
5Phase 4.2.2 updateTiming final | Checksum: 173553796
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
=
1Phase 4.2 Placer Reporting | Checksum: 173553796
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
q

Phase %s%s
101*constraints2
4.3 2default:default2+
Final Placement Cleanup2default:defaultZ18-101
D
8Phase 4.3 Final Placement Cleanup | Checksum: 173553796
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
S
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 173553796
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
5
)Ending Placer Task | Checksum: 10a6ca9a0
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:05 . Memory (MB): peak = 732.223 ; gain = 21.3242default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
½
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
12default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42
û
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:00:062default:default2
00:00:062default:default2
732.2232default:default2
23.6292default:defaultZ17-268
^

DEBUG : %s144*timing29
%Generate clock report | CPU: 0 secs 
2default:defaultZ38-163

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.046 . Memory (MB): peak = 732.223 ; gain = 0.000
*common
j

DEBUG : %s134*designutils2@
,Generate Control Sets report | CPU: 0 secs 
2default:defaultZ20-134
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
…
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.2462default:default2
732.7032default:default2
0.3952default:defaultZ17-268


End Record