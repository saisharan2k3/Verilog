module tb;
  reg t,clk=0,reset;
  wire q;
  sr_jk uut(.t(t),.clk(clk),.reset(reset),.q(q));
      always #10 clk=~clk;
  initial begin
    $monitor("time=%0t t=%b clk=%b reset=%b q=%b",$time,t,clk,reset,q);
    $dumpfile("SR_JK_FF.vcd");
    $dumpvars(0,tb);
      t=0; reset=0; #15;
      t=0; reset=1; #15;
      t=1; reset=0; #15;
      t=1; reset=1; #15;
      t=1; reset=0; #15;
      $finish;
    end
    endmodule
