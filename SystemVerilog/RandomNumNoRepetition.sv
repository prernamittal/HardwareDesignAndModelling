//code to generate 100 random numbers between 1 to 100 in random order with no repetition.
module RandomNumNoRepetition;
  int array[101];
  int rand_arr[$];
  initial begin
    for(int i=0; i<=100; i++) begin
      array[i] = i;
    end
    for(int i=0; i<100; i++) begin
      rand_arr.push_back(arr.randc());
    end
    $display("Random array: %p", rand_arr);
  end
endprogram
