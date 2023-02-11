module counter(cnt,clk,rst);
input clk,rst;
output reg [2:0]cnt;

always @ (posedge clk)   
begin
 if(rst==1'b1)
 cnt <= 3'b000;
 else
 cnt <= cnt+1'b1;
end
endmodule
