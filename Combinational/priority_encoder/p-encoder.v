module enc(
  input y3,y2,y1,y0,
  output reg a1,a0,v);
always @(*) begin 
       if(y3) begin
         a1=1; a0=1; v=1;
       end
       else if (y2) begin
         a1=1; a0=0; v=1;
       end
       else if (y1) begin
         a1=0; a0=1; v=1;
       end
       else if (y0) begin
         a1=0; a0=1; v=1;
       end 
       else begin
         a1=0; a0=0; v=0;
       end
     end
endmodule

