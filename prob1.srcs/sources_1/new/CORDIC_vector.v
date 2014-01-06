`timescale 1ns / 1ps

module CORDIC_vector(z_out,x_in,y_in,clk,reset);
output [9:0]z_out;
input [9:0]x_in,y_in;
input clk,reset;
reg d; // positive/negative
reg [3:0]count,count_;
wire [3:0]count_max;
wire [15:0]mult_out1_,mult_out2_,LUT_out,error;
reg [15:0]mult_out1,mult_out2,two,two_,x,y,z,x_,y_,z_;

mult_16bits m1(mult_out1_,y,two);
mult_16bits m2(mult_out2_,x,two);
LUT_atan_two_ith_inverse l1(LUT_out,count);

assign count_max = 4'd12;
assign error = 16'b0000_0000_0100_0000;
assign z_out = z[15:6];

always@(y)
begin
    if(y[15] == 1)
    begin
        d = 1; // positive
    end
    else
    begin
        d = 0; // negative
    end
end

always@(two)
begin
    two_ = two >> 1;
end

always@(x or y or mult_out1_ or mult_out2 or reset)
begin
    if(reset == 0)
    begin
        mult_out1 = y;
        mult_out2 = x;
    end
    else
    begin
        mult_out1 = mult_out1_;
        mult_out2 = mult_out2_;
    end
end

always@(x or y or z or mult_out1 or mult_out2 or LUT_out or d or error)
begin
    if((y[15]==0 & y<error) | (y[15]==1 & ~y+1<error))
    begin
        x_ = x;
        y_ = y;
        z_ = z;
    end
    else if(d == 1)
    begin
        x_ = x - mult_out1;
        y_ = y + mult_out2;
        z_ = z - LUT_out;
    end
    else
    begin
        x_ = x + mult_out1;
        y_ = y - mult_out2;
        z_ = z + LUT_out;
    end
end

always@(count or reset)
begin
    if(reset == 0)
        count_ = 0;
    else if(count >= count_max)
        count_ = 0;
    else
        count_ = count+1;
end

always@(posedge clk or negedge reset)
begin
    if(reset ==0)
    begin
        two <= 16'b1000_0000_0000_0000;
        x <= {x_in,6'b000_000};
        y <= {y_in,6'b000_000};
        z <= 0;
        count <= 0;
    end
    else
    begin
        two <= two_;
        x <= x_;
        y <= y_;
        z <= z_;
        count <= count_;
    end
end

endmodule
