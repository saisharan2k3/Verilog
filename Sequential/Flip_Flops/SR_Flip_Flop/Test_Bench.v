module tb;
reg S, R, clk=0, reset;
wire Q, qb;
sr_ff uut (
        .S(S),
        .R(R),
        .clk(clk),
  .reset(reset),
        .Q(Q),
        .qb(qb));
 
always #5 clk = ~clk;
  
 
  initial begin      
$monitor("Time=%0t clk=%b S=%b R=%b Q=%b qb=%b",
                  $time, clk, S, R, Q, qb);
$dumpfile("SR_FF.vcd");
$dumpvars(0,tb);

S = 0; R = 0; reset=0; #10;
S = 1; R = 0; reset=1; #10;
S = 0; R = 1; reset=0; #10;
S = 0; R = 0; reset=0; #10;
S = 1; R = 1; reset=1; #10;
S = 0; R = 0; reset=1; #10;
$finish;
end
endmodule
