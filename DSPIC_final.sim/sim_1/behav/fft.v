`timescale 1ns / 1ps
`include "params.v"

module fft(out_real,out_imag,in_real,in_imag,finish,clk,rst);
output `BITS_RANGE out_real,out_imag;
input `BITS_RANGE in_real,in_imag;
output finish;
input clk,rst;
reg `BITS_RANGE delay_8_real[7:0],delay_8_imag[7:0],delay_8_tmp_real[7:0],delay_8_tmp_imag[7:0]
    ,delay_4_real[3:0],delay_4_imag[3:0]
    ,delay_2_real[1:0],delay_2_imag[1:0]
    ,delay_1_real,delay_1_imag;

wire `BITS_RANGE butterfly_8_o1_real,butterfly_8_o1_imag, butterfly_8_o2_real,butterfly_8_o2_imag;

integer i;

butterfly b1(butterfly_8_o1_real,butterfly_8_o1_imag,butterfly_8_o2_real,butterfly_8_o2_imag,delay_8_real[7]`BITS_RANGE,delay_8_imag[7]`BITS_RANGE,in_real,in_imag);

// 8-delay shift
always@(in_real or in_imag or rst)
begin
    if(~rst)
    begin
        for(i=0;i<8;i=i+1)
        begin
            delay_8_tmp_real[i] = `NUM0;
            delay_8_tmp_imag[i] = `NUM0;
        end
    end
    else
    begin
        for(i=0;i<7;i=i+1)
        begin
            delay_8_tmp_real[i+1] = delay_8_tmp_real[i];
            delay_8_tmp_imag[i+1] = delay_8_tmp_imag[i]; 
        end
        delay_8_tmp_real[0] = butterfly_8_o1_real;
        delay_8_tmp_imag[0] = butterfly_8_o1_imagl;
    end
end
always@(posedge clk or negedge rst)
begin
    if(~rst)
    begin
        for(i=0;i<8;i=i+1)
        begin
            delay_8_real[i] <= `NUM0;
            delay_8_imag[i] <= `NUM0;
        end
    end
    else
    begin
        for(i=0;i<8;i=i+1)
        begin
            delay_8_real[i] <= delay_8_tmp_real[i];
            delay_8_imag[i] <= delay_8_tmp_imag[i];
        end
    end
end

endmodule
