`timescale 1ns / 1ns
`include "ram.v"
module ram_tb();
reg [7:0]data_in;
reg [5:0] ram_address;
reg write_enable,clk;
wire [7:0]data_out;

ram  dut(data_in , ram_address,write_enable,clk,data_out);
always #10 clk=~clk;
initial begin // clock initialization
$dumpfile("ram_tb.vcd");
$dumpvars(0, ram_tb);
clk =1'b1;
#100 $finish;
end

initial begin
// writing data into the memory
write_enable =1'b1;
#20;
ram_address=5'd0;
data_in = 8'h10;
#20;
ram_address=5'd2;
data_in = 8'h11;
#20;
ram_address=5'd7;
data_in = 8'haf;
#20;

//reading data from the memory
write_enable = 1'b0;

ram_address=5'd0;
#20;
ram_address=5'd2;
#20;
ram_address=5'd7;
#20;
$display("test completed");
end
endmodule
