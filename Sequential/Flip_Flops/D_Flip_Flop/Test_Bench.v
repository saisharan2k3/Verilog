module tb;
reg d, clk=0, reset;
wire Q, qb;
d_ff uut (
  .d(d),
        .clk(clk),
  .reset(reset),
        .Q(Q)
        );
 
always #5 clk = ~clk;
  
 
  initial begin      
    $monitor("Time=%0t clk=%b reset=%b d=%b Q=%b",
                  $time, clk, d, Q);
    $dumpfile("d_FF.vcd");
$dumpvars(0,tb);

d = 0;  reset=0; #10;
d = 1;  reset=1; #10;
d = 0;  reset=0; #10;
d = 0;  reset=0; #10;
d = 1;  reset=1; #10;
d = 0;  reset=1; #10;
$finish;
end
endmodule
