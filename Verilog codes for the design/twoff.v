module twoff(d,ce,clk,q);
input ce,clk;
input [1:0]d;
output reg [1:0]q;
always@(posedge clk)
q<=ce?d:0;
endmodule

