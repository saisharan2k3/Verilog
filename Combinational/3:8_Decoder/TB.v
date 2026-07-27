module tb;
  reg[2:0] a;
  wire[7:0] o;
  decoder de(.a(a),.o(o));
  initial begin
    $display("   Time  A      O");
    $monitor("\t%0t \t %d\t %b",$time,a,o);
    a=3'b000;
    #5a=3'b001;
    #5a=3'b010;
    #5a=3'b011;
    #5a=3'b100;
    #5a=3'b101;
    #5a=3'b110;
    #5a=3'b111;
  end
endmodule

/*

 Time  A      O
	0 	 0	 00000001
	5 	 1	 00000010
	10 	 2	 00000100
	15 	 3	 00001000
	20 	 4	 00010000
	25 	 5	 00100000
	30 	 6	 01000000
	35 	 7	 10000000

  */
