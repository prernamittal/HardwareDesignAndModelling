`timescale 1ns/1ns
`include "counter.v"
module counter_tb();
reg clk,rst;
wire [2:0]cnt;
counter vars(cnt,clk,rst);
always #10 clk = ~clk;
initial
begin
    $dumpfile("counter_tb.vcd");
    $dumpvars(0,counter_tb);
    clk = 0;
    #100 $finish;
end
initial
begin
    rst = 1; #20;
    rst = 0; #80;
    $display("Test complete");
end
endmodule
