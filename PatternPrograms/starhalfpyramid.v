module starhalfpyramid;
parameter n=5;  
integer i,j;
initial begin
  for(i=1;i<=n;i=i+1)  
    begin
      for( j=1;j<=i;j=j+1) 
            $write("* "); 
        $display("");  
    end  
end 
endmodule

