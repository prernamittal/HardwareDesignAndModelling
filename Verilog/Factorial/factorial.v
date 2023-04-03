module factorial;
parameter i=5;
function automatic integer fact(input integer n);
begin
if (n == 0)
fact = 1;
else
fact = n * fact(n-1);
end
endfunction
initial begin
$display("The factorial of %d is %d", i, fact(i));
end
endmodule
