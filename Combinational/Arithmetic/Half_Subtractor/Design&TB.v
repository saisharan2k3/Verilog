---Design------
module H_S(
  input a,b,
  output diff,borrow);
  assign{borrow,diff}=a-b;
endmodule



------TB-------

module tb;
  reg a,b;
  wire diff,borrow;
  H_S HS(.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial begin
    $monitor("Time=%t a=%b b=%b diff=%b borrow=%b",$time,a,b,diff,borrow);
    $dumpfile("HS.vcd");
              $dumpvars(0,tb);
              a=0;b=0;
              #10 a=0;b=1;
              #10 a=1;b=0;
              #10 a=1;b=1;
              #10 a=1;b=0;
              #10 a=0;b=0;
              #10 $finish;
              end
              endmodule
