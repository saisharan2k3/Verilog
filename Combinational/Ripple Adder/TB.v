module tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
  RCA_4bit p(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
  initial begin
  $dumpfile("RCA_4bit p.vcd");
  $dumpvars(0,tb);
        $monitor("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, cout);
  a = 4'b0000; b = 4'b0000; cin = 0; #10;
  a = 4'b0101; b = 4'b0011; cin = 0; #10;
  a = 4'b0111; b = 4'b1000; cin = 0; #10;
  a = 4'b1111; b = 4'b0001; cin = 0; #10;
  a = 4'b1001; b = 4'b0110; cin = 1; #10;
  $finish;
    end
    
endmodule
