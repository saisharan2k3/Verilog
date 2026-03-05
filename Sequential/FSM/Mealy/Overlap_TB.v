module tb;
  reg clk;
  reg rst;
  reg in;
  wire out;
  moore_1010 uut(.clk(clk),.rst(rst),.in(in),.out(out));
  always #5 clk=~clk;
  initial begin
    $monitor("time=%0t clk=%b rst=%b in=%b out=%b", $time,clk,rst,in,out);
    $dumpfile("Moore.vcd");
    $dumpvars(0,tb);
    clk=0;
    rst=0;
    in=0;
  #7; rst=1;
  @(posedge clk)
	in=1;
  @(posedge clk)
  	in=0;
  @(posedge clk)
  	in=1;
  @(posedge clk)
  in=0;
  @(posedge clk)
  in=1;
  #75; $finish;
  end
endmodule
