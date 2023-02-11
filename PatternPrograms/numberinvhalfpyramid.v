module numberinvhalfpyramid;
parameter n=5;  
integer i,j,k,m=1;
initial begin
  for(i=n;i>=1;i=i-1)  
    begin
      for( j=1;j<=i-1;j=j+1) 
        $write("           "); 
      for( k=m;k>=1;k=k-1) 
        $write("%d",k); 
    $display("");  
    m=m+1;
    end  
end 
endmodule

