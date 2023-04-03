//mealey 101 overlapping
module mealey(clk,rst,din,dout,pr,next);
  input clk,rst,din;
  output reg dout;
  output reg [1:0] pr,next;
  parameter idle=2'b00, st1=2'b01, st10=2'b10, st101=2'b11;
  always@(posedge clk) begin
    if(rst) begin
      pr<=idle;
      dout<=0;
    end else
        pr<=next;
  end
  always@(pr,din) begin
    case(pr)
      idle:if(din) begin
        next=st1;
        dout=0;
      end else begin
        next=idle;
        dout=0;
        end
        st1:if(din) begin
          next=st1;
          dout=0;
        end else begin
          next=st10;
          dout=0;
        end
        st10: if(din) begin
          next=st101;
          dout=0;
        end else begin
          next=idle;
          dout=0;
        end
        st101: if(din) begin
          next=st1;
          dout=1;
        end else begin
          next=st10;
          dout=0;
        end
        default: begin
          next=idle;
          dout=0;
        end
      endcase
      end
endmodule

