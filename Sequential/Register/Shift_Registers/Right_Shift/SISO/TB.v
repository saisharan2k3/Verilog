module tb;
  reg clk;
  reg in;
  wire out;
  SISO dut(.clk(clk),.in(in),.out(out));
  always #5 clk=~clk;
  initial begin
    $monitor("time=%0t clk=%0b in=%0b out=%0b",$time,clk,in,out);
    $dumpfile("SISO.vcd");
    $dumpvars(0,tb);
    clk=0;
    in=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=0;
    #10 in=1;
    #10 in=0;
    #60 $finish;
  end
endmodule
