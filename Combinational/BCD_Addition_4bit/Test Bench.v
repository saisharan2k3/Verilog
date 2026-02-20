module tb;
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  BCD dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial begin
    $monitor("time=%0t a=%b b=%b cin=%b sum=%b cout=%b", $time,a,b,cin,sum,cout);
    $dumpfile("BCD_Add.vcd");
    $dumpvars(0,tb);
    a=4'b0011; b=4'b0100; cin=0; #10;
    a=4'b1000; b=4'b1001; cin=0; #10;
    a=4'b1010; b=4'b0001; cin=0; #10;
    a=4'b1100; b=4'b0010; cin=0; #10;
    $finish;
  end
endmodule
