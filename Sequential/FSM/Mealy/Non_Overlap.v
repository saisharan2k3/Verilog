module sequence_1010(
  input clk,
  input reset,
  input in,
  output reg out);
  parameter s0=2'b00,
  			s1=2'b01,
  			s2=2'b10,
  			s3=2'b11;
  reg [1:0]cs,ns;
  
  always @(posedge clk or negedge reset)
    if(!reset)
      cs<=2'b00;
  else
      cs<=ns;
  always@(*) begin
    case(cs) 
      s0:ns=in?s1:s0;
      s1:ns=in?s1:s2;
      s2:ns=in?s3:s0;
      s3:ns=in?s1:s0;
      default: ns=s0;
    endcase
  end
  always @(*) begin
    out=0;
    if(cs==s3 && in==0)
      out=1'b1;
  end
endmodule
