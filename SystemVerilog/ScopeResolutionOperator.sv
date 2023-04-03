class eth_pkt;
  class m_pkt;
    static int count;
  endclass
  
  function void print();
    $display("m_pkt count = %0d", eth_pkt::m_pkt::count);
  endfunction
endclass

module top;
  eth_pkt pkt = new();
  pkt.print();
endmodule
