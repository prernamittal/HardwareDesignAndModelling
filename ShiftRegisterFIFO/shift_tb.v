`timescale 1ns/1ns
`include "shift.v"
module shift_tb();
reg clk, rst, din, shift;
wire [7:0] q;
shift dut(clk,rst,din,shift,q);
always #10 clk = ~clk;
initial begin
$dumpfile("shift_tb.vcd");
$dumpvars(0, shift_tb);
  clk = 0;
  #120 $finish;
end
initial begin
  rst = 1;
  din = 0;
  shift = 0;
  #10 rst = 0;
  #20 din = 1;
  #10 shift = 1;
  #20 din = 0;
  #10 shift = 1;
  #20 din = 1;
  #10 shift = 1; #10;
  $display("Test Complete");
end
endmodule

