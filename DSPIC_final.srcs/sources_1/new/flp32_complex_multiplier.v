`timescale 1ns / 1ps

// out = in1 * in2

module flp32_complex_multiplier(out_real,out_imag,in1_real,in1_imag,in2_real,in2_imag);
    input [31:0]in1_real,in1_imag,in2_real,in2_imag;
    output [31:0]out_real,out_img;
    wire [31:0]in1_real_in2_real, in1_imag_in2_imag, in1_real_in2_imag, in1_imag_in2_real;
    
    mult_32bits_float m1(in1_real_in2_real, in1_real, in2_real);
    mult_32bits_float m2(in1_imag_in2_imag, in1_imag, in2_imag);
    mult_32bits_float m3(in1_real_in2_imag, in1_real, in2_imag);
    mult_32bits_float m4(in1_imag_in2_real, in1_imag, in2_real);
    flp32_add_sub s1(.X0(in1_real_in2_real),.Y0({~in1_imag_in2_imag[31],in1_imag_in2_imag[30:0]}),.Result_Add(out_real));
    flp32_add_sub a1(.X0(in1_real_in2_imag),.Y0(in1_imag_in2_real),.Result_Add(out_imag));
    
  
    
endmodule