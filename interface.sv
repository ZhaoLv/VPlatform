`timescale 1ps / 1ps
interface b01_if(input bit clk); 
logic line1;
logic line2;
ligic outp;
logic overflw;    
logic reset;
/*
modport TEST(output line1,line2,
						 input outp,overflw,clk) ;
						 */
modport b01

modport DUT(input line1,line2, clk,reset   
            output outp,overflw) ;
modport MONITOR(input line1,line2, clk,outp,overflw);
                
endinterface