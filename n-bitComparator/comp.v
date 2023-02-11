module comp(a,b,eq,gt,lt);
parameter n=5;
input [n-1:0]a,b;
output reg eq,gt;
output lt;
integer i=0,j=0;
reg [n-1:0]t1,t2;

always @(a or b)
begin
for(i=0; i<n; i=i+1)
	t1[i]=~(a[i]^b[i]);
eq = t1[0];
for(i=1;i<n;i=i+1)
	eq= eq & t1[i];

for(i=0;i<n;i=i+1)
begin
	t2[i] = a[i] & ~b[i];
	for(j=n-1-i; j >= 0; j = j -1)
		t2[i] = t2[i] & t1[j];

end
gt = t2[0];
for(i=1;i<n;i=i+1)
	gt = gt|t2[i];
end
assign lt = ~(gt|eq);
endmodule
