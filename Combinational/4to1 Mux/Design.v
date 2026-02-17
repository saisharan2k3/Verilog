module mux4to1 (
    input wire D0, D1, D2, D3,
    input wire S1, S0,         
    output wire Y              
);  
  assign 
    Y = ((~S1 & ~S0 & D0) |
        (~S1 &  S0 & D1) |
        ( S1 & ~S0 & D2) |
        ( S1 &  S0 & D3));

endmodule
