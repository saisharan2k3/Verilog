module SISO(
  input clk,
  input in,
  output reg out);
reg [3:0]q;
  always@(posedge clk) begin
    out<=q[0];
    q<={in,q[3:1]};
end endmodule
