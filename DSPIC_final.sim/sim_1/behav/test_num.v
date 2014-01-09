`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_num();

wire [1:0]r;

assign r = {1'b1,1'b0}-{1'b0,1'b1};

initial
begin
$display("%b",r);
$finish();
end

endmodule
