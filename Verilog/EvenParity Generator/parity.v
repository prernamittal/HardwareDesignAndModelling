module parity(a,p);
parameter n = 4;
input [n-1:0]a;
output reg p;
integer i;
always@(*)
begin
p=a[0]^a[1];
for(i=2;i<n;i=i+1)	
	p=p^a[i];
end
endmodule
