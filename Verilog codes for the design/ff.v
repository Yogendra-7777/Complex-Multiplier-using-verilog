module ff(d,ce,clk,q);
input d,ce,clk;
output reg q;
always@(posedge clk)
q<=ce?d:0;
endmodule