`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_mult_32bits_float();
reg [`BITS_LAST:0]in1,in2;
wire [`BITS_LAST:0]out;

mult_32bits_float m1(out,in1,in2);

initial
begin
in1 = `NUM1;
in2 = `NUM1;
#1
$finish();
end

endmodule
