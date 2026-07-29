module mod6_counter(
    input clk,
    input rst,
    output reg [2:0] q
);

always @(posedge clk) begin
    if (rst)
        q <= 3'd0;
    else if (q == 3'd5)
        q <= 3'd0;
    else
        q <= q + 1;
end

endmodule
