module control_unit(clk,ie,rst,a_sel,b_sel,pp1_ce,pp2_ce,sub,p_r_ce,p_i_ce);
input clk,ie,rst;
output reg a_sel,b_sel,pp1_ce,pp2_ce,sub,p_r_ce,p_i_ce;
parameter [2:0]step1=3'b000,step2=3'b001,step3=3'b010,step4=3'b011,step5=3'b100;
reg[2:0] pr_st,nxt_st;
always@(posedge clk or posedge rst)
begin
if(rst)
pr_st<=step1;
else
pr_st<=nxt_st;
end
always@(pr_st,ie)
begin
nxt_st=3'bx;
case(pr_st)
step1:
		if(!ie) 
		nxt_st=step1;
		 
		else 
		nxt_st=step2;
		
step2:
		nxt_st=step3;
		 
step3:
		nxt_st=step4;
		 
step4:
		nxt_st=step5;
		 
step5:
		nxt_st=step1;
		 
		
endcase
end
always@(pr_st)
begin
a_sel=0;b_sel=0;pp1_ce=0;pp2_ce=0;sub=0;p_r_ce=0;p_i_ce=0;
case(pr_st)
step1:begin pp1_ce=1;sub=1'bz;
 end
step2:begin a_sel=1;b_sel=1;pp2_ce=1;sub=1'bz;
 end
step3:begin b_sel=1;pp1_ce=1;sub=1;p_r_ce=1; end
step4:begin a_sel=1;pp2_ce=1;sub=1'bz;
 end
step5:begin a_sel=1'bz;b_sel=1'bz;
p_i_ce=1; end
endcase
end
endmodule