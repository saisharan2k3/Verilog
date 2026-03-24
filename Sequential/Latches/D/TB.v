module tb;

reg D, EN;
wire Q;

d_latch uut (
  .D(D),
  .EN(EN),
  .Q(Q)
);

initial begin
  $monitor("time=%0t EN=%b D=%b Q=%b", $time, EN, D, Q);

  $dumpfile("d_latch.vcd");
  $dumpvars(0, tb);

  D = 0; EN = 0;

  #10; EN = 1; D = 1;
  #10; D = 0;
  #10; EN = 0;
  #10; D = 1;
  #10; EN = 1;
  #10; EN = 0;

  #10 $finish;
end

endmodule
