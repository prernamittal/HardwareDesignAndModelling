module bibuffer(input in, output out, input [1:0] dir);
  trist tri1_inst (
    .in(in),
    .out(out),
    .en(dir[0])
  );
  trist tri2_inst (
    .in(out),
    .out(in),
    .en(dir[1])
  );
endmodule
module trist(input in, output out, input en);
   assign out = en ? in : 1'bZ;
endmodule

