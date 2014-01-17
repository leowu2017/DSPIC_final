
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
õ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xa7a100t2default:defaultZ17-347
ã
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xa7a100t2default:defaultZ17-349
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
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
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
x

Phase %s%s
101*constraints2
1.1 2default:default22
Build Netlist & NodeGraph (MT)2default:defaultZ18-101
K
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 10a6ca9a0
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 899.496 ; gain = 163.0862default:default
9
-Phase 1 Build RT Design | Checksum: eef58c8a
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 899.496 ; gain = 163.0862default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
r
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64
i

Phase %s%s
101*constraints2
2.1 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.1 Restore Routing | Checksum: eef58c8a
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 902.770 ; gain = 166.3592default:default
m

Phase %s%s
101*constraints2
2.2 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.2 Special Net Routing | Checksum: 3a6f85be
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 902.770 ; gain = 166.3592default:default
q

Phase %s%s
101*constraints2
2.3 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.3 Local Clock Net Routing | Checksum: 3a6f85be
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 902.770 ; gain = 166.3592default:default
?
3Phase 2 Router Initialization | Checksum: 3a6f85be
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 902.770 ; gain = 166.3592default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
9
-Phase 3 Initial Routing | Checksum: b6c3f146
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:03 ; elapsed = 00:00:30 . Memory (MB): peak = 902.770 ; gain = 166.3592default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
>
2Phase 4.1.1 Remove Overlaps | Checksum: 1047e0fc4
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 903.391 ; gain = 166.9802default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 1047e0fc4
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 903.391 ; gain = 166.9802default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 1047e0fc4
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 903.391 ; gain = 166.9802default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Post Hold Fix2default:defaultZ18-101
8
,Phase 5 Post Hold Fix | Checksum: 1047e0fc4
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 903.391 ; gain = 166.9802default:default
m

Phase %s%s
101*constraints2
6 2default:default2)
Verifying routed nets2default:defaultZ18-101
@
4Phase 6 Verifying routed nets | Checksum: 1047e0fc4
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 905.332 ; gain = 168.9222default:default
i

Phase %s%s
101*constraints2
7 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 7 Depositing Routes | Checksum: eda25228
*common
á

%s
*constraints2p
\Time (s): cpu = 00:01:04 ; elapsed = 00:00:31 . Memory (MB): peak = 905.332 ; gain = 168.9222default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: eda25228
*common
á

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:00:31 . Memory (MB): peak = 905.332 ; gain = 168.9222default:default
á

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:00:31 . Memory (MB): peak = 905.332 ; gain = 168.9222default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
12default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:042default:default2
00:00:312default:default2
905.3322default:default2
172.6292default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
ı
#The results of DRC are in file %s.
168*coretcl2¥
NE:/DSPIC_final/DSPIC_final.runs/impl_1/flp32_complex_subtracter_drc_routed.rptNE:/DSPIC_final/DSPIC_final.runs/impl_1/flp32_complex_subtracter_drc_routed.rpt2default:default8Z2-168
Í
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.002default:default2;
'flp32_sub0/add_1/n_0_R_temp_reg[21]_i_12default:defaultZ33-164
Ì
{ Setting default frequency of %s MHz on the clock %s . Please specify frequency of this clock for accurate power estimate.
164*power2
0.002default:default2>
*flp32_sub1/add_1/n_0_R_temp_reg[21]_i_1__02default:defaultZ33-164
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
Å
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -1Q, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
Ö
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.3512default:default2
905.3322default:default2
0.0002default:defaultZ17-268


End Record