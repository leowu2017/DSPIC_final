`timescale 1ns / 1ps
`include "params.v"

module mult_32bits_float(out,in1,in2);
output `BITS_RANGE out;
input `BITS_RANGE in1,in2;
wire sign;
wire [`EXPONENT_BITS-1:0]exponent_add;
reg [`EXPONENT_BITS-1:0]exponent_result;
wire [`FRACTION_BITS+`FRACTION_BITS-1:0]fraction_mul;
wire [`FRACTION_BITS:0]fraction_add;
reg [`FRACTION_BITS-1:0]fraction_round,fraction_result;
wire carry;

assign out = {sign, exponent_result, fraction_result};

assign sign = in1[`SIGN_BITS_START] ^ in2[`SIGN_BITS_START];
assign exponent_add = in1`EXPONENT_BITS_RANGE + in2`EXPONENT_BITS_RANGE - `EXPONENT_BITS_BIAS;
assign fraction_mul = in1`FRACTION_BITS_RANGE * in2`FRACTION_BITS_RANGE;
assign fraction_add = fraction_round + in1`FRACTION_BITS_RANGE + in2`FRACTION_BITS_RANGE;
assign carry = fraction_add[`FRACTION_BITS];

always@(fraction_mul)
begin
    case(fraction_mul[`FRACTION_BITS-1])
    1'b1:fraction_round = fraction_mul[`FRACTION_BITS+`FRACTION_BITS-1:`FRACTION_BITS] + 1;
    1'b0:fraction_round = fraction_mul[`FRACTION_BITS+`FRACTION_BITS-1:`FRACTION_BITS];
    endcase
end

always@(fraction_add or carry)
begin
    case(carry)
    1'b1: fraction_result = fraction_add[`FRACTION_BITS-1:0] >> 1;
    1'b0: fraction_result = fraction_add[`FRACTION_BITS-1:0];
    endcase
end

always@(exponent_add or carry)
begin
    case(carry)
    1'b1: exponent_result = exponent_add + 1;
    1'b0: exponent_result = exponent_add;
    endcase
end

endmodule
