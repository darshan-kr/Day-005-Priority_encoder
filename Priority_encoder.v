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
      8'b1xxxxxxx:y = 3'd7;
      8'b01xxxxxx:y = 3'd6;
      8'b001xxxxx:y = 3'd5;
      8'b0001xxxx:y = 3'd4;
      8'b00001xxx:y = 3'd3;
      8'b000001xx:y = 3'd2;
      8'b0000001x:y = 3'd1;
      8'b00000001:y = 3'd0;
      default:y = 3'd7;
    endcase
    
      end
  end
endmodule
