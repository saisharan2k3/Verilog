module full_a (
  input a,b,cin,
  output sum,cout);
  assign sum=a^b^cin;
  assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module RCA(
  input [3:0]a,
  input [3:0]b,
  input cin,
  output [3:0]sum,
  output cout);
  wire c1,c2,c3;
  full_a fa0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1));
  full_a fa1(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2));
  full_a fa2(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3));
  full_a fa3(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(cout));
endmodule

module BCD(
  input [3:0]a,
  input [3:0]b,
  input cin,
  output [3:0]sum,
  output cout);
  
  wire[3:0] s1;
  wire c1;
  wire y;
  wire[3:0]corr;
  wire[3:0]s2;
  wire c2;
  
  RCA R1(.a(a),.b(b),.cin(cin),.sum(s1),.cout(c1));
  assign y=(c1|((s1[3]&s1[2])|(s1[3]&s1[1])));
  assign corr=(y)?4'b0110:4'b0000;
  
  RCA R2(.a(s1),.b(corr),.cin(cin),.sum(s2),.cout(c2));
  assign sum=s2;
  assign cout=c2;
endmodule
