module bi_to_gray(
  input [3:0] bi,
  output reg[3:0] gray);
  integer i;
  always@(*)begin
    gray[3] = bi[3];
    for(i=3;i>0;i=i-1) begin
    gray[i-1]=bi[i]^bi[i-1];
    end
  end
endmodule
