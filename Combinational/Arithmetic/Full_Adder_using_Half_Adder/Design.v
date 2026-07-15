module Half_Adder(input a,b, output sum,carry);
  assign sum=a^b;
  assign carry=a&b;
endmodule

module H_F(input a,b,cin, output sum,carry);
  wire s1,c1,c2;
  Half_Adder H_F1(a,b,s1,c1);
  Half_Adder H_F2(s1,cin,sum,c2);
  or (carry,c1,c2);
endmodule
