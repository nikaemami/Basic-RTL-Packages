`timescale 1ns/1ns
module mux4to1_TB();
	logic aa=0,bb=0,cc=0,dd=0,ss1=0,ss0=0;
	wire ww;
	mux4to1 CUT1(aa,bb,cc,dd,ss1,ss0,ww);
	initial begin
	#120 aa=1;
	#120 ss1=1;
	#120 ss0=1;
	#120 dd=1;
	#120 ss1=0;
	#120 $stop;
	end
endmodule
