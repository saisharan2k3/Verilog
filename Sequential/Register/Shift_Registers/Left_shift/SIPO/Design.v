module SIPO(
  input in,
  input clk,
  output reg [3:0]out);
  
  reg [3:0] q;
  
  always @(posedge clk) begin
    q<={q[2:0],in};
    out<=q;
  end 
endmodule
