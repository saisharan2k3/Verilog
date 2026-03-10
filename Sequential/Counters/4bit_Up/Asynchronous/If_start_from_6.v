module async_up(
  input clk,
  input reset,
  output reg [3:0]q);
  always@(posedge clk or posedge reset) begin
    if(reset)
      q[0]<=1'b0;
    else
      q[0]<=~q[0];
  end
  always@(posedge q[0] or posedge reset) begin
    if(reset)
      q[1]<=1'b1;
    else
      q[1]<=~q[1];
    end
  always@(negedge q[1] or posedge reset) begin
    if(reset)
      q[2]<=1'b1;
    else
      q[2]<=~q[2];
      end
  always@(negedge q[2] or posedge reset) begin
    if(reset)
      q[3]<=1'b0;
    else
      q[3]<=~q[3];
        end
endmodule

//Same TestBench and also if other numbers like 2 or 4 adjust whr the 1'b1 should come
