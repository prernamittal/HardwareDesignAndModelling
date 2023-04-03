class eth_pkt;
  rand bit [7:0] sof;
  rand bit [15:0] len;
  rand int count;
  rand bit [7:0] payload[];

  function void print();
    $display("sof=%0d, len=%0d, count=%0d, payload=%p", sof, len, count, payload);
  endfunction

  constraint payload_c {
    payload.size() > 40;
    payload.size() < 50;
  }
endclass

module top;
  eth_pkt pkt = new();
  pkt.print();
endmodule

