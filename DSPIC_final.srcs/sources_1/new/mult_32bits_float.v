`timescale 1ns / 1ps
`include "params.v"

module mult_32bits_float(out,in1,in2);
output [`BITS_LAST:0]out;
input [`BITS_LAST:0]in1,in2;
wire sign;

assign sign = in1[`BITS_LAST]^in2[`BITS_LAST];

endmodule
