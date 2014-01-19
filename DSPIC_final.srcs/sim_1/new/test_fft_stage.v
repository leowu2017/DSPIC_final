`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_fft_stage();
reg `BITS_RANGE in_real,in_imag;
wire `BITS_RANGE out_real,out_imag;
reg clk,rst,en;
wire flag;

fft_stage4 s4(out_real,out_imag,in_real,in_imag,flag,clk,en,rst);

initial
begin
clk = 1'b 0;
$monitor("%0dns: out_r:%b"  , $stime, in_real);
$monitor("%0dns: out_i:%b"  , $stime, in_imag);

en = 1'b1;
rst = 1'b0;
#2
in_real = `NUM1;
in_imag = `NUM0;
rst = 1'b1;
#2
in_real = `NUM1;
in_imag = `NUM0;

#8
$finish();
end

always
	#1 clk = ~clk;
endmodule
