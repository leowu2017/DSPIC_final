`timescale 1ns / 1ps
`include "params.v"

`define POINTS 2
`define POINTS_HALF 1
`define DELAY 1
`define COUNT_TO 3
`define COUNTER_BITS 2

module fft_stage4(out_real,out_imag,in_real,in_imag,flag,clk,en,rst);
output reg `BITS_RANGE out_real,out_imag;
input `BITS_RANGE in_real,in_imag;
output reg flag;
input clk,en,rst;

reg `BITS_RANGE delay1_real[`DELAY-1:0],delay1_imag[`DELAY-1:0],delay1_tmp_real[`DELAY-1:0],delay1_tmp_imag[`DELAY-1:0]
	,delay2_real[`DELAY-1:0],delay2_imag[`DELAY-1:0],delay2_tmp_real[`DELAY-1:0],delay2_tmp_imag[`DELAY-1:0];
reg `BITS_RANGE out_tmp_real, out_tmp_imag;
reg [`COUNTER_BITS-1:0]counter,counter_tmp;
reg flag_tmp;
integer i;

butterfly b1(butterfly_o1_real,butterfly_o1_imag,butterfly_o2_real,butterfly_o2_imag,delay1_real[`DELAY-1],delay1_imag[`DELAY-1],in_real,in_imag);

// counter
always@(counter or en or rst)
begin
	if(~rst)
		counter_tmp = `COUNTER_BITS'd0;
	else if(counter<`COUNTER_BITS'd`COUNT_TO && en)
		counter_tmp = counter+1;
	else
		counter_tmp = counter;
end

always@(posedge clk or negedge rst)
begin
	if(~rst)
		counter <= counter_tmp;
	else
		counter <= counter_tmp;
end

// flag
always@(counter or rst or en)
begin
	if(~rst)
		flag_tmp = 1'b0;
	else if(counter>=`COUNTER_BITS'd`DELAY && en)
		flag_tmp = 1'b1;
	else
		flag_tmp = flag;
end

// delay shift 1
always@(delay1_tmp_real or delay1_tmp_imag or butterfly_o1_real or butterfly_o1_imag or in_real or in_imag or en or rst)
begin
    if(~rst)
    begin
        for(i=0;i<`DELAY;i=i+1)
        begin
            delay1_tmp_real[i] = `NUM0;
            delay1_tmp_imag[i] = `NUM0;
        end
    end
    else if(en)
    begin
        for(i=0;i<`DELAY-1;i=i+1)
        begin
            delay1_tmp_real[i+1] = delay1_tmp_real[i];
            delay1_tmp_imag[i+1] = delay1_tmp_imag[i]; 
        end
        delay1_tmp_real[0] = butterfly_o1_real;
        delay1_tmp_imag[0] = butterfly_o1_imag;
    end
	else
	begin
		for(i=0;i<`DELAY;i=i+1)
        begin
            delay1_tmp_real[i] = delay1_real[i];
            delay1_tmp_imag[i] = delay1_imag[i];
        end
	end
end

always@(posedge clk or negedge rst)
begin
	if(~rst)
	begin
		for(i=0;i<`DELAY;i=i+1)
        begin
            delay1_real[i] <= `BITS'd0;
            delay1_imag[i] <= `BITS'd0;
        end
	end
	else
	begin
		for(i=0;i<`DELAY;i=i+1)
        begin
            delay1_real[i] <= delay1_tmp_real[i];
            delay1_imag[i] <= delay1_tmp_imag[i];
        end
	end
end

// delay shift 2
always@(delay2_tmp_real or delay2_tmp_imag or butterfly_o2_real or butterfly_o2_imag or in_real or in_imag or en or rst)
begin
    if(~rst)
    begin
        for(i=0;i<`DELAY;i=i+1)
        begin
            delay2_tmp_real[i] = `NUM0;
            delay2_tmp_imag[i] = `NUM0;
        end
    end
    else if(en)
    begin
        for(i=0;i<`DELAY-1;i=i+1)
        begin
            delay2_tmp_real[i+1] = delay2_tmp_real[i];
            delay2_tmp_imag[i+1] = delay2_tmp_imag[i]; 
        end
        delay2_tmp_real[0] = butterfly_o2_real;
        delay2_tmp_imag[0] = butterfly_o2_imag;
    end
	else
	begin
		for(i=0;i<`DELAY;i=i+1)
        begin
            delay2_tmp_real[i] = delay2_real[i];
            delay2_tmp_imag[i] = delay2_imag[i];
        end
	end
end

always@(posedge clk or negedge rst)
begin
	if(~rst)
	begin
		for(i=0;i<`DELAY;i=i+1)
        begin
            delay2_real[i] <= `BITS'd0;
            delay2_imag[i] <= `BITS'd0;
        end
	end
	else
	begin
		for(i=0;i<`DELAY;i=i+1)
        begin
            delay2_real[i] <= delay2_tmp_real[i];
            delay2_imag[i] <= delay2_tmp_imag[i];
        end
	end
end

// commutator
always@(butterfly_o1_real or butterfly_o1_imag or delay2_real or delay2_imag or out_real or out_imag or en or rst)
begin
	if(~rst)
	begin
		out_tmp_real = `BITS'd0;
		out_tmp_imag = `BITS'd0;
	end
	else if(counter<=`COUNTER_BITS'd`POINTS_HALF && en)
	begin
		out_tmp_real = butterfly_o1_real;
		out_tmp_imag = butterfly_o1_imag;
	end
	else if(counter<=`COUNTER_BITS'd`COUNT_TO && en)
	begin
		out_tmp_real = delay2_real[`DELAY-1];
		out_tmp_imag = delay2_imag[`DELAY-1];
	end
	else
	begin
		out_tmp_real = out_real;
		out_tmp_imag = out_imag;
	end
end

always@(posedge clk or negedge rst)
begin
	out_real <= out_tmp_real;
	out_imag <= out_tmp_imag;
end

endmodule
