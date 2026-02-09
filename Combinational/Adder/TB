module tb;
  reg A, B, Cin;
  wire S, C;
  Adder P(.A(A),.B(B),.Cin(Cin),.S(S),.C(C));
  initial begin
    $monitor("Time=%0t A=%b B=%b Cin=%b S=%b C=%b", $time,A,B,Cin,S,C);
    $dumpfile("Adder.vcd");
    $dumpvars(0,tb);
    for(integer i=0;i<8;i=i+1) begin
       {A,B,Cin} =i[2:0];
      #10;
        end
    $finish;
  end
endmodule
