`timescale 1ns/1ns
module mux4to1 (input a,b,c,d,s1,s0, output w);
	assign #(45,41) w =~s1?(~s0?a:b):(~s0?c:d);
endmodule
module mux16to1 (input [15:0]d,input s3,s2,s1,s0, output w);
	wire [3:0]c;
	mux4to1 mux1(d[15],d[14],d[13],d[12],s1,s0,c[0]);
	mux4to1 mux2(d[11],d[10],d[9],d[8],s1,s0,c[1]);
	mux4to1 mux3(d[7],d[6],d[5],d[4],s1,s0,c[2]);
	mux4to1 mux4(d[3],d[2],d[1],d[0],s1,s0,c[3]);
	mux4to1 mux5(c[0],c[1],c[2],c[3],s3,s2,w);
endmodule
module bshifter16b (input [15:0]a,input s3,s2,s1,s0, output [15:0]SHO);
	mux16to1 mux1({a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14]},s3,s2,s1,s0,SHO[15]);
	mux16to1 mux2({a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13]},s3,s2,s1,s0,SHO[14]);
	mux16to1 mux3({a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12]},s3,s2,s1,s0,SHO[13]);
	mux16to1 mux4({a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11]},s3,s2,s1,s0,SHO[12]);
	mux16to1 mux5({a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10]},s3,s2,s1,s0,SHO[11]);
	mux16to1 mux6({a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]},s3,s2,s1,s0,SHO[10]);
	mux16to1 mux7({a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8]},s3,s2,s1,s0,SHO[9]);
	mux16to1 mux8({a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]},s3,s2,s1,s0,SHO[8]);
	mux16to1 mux9({a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5],a[6]},s3,s2,s1,s0,SHO[7]);
	mux16to1 mux10({a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4],a[5]},s3,s2,s1,s0,SHO[6]);
	mux16to1 mux11({a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3],a[4]},s3,s2,s1,s0,SHO[5]);
	mux16to1 mux12({a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2],a[3]},s3,s2,s1,s0,SHO[4]);
	mux16to1 mux13({a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1],a[2]},s3,s2,s1,s0,SHO[3]);
	mux16to1 mux14({a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0],a[1]},s3,s2,s1,s0,SHO[2]);
	mux16to1 mux15({a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[0]},s3,s2,s1,s0,SHO[1]);
	mux16to1 mux16({a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15]},s3,s2,s1,s0,SHO[0]);
endmodule
