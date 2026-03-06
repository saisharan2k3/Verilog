module Moore_NonOverlap(
input clk,
input reset,
input in,
output reg out);
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
reg[2:0]cs,ns;
always@(posedge clk or negedge reset) begin
if(!reset)
  cs<=s0;
  else
    cs<=ns;
    end
    always@(*)
begin
case(cs)
s0:ns=in?s1:s0;
s1:ns=in?s1:s2;
s2:ns=in?s3:s0;
s3:ns=in?s1:s4;
s4:ns=in?s3:s0;

default: ns=s0;
endcase
end
always@(*) begin
out=1'b0;
if(cs==s4)
  out=1'b1;
  end
  endmodule
