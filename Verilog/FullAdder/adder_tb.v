`timescale 1ns/1ns
`include "adder.v"
module adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
adder var(a,b,sum,cin);
initial begin
	$dumpfile("adder_tb.vcd");
    	$dumpvars(0,adder_tb);
    	a=4'b0000; b=4'b0010; cin=0; #20;
    	a=4'b0001; b=4'b1000; cin=1; #20;
    	a=4'b0010; b=4'b0001; cin=0; #20;
    	a=4'b0011; b=4'b0100; cin=1; #20;
	$display("Test Complete");
end
endmodule

