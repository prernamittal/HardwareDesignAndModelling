`timescale 1ns/1ns
`include "mealey.v"
module mealey_tb();
  reg clk,rst,din;
  wire dout;
  wire [1:0]pr,next;
  mealey dut(clk,rst,din,dout,pr,next);
  always #10 clk=~clk;
  initial begin
    $dumpfile("mealey_tb.vcd");
    $dumpvars(0,mealey_tb);
    clk=0;
    #80 $finish;
  end
  initial begin
    rst=1;#10;
    rst=0; din=1; #10;
    din=0; #10;
    din=1; #10;
    din=0; #10;
    din=1; #10;
    $display("Test Complete");
  end
 endmodule
    
    
    
    
    
    
