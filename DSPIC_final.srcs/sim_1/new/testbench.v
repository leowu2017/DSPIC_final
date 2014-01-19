`timescale 1ns /1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module testbench;
    reg  `BITS_RANGE input_real[15:0], input_img[15:0];
    wire  `BITS_RANGE output_real[15:0], output_img[15:0];
    integer i;
   
    butterfly butterfly_1(input_real, input_img, output_real, output_img);
   
    initial
    begin
        for(i=0;i<`BITS;i=i+1)
            begin
                $monitor("%0dns: %d: %b"  , $stime, input_real[i]);
                $monitor("%0dns: %d: %b"  , $stime, input_imag[i]);
            end
        for(i=0;i<`BITS;i=i+1)
        begin
            input_real[i] = `NUM1;
            input_imag[i] = `NUM0;
        end
        #1
        $finish;
    end
endmodule