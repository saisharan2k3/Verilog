module t_latch(input T,EN,output reg Q);
initial Q=0;
always @(*) begin
if(EN) begin
if(T) Q=~Q;
end
end
endmodule
