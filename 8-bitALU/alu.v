module alu (input [7:0] A, B, 
           input [2:0] opcode, 
           output reg [7:0] result,
           output reg zero);
always @(*) begin
   result = 0;
   zero = 1;
   case (opcode)
      3'b000: result = A + B;
      3'b001: result = A - B;
      3'b010: result = A & B;
      3'b011: result = A | B;
      3'b100: result = A ^ B;
      3'b101: result = ~A;
      3'b110: result = A >> 1;
      3'b111: result = A << 1;
      default: result = 8'bz;
   endcase
   if (result == 0)
      zero = 1;
   else
      zero = 0;
end
endmodule

