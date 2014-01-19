`timescale 1ns / 1ps

module flp32_complex_adder(out_real,out_imag,in1_real,in1_imag,in2_real,in2_imag);
    output [31:0]out_real,out_imag;
    input [31:0]in1_real,in1_imag,in2_real,in2_imag;
    
    flp32_add_sub a_real(.X0(in1_real),.Y0(in2_real),.Result_Add(out_real));
    flp32_add_sub a_imag(.X0(in1_imag),.Y0(in2_imag),.Result_Add(out_imag));

endmodule
