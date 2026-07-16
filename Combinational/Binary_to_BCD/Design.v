module Binary_to_BCD(
  input [15:0] bi,
  output reg [3:0] BCD[3:0]);
  always@(*) begin
    BCD[0]=bi%10;
    BCD[1]=(bi/10)%10;
    BCD[2]=(bi/100)%10;
    BCD[3]=(bi/1000)%10;
  end
endmodule
