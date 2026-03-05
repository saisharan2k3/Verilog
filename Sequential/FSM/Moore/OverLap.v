module moore_1010(
  input clk,
  input rst,
  input in,
  output reg out);
  parameter s0=2'b00,
  			s1=2'b01,
  			s2=2'b10,
  			s3=2'b11;
  reg [1:0]cs,ns;
  always @(posedge clk or negedge rst)
    if(!rst)
      cs<=2'b00;
  else
    cs<=ns;
  always@(*)
    case(cs)
    s0: begin
      ns=in?s1:s0;
  		out=1'b0;
    end
  	s1: begin
      ns=in?s1:s2;
  		out=1'b0;
    end
  	s2: begin
      ns=in?s3:s0;
  		out=1'b0;
    end
  	s3: begin
      ns=in?s1:s2;
  		out=in?1'b0:1'b1;
    end
  	default begin
      ns=2'b00;
  			out=1'b0;
    end
      endcase
endmodule
