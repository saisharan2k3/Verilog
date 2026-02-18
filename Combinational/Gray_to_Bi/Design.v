module gr_bi(
  input g3,g2,g1,g0,
  output b3,b2,b1,b0);
assign b3=g3;
assign b2=b3^g2;
assign b1=b2^g1;
assign b0=b1^g0;
endmodule
