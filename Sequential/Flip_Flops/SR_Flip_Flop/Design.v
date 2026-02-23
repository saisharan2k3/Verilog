module sr_ff(
input wire S,
input wire R,
input wire clk,
input wire reset,
output reg Q,
output wire qb);

assign qb = ~Q;
always @(posedge clk) begin
  if (!reset) begin
    Q<=1'b0;
  end
    else begin
  case({S,R})
2'b00 : Q <= Q;
2'b01 : Q <= 1'b0;
2'b10 : Q <= 1'b1;
2'b11 : Q <= 1'bx;
endcase
end
end
  
endmodule
