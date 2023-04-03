class eth_pkt;
  rand bit [7:0] sof;
  rand bit [15:0] len;
  rand int unsigned count;
  rand byte payload[];

  constraint payload_c {
    payload.size() > 40;
    payload.size() < 50;
  }

  function void print();
    $display("sof = %0h, len = %0d, count = %0d", sof, len, count);
    $display("payload size = %0d, payload = %p", payload.size(), payload);
  endfunction
endclass

module top;
  eth_pkt pkt = new();
  
  assert(pkt.randomize());
  pkt.print();
  
  // Apply conflicting constraints
  if (!pkt.randomize() with {
    payload.size() < 40;
    payload.size() > 50;
  }) begin
    $display("Randomize failed due to conflicting constraints");
  end
  pkt.print();
endmodule

