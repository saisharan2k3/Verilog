module tb;
  reg[1:0] a;
  wire[3:0] o;
  decoder de(.a(a),.o(o));
  initial begin
    $monitor("Time =%0t a=%d o=%b",$time,a,o);
    a=2'b00;
    #5a=2'b01;
    #5a=2'b10;
    #5a=2'b11;
  end
endmodule

/*
Time =0  a=0 o=0001
Time =5  a=1 o=0010
Time =10 a=2 o=0100
Time =15 a=3 o=1000
*/
