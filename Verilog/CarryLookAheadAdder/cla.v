module cla(a,b,cout,cin);
input [3:0] a, b;
input cin; 
output reg cout;
reg [3:0]g,p;
integer i;
always@(*) 
begin
// Generate terms
for(i=0;i<4;i=i+1)
begin
g[i]= a[i] & b[i];
end
// Propagate terms
for(i=0;i<4;i=i+1)
begin
p[i]= a[i] | b[i];
end
// Carry out
cout = (g[3])|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&(g[0]|(p[0]&cin)));
end
endmodule

