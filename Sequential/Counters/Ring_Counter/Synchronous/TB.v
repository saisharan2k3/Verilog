module tb;
  reg clk,rst;
  wire[3:0]q;
  ring_counter dut(.clk(clk),.rst(rst),.q(q));
	always #5clk=~clk;
  initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0, tb);
    clk=0;
    rst=1;
    #10
    rst=0;
    #100
    $finish;
  end
  initial begin
    $display("TIME\ RST\tQ");
    $monitor("%0t\t%0b\t%0b",$time,rst,q);
  end
endmodule

/*

TIME RST	Q
0	1	1000
10	0	1000
15	0	0100
25	0	0010
35	0	0001
45	0	1000
55	0	0100
65	0	0010
75	0	0001
85	0	1000
95	0	0100
105	0	0010

*/
