`timescale 1ns/1ns
`include "bibuffer.v"
module bibuffer_tb();
reg in;
reg [1:0]dir;
wire out;

bibuffer vars(in, out,dir);
initial begin
	$dumpfile("bibuffer_tb.vcd");
	$dumpvars(0,bibuffer_tb);
	in = 1; dir = 10; #20;
	in = 0; dir= 01; #20;
	in= 1; dir= 00; #20;
	in = 0; dir = 11; #20;
	$display("Test Complete");
end
endmodule

