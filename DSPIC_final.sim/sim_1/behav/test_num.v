`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_num();

reg [7:0]mem[3:0];
wire [7:0] a;

assign a=mem[0];

initial
begin

mem[0] = 8'b0000_0000;
#1
$display ("a  = %b", a);
$finish();
end

endmodule
