module tb_t_latch;
reg T,EN;
wire Q;

t_latch uut(T,EN,Q);

initial begin
$dumpfile("t_latch.vcd");
$dumpvars(0,tb_t_latch);
$monitor("time=%0t|EN=%b T=%b Q=%b",$time,EN,T,Q);

EN=0;T=0;

#5 EN=1;T=1;
#5 T=1;
#5 T=0;
#5 T=1;
#5 EN=0;
#5 T=1;

#10 $finish;
end
endmodule
