module starinvhalfpyramid;
parameter n=5;  
integer i,j,k,m=1;
initial begin
  for(i=n;i>=1;i=i-1)  
    begin
      for( j=1;j<=i-1;j=j+1) 
            $write(" "); 
      for( k=1;k<=m;k=k+1) 
            $write("*"); 
    $display("");  
    m=m+1;
    end  
end 
endmodule

