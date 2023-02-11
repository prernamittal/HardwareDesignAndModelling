`timescale 1ns/1ns
`include "comp.v"
module comp_tb();
reg [4:0]a,b;
wire eq,gt,lt;

comp var(a,b,eq,gt,lt);
initial begin 
    $dumpfile("comp_tb.vcd");
    $dumpvars(0,comp_tb);
    a = 5'b10100; b = 5'b01100; #20;
    a = 5'b01000; b = 5'b10010; #20;
    a = 5'b11011; b = 5'b11011; #20;
    $display("Test Complete");
end
endmodule
