
s
Command: %s
53*	vivadotcl2B
.synth_design -top tb_alu -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 348.695 ; gain = 101.297
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
tb_alu2default:default2
 2default:default2K
5C:/Users/leste/Downloads/Tarea_06-03-2019/testbench.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2E
/C:/Users/leste/Downloads/Tarea_06-03-2019/ALU.v2default:default2
12default:default8@Z8-6157h px� 
�
default block is never used226*oasys2E
/C:/Users/leste/Downloads/Tarea_06-03-2019/ALU.v2default:default2
142default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
12default:default2
12default:default2E
/C:/Users/leste/Downloads/Tarea_06-03-2019/ALU.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tb_alu2default:default2
 2default:default2
22default:default2
12default:default2K
5C:/Users/leste/Downloads/Tarea_06-03-2019/testbench.v2default:default2
32default:default8@Z8-6155h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 404.895 ; gain = 157.496
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 404.895 ; gain = 157.496
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 404.895 ; gain = 157.496
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
clk2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
32default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
32default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
clk2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
42default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
42default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
clk2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
52default:default8@Z12-584h px�
�
&%s:No valid object(s) found for '%s'.
2779*	planAhead2 
create_clock2default:default2,
-objects [get_ports clk]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
52default:default8@Z12-4739h px�
�
No ports matched '%s'.
584*	planAhead2
data[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
92default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
92default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
102default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
102default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
112default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
112default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
122default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
122default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
132default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
132default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
142default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
142default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
152default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
152default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
162default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
162default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[4]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
172default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
172default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[4]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
182default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
182default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[5]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
192default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
192default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[5]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
202default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
202default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[6]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
212default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
212default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[6]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
222default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
222default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[7]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
232default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
232default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[7]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
242default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
242default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[8]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
252default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
252default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[8]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
262default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
262default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[9]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
272default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
272default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[9]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
282default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
282default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[10]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
292default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
292default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[10]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
302default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
302default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[11]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
312default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
312default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[11]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
322default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
322default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[12]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
332default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
332default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[12]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
342default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
342default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[13]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
352default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
352default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[13]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
362default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
362default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[14]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
372default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
372default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[14]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
382default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
382default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[15]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
392default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
392default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
data[15]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
402default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
402default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
432default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
432default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
442default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
442default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
452default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
452default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
462default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
462default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
472default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
472default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
482default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
482default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
492default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
492default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
502default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
502default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[4]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
512default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
512default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[4]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
522default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
522default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[5]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
532default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
532default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[5]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
542default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
542default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[6]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
552default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
552default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[6]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
562default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
562default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[7]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
572default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
572default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[7]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
582default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
582default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[8]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
592default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
592default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[8]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
602default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
602default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[9]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
612default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
612default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
leds_out[9]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
622default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
622default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[10]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
632default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
632default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[10]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
642default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
642default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[11]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
652default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
652default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[11]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
662default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
662default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[12]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
672default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
672default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[12]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
682default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
682default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[13]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
692default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
692default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[13]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
702default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
702default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[14]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
712default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
712default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[14]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
722default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
722default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[15]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
732default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
732default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
leds_out[15]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
742default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
742default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[6]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
802default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
802default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[6]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
812default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
812default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[5]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
822default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
822default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[5]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
832default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
832default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[4]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
842default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
842default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[4]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
852default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
852default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
862default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
862default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
872default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
872default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
882default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
882default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
892default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
892default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
902default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
902default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
912default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
912default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
922default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
922default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
932default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
932default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
942default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
942default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
952default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
952default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
962default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
962default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
972default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
972default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
982default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
982default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
992default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
992default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1002default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1002default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
anode[3]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1012default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1012default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
reset2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1042default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1042default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
reset2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1052default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1052default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
load[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1062default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1062default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
load[2]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1072default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1072default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
load[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1082default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1082default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
load[0]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1092default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1092default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
load[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1102default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1102default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
load[1]2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1112default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default2
1112default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2i
SC:/Users/leste/Downloads/basys3_labs-master/project_alu_basys3/const_top_basys3.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
681.1912default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
681.1912default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.1862default:default2
681.7342default:default2
0.5432default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:47 ; elapsed = 00:00:53 . Memory (MB): peak = 681.734 ; gain = 434.336
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:47 ; elapsed = 00:00:53 . Memory (MB): peak = 681.734 ; gain = 434.336
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:47 ; elapsed = 00:00:53 . Memory (MB): peak = 681.734 ; gain = 434.336
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:47 ; elapsed = 00:00:53 . Memory (MB): peak = 681.734 ; gain = 434.336
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
8
%s
*synth2 
Module alu 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:49 ; elapsed = 00:00:56 . Memory (MB): peak = 681.734 ; gain = 434.336
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:22 ; elapsed = 00:01:29 . Memory (MB): peak = 716.254 ; gain = 468.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:01:22 ; elapsed = 00:01:29 . Memory (MB): peak = 716.254 ; gain = 468.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:01:22 ; elapsed = 00:01:29 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|1     |top      |       |     0|
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:27 ; elapsed = 00:01:34 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:50 ; elapsed = 00:01:09 . Memory (MB): peak = 725.777 ; gain = 201.539
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:01:27 ; elapsed = 00:01:35 . Memory (MB): peak = 725.777 ; gain = 478.379
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
737.7732default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
142default:default2
982default:default2
972default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:332default:default2
00:01:412default:default2
737.7732default:default2
490.4692default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
737.7732default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2f
RC:/Users/leste/Downloads/Tarea_06-03-2019/Tarea_06-03-2019.runs/synth_1/tb_alu.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2v
bExecuting : report_utilization -file tb_alu_utilization_synth.rpt -pb tb_alu_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Mar  6 06:51:08 20192default:defaultZ17-206h px� 


End Record