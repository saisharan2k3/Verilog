module tb;
  reg A, B;
  wire S, C;
  HA I(.S(S),.C(C),.A(A),.B(B));
  initial begin
    $monitor("Time=%0t A=%b, B=%b, S=%b, C=%b", $time,A,B,S,C);
    $dumpfile("HA.vcd");
    $dumpvars(1,tb);
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    $finish;
  end
endmodule
