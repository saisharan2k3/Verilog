module sr_latch (
  input S,
  input R,
  output reg Q,
  output reg Q_bar
);

always @(*) begin
  if (S == 0 && R == 0) begin
  end
  else if (S == 0 && R == 1) begin
    Q = 0;
    Q_bar = 1;
  end
  else if (S == 1 && R == 0) begin
    Q = 1;
    Q_bar = 0;
  end
  else begin
    Q = 1'bx;
    Q_bar = 1'bx;
  end
end

endmodule
