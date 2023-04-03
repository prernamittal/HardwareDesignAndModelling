module adder(a,b,sum,cin);
input [3:0] a, b; 
input cin;
output [3:0] sum; 
wire c1, c2, c3;
fulladder FA1(a[0], b[0], sum[0],cin, c1);
fulladder FA2(a[1], b[1], sum[1],c1, c2);
fulladder FA3(a[2], b[2], sum[2],c2, c3);
halfadd HA(a[3], b[3], c3, sum[3]);
endmodule

module fulladder(x,y,sum,cin,cout);
input x,y,cin;
output sum,cout;
assign sum=(x^y^cin);
assign cout=(x&y)|(x&cin)|(y&cin);
endmodule


module halfadd(x,y,sum,carry);
input x,y;
output sum,carry;
assign sum=(x^y);
assign carry=(x&y);
endmodule

