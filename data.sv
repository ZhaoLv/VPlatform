/*
//����мĴ�������������������һ��ȫ�ֵļĴ���������

class Variable
virtual function new();//���ó�ʼ�ĸ���������ֵ

endfunction

virtual update();//���³�ʼ�ĸ���������ֵ

endfunction

endclass

Variable v;
v = new();
*/
//���������transition������ڼĴ����ı�����������v�ı���



class transition;//Ӧ����ÿһ�����ܵ㶼����һ��transition�ࡣ
string name;
virtual function new();

virtual function send();//Ӧ�������߽ӿ�������

endfunction

endfunction
virtual function action();

endfunction

endclass

class stage;
string name;
transition out_array[$];
transition in_array[$];

virtual function new();

endfunction

endclass








class function_point;
string name;
stage current_stage;
stage array_stage[$];

virtual function new();

endfunction
virtual function transition gen_vector();

endfunction

endclass


/*******************************************************************transition****************************************************************/

class b01_transition extends transition;
rand bit line1;
rand bit line2;
bit outp;
bit overflw;
//�Ĵ����ǹ���ģ�Ӧ��������Variable�ࡣ

virtual function new();

endfunction

task send();
//����line1��line2���˿ڡ����Ӧ�����ڸ������ܸ��Ե�transition����д�ġ�
......
endfunction

endclass



class b01_transition_1 extends b01_transition;


virtual function new();
name = "t1"��
endfunction

constraint c {line1&&line2;}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
/////////////////////////////////////////////
class b01_transition_2 extends b01_transition;


virtual function new();
name = "t2"��
endfunction

constraint c {!(line1&&line2);}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
///////////////////////////////////////////////////////
class b01_transition_3 extends b01_transition;


virtual function new();
name = "t3";
endfunction

constraint c {line1&&line2;}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
//////////////////////////////////////////////////////////

class b01_transition_4 extends b01_transition;


virtual function new();
name = "t4";
endfunction

constraint c {!(line1&&line2);}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////

class b01_transition_5 extends b01_transition;

virtual function new();
name = "t5";
endfunction

constraint c {!(line1||line2);}

virtual function action();
outp = !(line1^line2);
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////
class b01_transition_6 extends b01_transition;


virtual function new();
name = "t6";
endfunction

constraint c {(line1||line2);}

virtual function action();
outp = !(line1^line2);
overflw = 1'b0;
endfunction

endclass
/////////////////////////////////////////////////////////////
class b01_transition_7 extends b01_transition;


virtual function new();
name = "t7";
endfunction

constraint c {!(line1&&line2);}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////////////
class b01_transition_8 extends b01_transition;


virtual function new();
name = "t8";
endfunction

constraint c {line1&&line2;}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
/////////////////////////////////////////////////////////////////////
class b01_transition_9 extends b01_transition;


virtual function new();
name = "t9";
endfunction

constraint c {!(line1&&line2);}

virtual function action();
outp = line1^line2;
overflw = 1'b1;
endfunction

endclass
////////////////////////////////////////////////////////////////
class b01_transition_10 extends b01_transition;


virtual function new();
name = "t10";
endfunction

constraint c {line1&&line2;}

virtual function action();
outp = line1^line2;
overflw = 1'b1;
endfunction

endclass
////////////////////////////////////////////////////////////
class b01_transition_11 extends b01_transition;


virtual function new();
name = "t11";
endfunction

constraint c {!(line1||line2);}

virtual function action();
outp = !(line1^line2);
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////
class b01_transition_12 extends b01_transition;


virtual function new();
name = "t12";
endfunction

constraint c {(line1||line2);}

virtual function action();
outp = !(line1^line2);
overflw = 1'b0;
endfunction

endclass
/////////////////////////////////////////////////////////////////////
class b01_transition_13 extends b01_transition;


virtual function new();
name = "t13";
endfunction

constraint c {!(line1&&line2);}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////////////
class b01_transition_14 extends b01_transition;

virtual function new();
name = "t14";
endfunction

constraint c {line1&&line2;}

virtual function action();
outp = line1^line2;
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////////
class b01_transition_15 extends b01_transition;


virtual function new();
name = "t15";
endfunction

constraint c {!(line1||line2);}

virtual function action();
outp = !(line1^line2);
overflw = 1'b0;
endfunction

endclass
////////////////////////////////////////////////////////
class b01_transition_16 extends b01_transition;


virtual function new();
name = "t16";
endfunction

constraint c {(line1||line2);}

virtual function action();
outp = !(line1^line2);
overflw = 1'b0;
endfunction

endclass
/****************************************************************************stage************************************************************/

class b01_stage_a extends stage;

virtual function new();
name = "a";

b01_transition_1 to0;
out_array.insert(0,to0);
b01_transition_2 to1;
out_array.insert(1,to1);

b01_transition_7 ti0;
in_array.insert(0,ti0);
b01_transition_15 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass

//////////////////////////////////////////////////
class b01_stage_b extends stage;

virtual function new();
name = "b";

b01_transition_3 to0;
out_array.insert(0,to0);
b01_transition_4 to1;
out_array.insert(1,to1);

b01_transition_2 ti0;
in_array.insert(0,ti0);
b01_transition_9 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass
//////////////////////////////////////////////////
class b01_stage_c extends stage;

virtual function new();
name = "c";

b01_transition_13 to0;
out_array.insert(0,to0);
b01_transition_14 to1;
out_array.insert(1,to1);

b01_transition_4 ti0;
in_array.insert(0,ti0);
b01_transition_11 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass
////////////////////////////////////////////////////////
class b01_stage_e extends stage;

virtual function new();
name = "e";

b01_transition_9 to0;
out_array.insert(0,to0);
b01_transition_10 to1;
out_array.insert(1,to1);

b01_transition_8 ti0;
in_array.insert(0,ti0);
b01_transition_16 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass
////////////////////////////////////////////////////////////
class b01_stage_f extends stage;

virtual function new();
name = "e";

b01_transition_11 to0;
out_array.insert(0,to0);
b01_transition_12 to1;
out_array.insert(1,to1);

b01_transition_1 ti0;
in_array.insert(0,ti0);
b01_transition_10 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass
//////////////////////////////////////////////////////////////
class b01_stage_g extends stage;

virtual function new();
name = "g";

b01_transition_5 to0;
out_array.insert(0,to0);
b01_transition_6 to1;
out_array.insert(1,to1);

b01_transition_3 ti0;
in_array.insert(0,ti0);
b01_transition_12 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass
///////////////////////////////////////////////////////////////////
class b01_stage_wf0 extends stage;

virtual function new();
name = "wf0";

b01_transition_7 to0;
out_array.insert(0,to0);
b01_transition_8 to1;
out_array.insert(1,to1);

b01_transition_5 ti0;
in_array.insert(0,ti0);
b01_transition_13 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass
///////////////////////////////////////////////////////////////////////
class b01_stage_wf1 extends stage;

virtual function new();
name = "wf1";

b01_transition_15 to0;
out_array.insert(0,to0);
b01_transition_16 to1;
out_array.insert(1,to1);

b01_transition_6 ti0;
in_array.insert(0,ti0);
b01_transition_14 ti1;
in_array.insert(1,ti1);
		
endfunction

endclass

/******************************************************************function_point******************************************************/
class function_point;
string name;
stage current_stage;
stage array_stage[$];

virtual function new();

endfunction

virtual function update();

endfunction

virtual function transition gen_vector();
int num;
num=0;
foreach(current_stage.out_array[i])
	num++;
int k;
k = $urandom_range(0,num-1);
int i=0;
while ((!(current_stage.out_array[k].randomize()))&&(i<=3*num))
	k = $urandom_range(0,num-1);
	i++;
if(current_stage.out_array[k].randomize())
	return current_stage.out_array[k];
else
 $display("@ %s of %s occurs  no satisfiable transition error", name, current_stage.name);
 return NULL;
 $stop;

endfunction

virtual function 

endclass

class b01_function_point extends function_point;

virtual function new();
name = "b01";
b01_stage_a a;
array_stage.insert(0,a);
b01_stage_b b;
array_stage.insert(1,b);
b01_stage_c c;
array_stage.insert(2,c);
b01_stage_e e;
array_stage.insert(3,e);
b01_stage_f f;
array_stage.insert(4,f);
b01_stage_g g;
array_stage.insert(5,g);
b01_stage_wf0 wf0;
array_stage.insert(6,wf0);
b01_stage_wf1 wf1;
array_stage.insert(7,wf1);

current_stage = a;

endfunction

virtual function transition gen_vector();
	

endfunction

endclass


/***********************************************generator******************************************************************************/
//Ҫ��function_point������д�����������
//generator���ɲ��������봫�ݲ�������
class generator;
function_point buleprint;
mailbox gen2drv;
event mon2gen;//monitor���ӵ�output�ı仯��˵��stage�����˱仯�����Խ�����һ��transition��

function new(mailbox gen2drv);
	this.gen2drv = gen2drv;
	b01 = new();
endfunction

task run;
	transition t;
	forever begin
//	v.update(...);//��Ŀǰ�Ĵ�����ֵ���µ�����v����ȥ����һ��������action֮��
	t = buleprint.gen_vector();//���������transition��Ȼ�󴫵ݸ�drv
	gen2drv.put(t);
	@mon2gen��
	end
endtask
endclass

class driver;
transition t;
mailbox gen2drv;
function new(mailbox gen2drv);
	this.gen2drv = gen2drv;
endfunction
task run;
	forever begin
	gen2drv.peek(t);
	send(t);
	gen2drv.get(t);
	end
endtask
function send(transition t);//����t���˿ڡ�����ÿһ��t��Ӧ�Ķ˿��ֲ�һ��������Ҫ����Ӧ����t������帳ֵ��
t.send();//���ø��Ե�send�����������Ӷ����Է��͵���Ӧ�Ķ˿�����ȥ��
endfunction
endclass

	

	