module tb;

reg clk;
reg rst;
  wire [0:3] q;

johnson_counter dut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

always #5 clk = ~clk;

initial begin
  
  $dumpfile("johnson_counter.vcd");
    $dumpvars(0, tb);


    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    #100;

    $finish;
end

initial begin
  $display("TIME RST\tQ");
    $monitor("%0t\t%b\t%b", $time, rst, q);
end

endmodule

/*

TIME RST	Q
0	1	0000
10	0	0000
15	0	1000
25	0	1100
35	0	1110
45	0	1111
55	0	0111
65	0	0011
75	0	0001
85	0	0000
95	0	1000
105	0	1100
testbench.sv:29: $finish called at 110 (1s)

*/
