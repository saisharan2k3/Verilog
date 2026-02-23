module d_ff(
input wire d,
input wire clk,
input wire reset,
output reg Q);


always @(posedge clk) begin
  if (!reset) begin
    Q<=1'b0;
  end
    else begin
Q<=d;
end
end
  
endmodule
