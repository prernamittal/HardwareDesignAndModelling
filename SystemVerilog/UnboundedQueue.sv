module top;
  // Declare an unbounded Queue Q1 
  initial begin
    // Initialize the Queue with 6 different Values
    Q1 = {1, 2, 3, 4, 5, 6};

    // Push Any value from back using predefined method
    Q1.push_back(7);

    // Push Any value from back without using predefined method
    Q1[Q1.size()] = 8;

    // Extract value from ‘0’ th location
    int value = Q1[0];
    Q1.delete(0);

    // Insert the value at any location
    Q1.insert(2, 9);

    // Make queue as FIFO
    foreach(Q1[i]) begin
      $display("Value: %0d", Q1[i]);
    end
  end
endmodule

//when we iterate through the elements using a foreach loop, they will be displayed in the order they were added.
