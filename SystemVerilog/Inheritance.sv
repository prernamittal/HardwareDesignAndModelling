// a. Declare eth_pkt.sv class
class eth_pkt;
  rand bit [7:0] sof;
  rand bit [15:0] len;
  rand int count;
  
  function void print();
    $display("sof = %h, len = %d, count = %0d", sof, len, count);
  endfunction
endclass

// b. Declare eth_good_pkt.sv class
class eth_good_pkt extends eth_pkt;
  rand int count_good;
  
  function void print();
    super.print();
    $display("count_good = %0d", count_good);
  endfunction
endclass

// c. Define print method to print all properties without using super.print
class eth_good_pkt2 extends eth_pkt;
  rand int count_good;
  
  function void print();
    $display("sof = %h, len = %d, count = %0d, count_good = %0d", this.sof, this.len, this.count, count_good);
  endfunction
endclass
