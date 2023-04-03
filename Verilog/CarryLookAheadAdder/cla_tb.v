`timescale 1ns/1ns
`include "cla.v"
module cla_tb();
reg [3:0]a,b;
reg cin;
wire cout;
cla var(a,b,cout,cin);
initial begin
	$dumpfile("cla_tb.vcd");
    	$dumpvars(0,cla_tb);
    	a=4'b0001; b=4'b0010; cin=0; #20;
    	a=4'b0111; b=4'b1101; cin=1; #20;
    	a=4'b1111; b=4'b1111; cin=0; #20;
    	a=4'b0111; b=4'b1000; cin=1; #20;
	$display("Test Complete");
end
endmodule

