module top;
  // Declare a dynamic array D1
  int D1[];

  initial begin
    // Allocate memory to assign 10 values
    D1 = new[10];

    // Initialize the dynamic array with random values
    foreach (D1[i]) begin
      D1[i] = $urandom_range(1, 100);
    end

    // Resize the array for 20 locations while keeping the previous 10 values
    D1.resize(20);

    // Display the values of dynamic array
    foreach (D1[i]) begin
      $display("D1[%0d] = %0d", i, D1[i]);
    end
  end
endmodule
