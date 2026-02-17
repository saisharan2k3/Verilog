module tb;
    reg D0, D1, D2, D3;
    reg S1, S0;
    wire Y;
    mux4to1 P(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.S1(S1),.S0(S0),.Y(Y));

    initial begin
      $monitor("Time=%0t | S1=%b S0=%b | D0=%b D1=%b D2=%b D3=%b | Y=%b",
                 $time, S1, S0, D0, D1, D2, D3, Y);
      $dumpfile("mux4to1.vcd");
      $dumpvars(0,tb);

        D0=0; D1=1; D2=0; D3=1;
        S1=0; S0=0; #10;
        S1=0; S0=1; #10;
        S1=1; S0=0; #10;
        S1=1; S0=1; #10;
       $finish;
    end
endmodule
