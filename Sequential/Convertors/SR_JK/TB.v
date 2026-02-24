module tb;
  reg j,k,clk=0,reset;
  wire q;
  sr_jk uut(.j(j),.k(k),.clk(clk),.reset(reset),.q(q));
      always #10 clk=~clk;
  initial begin
    $monitor("time=%0t j=%b k=%b clk=%b reset=%b q=%b",$time,j,k,clk,reset,q);
    $dumpfile("SR_JK_FF.vcd");
    $dumpvars(0,tb);
      j=0; k=0; reset=0; #15;
      j=0; k=0; reset=1; #15;
      j=0; k=1; reset=0; #15;
      j=0; k=1; reset=1; #15;
      j=1; k=0; reset=1; #15;
      j=1; k=1; reset=0; #15;
      j=1; k=1; reset=1; #15;
      $finish;
    end
    endmodule
