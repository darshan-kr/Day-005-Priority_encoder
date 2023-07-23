module Priority_encoder(
  input [7:0]in,
  input ena,
  output reg [2:0]y);
  always@(*) begin
    if(ena == 1'b0)
      y = 3'd0;
    else
      begin
        casex(in)
      8'bxxxxxxx1:y = 3'd0;
      8'bxxxxxx10:y = 3'd1;
      8'bxxxxx100:y = 3'd2;
      8'bxxxx1000:y = 3'd3;
      8'bxxx10000:y = 3'd4;
      8'bxx100000:y = 3'd5;
      8'bx1000000:y = 3'd6;
      8'b10000000:y = 3'd7;
      default:y = 3'd0;
    endcase
    
      end
  end
endmodule
