module t_ff(
input wire t,
input wire clk,reset,
output reg Q,
output wire qb);

assign qb = ~Q;
always @(posedge clk) begin
  if (!reset) begin
    Q<=1'b0;
  end
  else begin
Q <= ~t;
  end
end
endmodule
        
