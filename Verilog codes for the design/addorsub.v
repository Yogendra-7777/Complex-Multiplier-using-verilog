module addorsub(a,b,sub,y);
input a,b,sub;
output [1:0]y;
assign y[0]=a^b;
assign y[1]=sub ? ((~a)&b):(a&b);
endmodule
