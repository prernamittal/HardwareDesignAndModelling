module bto(bin, oout);
parameter size = 4;
input [size-1:0] bin;
output reg [size-1:0] oout;

always @(*) 
begin
	oout = {size{1'b0}};
	oout[bin] = 1'b1;
end
endmodule

