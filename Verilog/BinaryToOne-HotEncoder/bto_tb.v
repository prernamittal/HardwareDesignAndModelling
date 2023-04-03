`timescale 1ns/1ns
`include "bto.v"
module bto_tb();
reg [3:0] bin;
wire [3:0] oout;

bto var(bin, oout);
initial begin
	$dumpfile("bto_tb.vcd");
    	$dumpvars(0,bto_tb);
    	bin=4'b0000; #20;
    	bin=4'b0001; #20;
    	bin=4'b0010; #20;
    	bin=4'b0011; #20;
	$display("Test Complete");
end
endmodule

