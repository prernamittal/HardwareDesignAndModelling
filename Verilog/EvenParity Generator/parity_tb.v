`timescale 1ns/1ns
`include "parity.v"
module parity_tb();
reg [3:0]a;
wire p;
parity var(a, p);
initial begin
	$dumpfile("parity_tb.vcd");
    	$dumpvars(0,parity_tb);
    	a=4'b0000; #20;
    	a=4'b0001; #20;
    	a=4'b0010; #20;
    	a=4'b0011; #20;
	$display("Test Complete");
end
endmodule

