module johnson_counter(
    input clk,
    input rst,
  output reg [0:3] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;
    else
      q <= {~q[3], q[0:2]};
end

endmodule
