module tb;
reg y3,y2,y1,y0;
wire a1,a0,v;
enc p(.y3(y3),.y2(y2),.y1(y1),.y0(y0),.a1(a1),.a0(a0),.v(v));
initial begin
$monitor("Time=%0t y3=%b y2=%b y1=%b y0=%b a1=%b a0=%b v=%b", $time,y3,y2,y1,y0,a1,a0,v);
$dumpfile("Pr_Enc.vcd");
$dumpvars(0,tb);
{y3,y2,y1,y0} = 4'b0000; #10;
{y3,y2,y1,y0} = 4'b0001; #10;
{y3,y2,y1,y0} = 4'b0010; #10;
{y3,y2,y1,y0} = 4'b0110; #10;
{y3,y2,y1,y0} = 4'b1000; #10;
{y3,y2,y1,y0} = 4'b1111; #10;
$finish;
end
endmodule
