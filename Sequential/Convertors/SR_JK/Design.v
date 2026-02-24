module sr_ff(
  input s,r,clk,reset,
  output reg q);
  wire qb;
  assign qb=~q;
  always @(posedge clk)begin
    if(!reset)begin
      q<=0;
    end
    else begin
      case({s,r})
        2'b00 : q<=q;
        2'b01 : q<=1'b0;
        2'b10 : q<=1'b1;
        2'b11 : q<=1'bx;
      endcase
    end
  end
endmodule

module sr_jk(
  input j,k,clk,reset,
  output q);
  wire s,r,qb;
  sr_ff uut(.s(s),.r(r),.q(q),.clk(clk),.reset(reset));
  assign qb=~q;
  assign s=j&qb;
  assign r=k&qb;
endmodule
