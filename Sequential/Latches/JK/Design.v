module jk_latch(input J,K,EN,output reg Q);
initial Q=0;
always @(*) begin
if(EN) begin
case({J,K})
2'b00: Q=Q;
2'b01: Q=0;
2'b10: Q=1;
2'b11: Q=~Q;
endcase
end
end
endmodule
