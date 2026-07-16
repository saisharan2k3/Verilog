module tb;
  reg [15:0]bi;
  wire [3:0] BCD[3:0];
  integer i;
  Binary_to_BCD DUT(.BCD(BCD),.bi(bi));
 initial begin
$display("TIME\tBINARY\t\tBCD");
  for(i=0;i<50;i=i+1)
  begin
    
    $display("%0t\t    %16b\t\t%d %d %d %d",
             $time, bi, BCD[3], BCD[2], BCD[1], BCD[0]);
    bi=i;
    #10;
  end
 end
endmodule  
