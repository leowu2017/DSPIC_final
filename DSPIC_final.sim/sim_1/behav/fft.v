`timescale 1ns / 1ps
`include "params.v"

`define COUNTER_BITS 4

module fft(out_real,out_imag,in_real,in_imag,finish,clk,en,rst);
output reg `BITS_RANGE out_real,out_imag;
input `BITS_RANGE in_real,in_imag;
output finish;
input clk,en,rst;
reg [`COUNTER_BITS-1:0]counter1,counter1_tmp,counter2,counter2_tmp,counter3,counter3_tmp,counter4,counter4_tmp
    ,mult1_o_real,mult1_o_imag,mult2_o_real,mult2_o_imag,mult3_o_real,mult3_o_imag
    ,twiddle_factor1_real,twiddle_factor1_imag,twiddle_factor2_real,twiddle_factor2_imag,twiddle_factor3_real,twiddle_factor3_imag;
wire flag1,flag2,flag3,flag4;
wire `BITS_RANGE s1_o_real,s1_o_imag,s2_o_real,s2_o_imag,s3_o_real,s3_o_imag,s4_o_real,s4_o_imag;

fft_stage1 s1(s1_o_real,s1_o_imag,in_real,in_imag,flag1,clk,en,rst);
fft_stage2 s2(s2_o_real,s2_o_imag,mult1_o_real,mult1_o_imag,flag2,clk,flag1,rst);
fft_stage3 s3(s3_o_real,s3_o_imag,mult2_o_real,mult2_o_imag,flag3,clk,flag2,rst);
fft_stage4 s4(s4_o_real,s4_o_imag,mult3_o_real,mult3_o_imag,flag4,clk,flag3,rst);

flp32_complex_multiplier m1(mult1_o_real,mult1_o_imag,s1_o_real,s1_o_imag,twiddle_factor1_real,twiddle_factor1_imag);
flp32_complex_multiplier m2(mult2_o_real,mult2_o_imag,s2_o_real,s2_o_imag,twiddle_factor2_real,twiddle_factor2_imag);
flp32_complex_multiplier m3(mult3_o_real,mult3_o_imag,s3_o_real,s3_o_imag,twiddle_factor3_real,twiddle_factor3_imag);

// Twiddle factor control units
// twiddle factor 1


// set output
always@(s4_o_real or s4_o_imag or en or rst)
begin
    if(~rst)
    begin
        out_real = `NUM0;
        out_imag = `NUM0;
    end
    else if(flag3 && counter <=`COUNTER_BITS'd15 && en)
    begin
        out_real = s4_o_real;
        out_imag = s4_o_imag;
    end
end

// counter 1
always@(counter1 or en or rst)
begin
    if(~rst)
        counter1_tmp = 0;
    else if(counter1<`COUNTER_BITS'd15 && en)
        counter1_tmp = counter1 + 1;
    else
        counter1_tmp = counter1;
end

always@(posedge clk or negedge rst)
begin
    if(~rst)
        counter1 <= 0;
    else
        counter1 <= counter1_tmp;
end
// counter 2
always@(counter2 or en or rst)
begin
    if(~rst)
        counter2_tmp = 0;
    else if(counter2<`COUNTER_BITS'd15 && flag1 && en)
        counter2_tmp = counter2 + 1;
    else
        counter2_tmp = counter2;
end

always@(posedge clk or negedge rst)
begin
    if(~rst)
        counter2 <= 0;
    else
        counter2 <= counter2_tmp;
end
// counter 3
always@(counter3 or en or rst)
begin
    if(~rst)
        counter3_tmp = 0;
    else if(counter3<`COUNTER_BITS'd15 && flag2 && en)
        counter3_tmp = counter3 + 1;
    else
        counter3_tmp = counter3;
end

always@(posedge clk or negedge rst)
begin
    if(~rst)
        counter3 <= 0;
    else
        counter3 <= counter3_tmp;
end
// counter 4
always@(counter4 or en or rst)
begin
    if(~rst)
        counter4_tmp = 0;
    else if(counter4<`COUNTER_BITS'd15 && flag3 && en)
        counter4_tmp = counter4 + 1;
    else
        counter4_tmp = counter4;
end

always@(posedge clk or negedge rst)
begin
    if(~rst)
        counter4 <= 0;
    else
        counter4 <= counter4_tmp;
end

endmodule
