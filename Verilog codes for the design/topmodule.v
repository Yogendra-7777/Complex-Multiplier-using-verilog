module topmodule(rst,ie,a_r,a_i,b_r,b_i,clk,p_r,p_i);
input clk,ie,rst,a_r,a_i,b_r,b_i;
output [1:0]p_r,p_i;
wire w1,w2,w3,w4,w5,w7,w8,w9,w10,w11,w12,w13;
wire [1:0]w6;
control_unit c1(.clk(clk),.ie(ie),.rst(rst),.a_sel(w7),.b_sel(w8),.pp1_ce(w9),.pp2_ce(w10),.sub(w13),.p_r_ce(w11),.p_i_ce(w12));
mux m1(.a(a_r),.b(a_i),.s(w7),.y(w1));
mux m2(.a(b_r),.b(b_i),.s(w8),.y(w2));
mult m3(.a(w1),.b(w2),.y(w3));
ff		f1(.d(w3),.ce(w9),.clk(clk),.q(w4));
ff		f2(.d(w3),.ce(w10),.clk(clk),.q(w5));
addorsub aos(.a(w4),.b(w5),.sub(w13),.y(w6));
twoff    f3(.d(w6),.ce(w11),.clk(clk),.q(p_r));
twoff    f4(.d(w6),.ce(w12),.clk(clk),.q(p_i));
endmodule


