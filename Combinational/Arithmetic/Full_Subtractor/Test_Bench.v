module tb;
  reg X, Y, Bin;
  wire D, B;
  Sub P(.X(X),.Y(Y),.Bin(Bin),.D(D),.B(B));
  initial begin
    $monitor("Time=%0t X=%b Y=%b Bin=%b D=%b B=%b", $time,X,Y,Bin,D,B);
             $dumpfile("Sub.vcd");
    $dumpvars(1,tb);
    for(integer i=0;i<8;i=i+1)begin
      {X,Y,Bin}=i[2:0];
               #10;
             end
             $finish;
  end
  
endmodule
