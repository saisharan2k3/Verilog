module tb;
reg j, k, clk=0, reset;
wire Q, qb;
jk_ff uut (
  .j(j),
  .k(k),
        .clk(clk),
  .reset(reset),
        .Q(Q)
        );
 
always #5 clk = ~clk;
  
 
  initial begin      
$monitor("Time=%0t clk=%b S=%b R=%b Q=%b",
                  $time, clk, j, k, Q);
    $dumpfile("JK_FF.vcd");
$dumpvars(0,tb);

j = 0; k = 0; reset=0; #10;
j = 1; k = 0; reset=1; #10;
j = 0; k = 1; reset=0; #10;
j = 0; k = 0; reset=0; #10;
j = 1; k = 1; reset=1; #10;
j = 0; k = 0; reset=1; #10;
$finish;
end
endmodule
