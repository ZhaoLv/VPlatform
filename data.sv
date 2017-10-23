class transition;//应该是每一个功能点都会有一个transition类。





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