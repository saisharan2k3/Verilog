module tb_jk_latch;
reg J,K,EN;
wire Q;

jk_latch uut(J,K,EN,Q);

initial begin
$dumpfile("jk_latch.vcd");
$dumpvars(0,tb_jk_latch);
$monitor("time=%0t|EN=%b J=%b K=%b Q=%b",$time,EN,J,K,Q);

EN=0;J=0;K=0;

#5 EN=1;J=1;K=0;
#5 J=0;K=1;
#5 J=1;K=1;
#5 J=1;K=1;
#5 J=0;K=0;
#5 EN=0;
#5 J=1;K=1;

#10 $finish;
end
endmodule
