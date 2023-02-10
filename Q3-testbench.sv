`timescale 1ns/1ns
module mux16to1_TB();
	logic [15:0]aa=16'd0,ss3=0,ss2=0,ss1=0,ss0=0;
	wire ww;
	mux16to1 CUT3(aa,ss3,ss2,ss1,ss0,ww);
	initial begin
	#300 aa=16'd19068;
	#300 ss0=1;
	#300 ss1=1;
	#300 ss2=1;ss0=0;
	#300 ss2=0;ss1=0;
	#300 $stop;
	end
endmodule
