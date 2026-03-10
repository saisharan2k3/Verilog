module tb;
  reg clk;
  reg reset;
  wire [3:0]q;
  sync_up uut(.clk(clk),.reset(reset),.q(q));
  always #5 clk=~clk;
  initial begin
    $monitor("time=%0t clk=%b reset=%b q=%b", $time,clk,reset,q);
    $dumpfile("syn_up.vcd");
    $dumpvars(0,tb);
    clk=0;reset=1;
    #10 reset=0;
    #250 reset=1;
  #500 $finish;
  end
endmodule
