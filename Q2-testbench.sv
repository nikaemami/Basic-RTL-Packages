`timescale 1ns/1ns
module bshifter4b_TB();
	logic [3:0]aa=4'd0,ss1=0,ss0=0;
	wire [3:0]ww;
	bshifter4b CUT2(aa,ss1,ss0,ww);
	initial begin
	#120 aa=4'd7;
	#120 ss1=1;
	#120 aa=4'd11;
	#120 ss0=1;
	#120 ss1=0;
	#120 aa=4'd0;
	#120 $stop;
	end
endmodule
