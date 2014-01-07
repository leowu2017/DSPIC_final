`timescale 1ns / 1ps
`include "params.v"

module mult_32bits_float(out,in1,in2);
output `BITS_RANGE out;
input `BITS_RANGE in1,in2;
wire sign;

assign sign = in1[`SIGN_BITS_START]^in2[`SIGN_BITS_START];




endmodule
