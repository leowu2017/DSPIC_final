`timescale 1ns / 1ps

module test_LUT_atan_two_ith_inverse();
reg [3:0]in;
wire [8:0]out;

LUT_atan_two_ith_inverse l1(out,in);

initial
begin
    in = 4'd0;
    #1 in = 4'd1;
    #1 in = 4'd2;
    #1 $finish;
end

endmodule
