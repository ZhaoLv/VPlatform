class transition;//Ӧ����ÿһ�����ܵ㶼����һ��transition�ࡣ





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

endclass