`timescale 1ns / 1ps
`define DIGIT 9

module mult_10bits(out,in1,in2);
output reg [9:0]out;
input [9:0]in1,in2;

reg [9:0]in1_c,in2_c;
wire [18:0]out_c;

always@(in1)
begin
    if(in1[`DIGIT] == 1'b1)
        in1_c = ~in1+1;
    else
        in1_c = in1;
end
always@(in2)
begin
    if(in2[`DIGIT] == 1'b1)
        in2_c = ~in2+1;
    else
        in2_c = in2;
end

assign out_c = in1_c*in2_c;

always@(in1 or in2 or in1_c or in2_c)
begin
    if(in1[`DIGIT]^in2[`DIGIT] == 1'b1)
        out = ~out_c[18:9]+1;
    else
        out = out_c[18:9];
end

endmodule
