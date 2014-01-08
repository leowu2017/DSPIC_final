`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_mult_32bits_float();
reg `BITS_RANGE in1,in2;
wire `BITS_RANGE out;

mult_32bits_float m1(out,in1,in2);

initial
begin
in1 = `NUM0;
in2 = `NUM0;
$monitor("%0dns: A:%b"  , $stime, `NUM0);
$monitor("%0dns: R:%b"  , $stime, out);
#1
in1 = `NUM1;
in2 = `NUM1;
$monitor("%0dns: A:%b"  , $stime, `NUM1);
#1
in1 = `TEST_NUM1;
in2 = `TEST_NUM2;
$monitor("%0dns: A:%b"  , $stime, `TEST_NUM3);
#1
$finish();
end

endmodule
