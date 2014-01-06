`timescale 1ns / 1ps

module test_CORDIC_vector();
reg [9:0] x,y;
wire [9:0] z;
reg clk,reset;

CORDIC_vector c1(z,x,y,clk,reset);

initial
begin
clk = 0;
// (0.25,0.25)
reset = 0;
x = 10'b00100_00000; 
y = 10'b00100_00000;
#1 // start
reset = 1;
#3 // finish
// (0.25,0)
reset = 0;
x = 10'b00100_00000;
y = 10'b00000_00000;
#1 // start
reset = 1;
#3 // finish
// (0,0.25)
reset = 0;
x = 10'b00000_00000;
y = 10'b00100_00000;
#1 // start
reset = 1;
#19 // finish


$finish;
end

always
    #1 clk = !clk;

endmodule
