`timescale 1ns / 1ps

module test_mult_10bits();
reg [9:0]in1,in2;
wire [9:0]out;

mult_10bits m1(out,in1,in2);

initial
begin
    in1 = 10'b01000_00000;
    in2 = 10'b01000_00000;
#1
    in1 = 10'b11111_11111;
    in2 = 10'b11111_11111;
#1 $finish;
end
endmodule
