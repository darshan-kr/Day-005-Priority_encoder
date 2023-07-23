module tb;
  reg [7:0]in;
  reg ena;
  wire [2:0]y;
  
  Priority_encoder e1(in, ena, y);
  
  initial begin
    $monitor("in=%b, ena=%b, y=%b", in, ena, y);
    $dumpfile("dump.vcd"); $dumpvars;
    
    repeat(20) begin
      in = $random;
      ena = $random;
      #2;
    end
  end
endmodule
