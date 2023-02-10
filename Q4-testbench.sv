`timescale 1ns/1ns
module bshifter16b_TBB();
	logic [15:0]aa=16'd0,ss3=0,ss2=0,ss1=0,ss0=0;
	wire [15:0]ww;
	bshifter16b CUT6(aa,ss3,ss2,ss1,ss0,ww);
	initial begin
	#300 aa=16'd19068;
	#300 ss0=1;
	#300 ss2=1;ss0=0;
	#300 ss2=1;ss1=1;
	#300 ss3=1;ss2=0;ss1=0;ss0=1;
	#300 $stop;
	end
endmodule