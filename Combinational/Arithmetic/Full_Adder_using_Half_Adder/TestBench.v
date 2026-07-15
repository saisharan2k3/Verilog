module tb;
  reg a,b,cin;
  wire sum,carry;
  H_F Half_Add(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  
  initial begin
    $dumpfile("ff.vcd");
    $dumpvars(0,tb);
a=0;b=0;cin=0;
#10 a=0;b=1;cin=0;
#10 a=1;b=0;cin=0;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
#10 $finish;
  end
endmodule
