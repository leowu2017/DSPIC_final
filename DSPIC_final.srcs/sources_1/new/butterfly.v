`timescale 1ns / 1ps

// out_i = in_i + in_N
// out_N = in_i - in_N;

module butterfly(out_i_real,out_i_imag,out_N_real,out_N_imag,in_i_real,in_i_imag,in_N_real,in_N_imag);

output [31:0]out_i_real,out_i_imag,out_N_real,out_N_imag;
input [31:0]in_i_real,in_i_imag,in_N_real,in_N_imag;

flp32_complex_adder a(out_i_real,out_i_imag,in_i_real,in_i_imag,in_N_real,in_N_imag);
flp32_complex_subtracter s(out_N_real,out_N_imag,in_i_real,in_i_imag,in_N_real,in_N_imag);

endmodule
