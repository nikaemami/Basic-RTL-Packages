`timescale 1ns/1ns
module mux4to1 (input a,b,c,d,s1,s0, output w);
	assign #(45,41) w =~s1?(~s0?a:b):(~s0?c:d);
endmodule
