//code to generate 100 random numbers between 1 to 100 in random order
module RandomNum;
  // Declare random variable
  rand int unsigned random_num;

  initial begin
    // Create seed for randomization
    $randomize();
    // Generate 100 random numbers between 1 to 100
    for(int i=0; i<100; i++) begin
      random_num = randomize() with {random_num inside {[1:100]};};
      $display("Random number %0d: %0d", i+1, random_num);
    end
  end
endmodule
