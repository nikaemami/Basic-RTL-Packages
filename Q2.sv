`timescale 1ns/1ns
module mux4to1 (input a,b,c,d,s1,s0, output w);
	assign #(45,41) w =~s1?(~s0?a:b):(~s0?c:d);
endmodule
module bshifter4b (input [3:0]a,input s1,input s0, output [3:0]SHO);
	mux4to1 mux1(a[3],a[0],a[1],a[2],s1,s0,SHO[3]);
	mux4to1 mux2(a[2],a[3],a[0],a[1],s1,s0,SHO[2]);
	mux4to1 mux3(a[1],a[2],a[3],a[0],s1,s0,SHO[1]);
	mux4to1 mux4(a[0],a[1],a[2],a[3],s1,s0,SHO[0]);
endmodule
	
 