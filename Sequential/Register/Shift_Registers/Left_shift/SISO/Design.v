module SISO(
  input clk,
  input in,
  output reg out);
reg [3:0]q;
  always@(posedge clk) begin
  out<=q[3];
q<={q[2:0],in};
end endmodule
