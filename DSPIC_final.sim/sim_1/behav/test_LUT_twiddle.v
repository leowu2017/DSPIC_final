`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_LUT_twiddle();
reg [`STAGE:0] index;
wire `BITS_RANGE real_part,imag_part;

LUT_twiddle l1(real_part,imag_part,index);

initial
begin
$monitor("%0dns: R:%b", $stime, real_part);
$monitor("%0dns: I:%b", $stime, imag_part);

index = `STAGE'd0;
#1

$finish();
end

endmodule
