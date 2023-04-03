module numberpyramid;
parameter rows=5;
integer alphabet=0,i,j,k,l;
initial begin
  for (i=1;i<=rows;i=i+1)
	begin
      for(j=1;j<=rows-i;j=j+1)
	$write("           ");
      for(k=i;k>0;k=k-1)
        $write("%d",alphabet+k);
      for(l=2;l<=i;l=l+1)
          $write("%d",alphabet+l);
		$display("");
    end
  end
endmodule
