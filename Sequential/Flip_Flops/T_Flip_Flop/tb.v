module tb;
reg t, clk, reset;
wire Q, qb;
t_ff uut (
        .t(t),
        .clk(clk),
        .Q(Q),
  .qb(qb),.reset(reset));

initial clk = 0;
    always #5 clk = ~clk;
initial begin      
  $monitor("Time=%0t clk=%b t=%b Q=%b qb=%b reset=%b",
                  $time, clk, t, Q, qb,reset);
$dumpfile("T_FF.vcd");
$dumpvars(0,tb);
t = 0; reset=0; #10;
t = 1; reset=1; #10;
t = 0; reset=0; #10;
t = 0; reset=1; #10;
t = 1; reset=1; #10;
$finish;
end
endmodule
