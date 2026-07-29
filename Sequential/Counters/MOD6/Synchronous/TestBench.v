module tb;

reg clk;
reg rst;
wire [2:0] q;

// Instantiate DUT
mod6_counter dut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

// Clock generation (10 ns period)
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    // Hold reset for one clock cycle
    #10;
    rst = 0;

    // Run long enough to see multiple MOD-6 cycles
    #80;

    $finish;
end

initial begin
    $display("Time\tReset\tQ");
    $monitor("%0t\t%b\t%b", $time, rst, q);
  $dumpfile("MOD.vcd");
  $dumpvars(0,tb);
end

endmodule

/*

Time	Reset	Q
0	1	xxx
5	1	000
10	0	000
15	0	001
25	0	010
35	0	011
45	0	100
55	0	101
65	0	000
75	0	001
85	0	010
testbench.sv:28: $finish called at 90 (1s)

*/
