module tb;
  reg [15:0]BCD;
  wire [15:0]b;
  BCD_to_Binary DUT(.BCD(BCD),.binary(b));
initial begin
$display("Time\tBCD\t\tBinary");
  $monitor("%0t\t%h\t\t%0b",$time, BCD, b);
    BCD = 16'h0000;   // 0
    #10;

    BCD = 16'h0009;   // 9
    #10;

    BCD = 16'h0012;   // 12
    #10;

    BCD = 16'h0025;   // 25
    #10;

    BCD = 16'h0123;   // 123
    #10;

    BCD = 16'h1234;   // 1234
    #10;

    BCD = 16'h9999;   // 9999
    #10;

    $finish;
end

endmodule  
