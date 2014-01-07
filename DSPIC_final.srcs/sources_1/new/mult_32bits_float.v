`timescale 1ns / 1ps
`include "params.v"

module mult_32bits_float(out,in1,in2);
output `BITS_RANGE out;
input `BITS_RANGE in1,in2;
wire sign;
wire [`EXPONENT_BITS-1:0]exponent_add_result;
wire [`FRACTION_BITS+`FRACTION_BITS-1:0]fraction_mul_result;

assign out = {sign, exponent_add_result, fraction_mul_result[`FRACTION_BITS+`FRACTION_BITS-1:`FRACTION_BITS]};

assign sign = in1[`SIGN_BITS_START] ^ in2[`SIGN_BITS_START];
assign exponent_add_result = in1`EXPONENT_BITS_RANGE - `EXPONENT_BITS_BIAS + in2`EXPONENT_BITS_RANGE;
assign fraction_mul_result = in1`FRACTION_BITS_RANGE * in2`FRACTION_BITS_RANGE;

endmodule
