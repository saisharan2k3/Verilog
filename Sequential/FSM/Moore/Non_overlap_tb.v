module tb;
reg clk;
reg reset;
reg in;
wire out;
Moore_NonOverlap uut(.clk(clk),.reset(reset),.in(in),.out(out));
always #5 clk=~clk;
initial begin
$monitor("time=%0t clk=%b reset=%b in=%b out=%b", $time,clk,reset,in,out);
$dumpfile("Moore_Non.vcd");
$dumpvars(0,tb);
clk=0;
reset=0;
in=0;
#10 reset=1;
@(posedge clk)in=1;
@(posedge clk)in=0;
@(posedge clk)in=1;
@(posedge clk)in=0;
#50; $finish;
end
endmodule
