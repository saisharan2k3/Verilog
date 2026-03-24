module tb;
  reg clk;
  reg reset;
  reg [3:0]d;
  wire [3:0]q;
  parallel_reg dut(.clk(clk),.reset(reset),.q(q),.d(d));
  always #10 clk=~clk;
  initial begin
    $monitor("time=%0t d=%b q=%b clk=%b reset=%b",$time,clk,reset,q,d);
    $dumpfile("paralle.vcd");
    $dumpvars(0,tb);
    clk=0;
    reset=0;
    d=0;
    #10 reset=1;
    #10 d=4'b0101;
    #10 d=4'b1101;
    #10 d=4'b1100;
    #10 d=4'b0001;
    #150 $finish;
  end
endmodule
