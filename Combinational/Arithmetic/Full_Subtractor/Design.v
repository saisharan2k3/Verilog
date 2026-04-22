module Sub(
  input X, Y, Bin,
  output D, B
);
  assign D=X^Y^Bin;
  assign B=((!X&Y)|(Y&Bin)|(!X&Bin));
endmodule
