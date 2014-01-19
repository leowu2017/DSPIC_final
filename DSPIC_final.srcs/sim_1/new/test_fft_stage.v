`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_fft_stage();
reg `BITS_RANGE in1_real,in_imag;
wire `BITS_RANGE out_real,out_imag;
reg clk,rst,en;

initial
begin
clk = 1'b 0;
$monitor("%0dns: out_r:%b"  , $stime, in_real);
$monitor("%0dns: out_i:%b"  , $stime, in_imag);

en = 1'b1;
rst = 1'b0;
#1
rst = 1'b1;
in_real = `NUM1;
in_imag = `NUM0;
#2
in_real = `NUM1;
in_imag = `NUM0;

#2
#2
#2
$finish();
end

always
	#1 clk = ~clk;
endmodule
