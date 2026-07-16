module tb;
  reg [3:0] bi;
  wire [3:0] gray;
  integer i;
  bi_to_gray BI_Gray(.bi(bi),.gray(gray));
  initial begin
    $display("TIME\tBI\t   GRAY"); 
    for (i=0;i<16;i=i+1)
    begin
      bi=i;
      #1;
      $display("%0t\t    %b\t   %b",$time,bi,gray);
      #10;
    end
  end
endmodule


TIME	  BI	     GRAY
0	      0000	   xxxx
10	    0001	   0000
20	    0010	   0001
30	    0011	   0011
40	    0100	   0010
50	    0101	   0110
60	    0110	   0111
70	    0111	   0101
80	    1000	   0100
90	    1001	   1100
100	    1010	   1101
110	    1011	   1111
120	    1100	   1110
130	    1101	   1010
140	    1110	   1011
150	    1111	   1001
Done
