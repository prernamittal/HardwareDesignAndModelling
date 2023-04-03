module shift(clk,rst,din,shift,q);
input clk,rst,din,shift;
output reg [7:0] q;

always @ (posedge clk or posedge rst) begin
  if (rst) 
    q <= 8'b0;
  else begin
    if (shift) 
      q <= {q[6:0], din};
  end
end
endmodule
