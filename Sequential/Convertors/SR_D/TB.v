module tb;
  reg d,clk=0,reset;
  wire q;
  sr_jk uut(.d(d),.clk(clk),.reset(reset),.q(q));
      always #10 clk=~clk;
  initial begin
    $monitor("time=%0t d=%b clk=%b reset=%b q=%b",$time,d,clk,reset,q);
    $dumpfile("SR_JK_FF.vcd");
    $dumpvars(0,tb);
      d=0; reset=0; #15;
      d=0; reset=1; #15;
      d=1; reset=0; #15;
      d=1; reset=1; #15;
      d=1; reset=0; #15;
      $finish;
    end
    endmodule
