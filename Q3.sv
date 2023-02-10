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
