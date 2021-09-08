module test1(x,y,right,left,a,b,sw_9,sw_8,m1);
	input x,y,sw_9,sw_8;
	output left,right,a,b,m1;
	reg left,right,a,b,m1;
	always@(x or y)
	begin
		right=0;
		left=0;
		a=x;
		b=y;
		if(x==1 && y==0)
			right = 1;
		if(x==0 && y==1)
			left = 1;
		if(x==0 && y==0)
		begin
			right=1;
			left=1;
		end
	end
	initial begin
		m1 = 0;
		#10 m1 = 1;
		#50 m1 = 0;
	end
endmodule 