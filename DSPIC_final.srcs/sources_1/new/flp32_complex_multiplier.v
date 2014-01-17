`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/01/17 16:22:46
// Design Name: 
// Module Name: flp32_complex_multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module flp32_complex_multiplier(A0,A1,B0,B1,C0,C1);
    
    input [31:0] A0,A1,B0,B1;
    output [31:0] C0,C1;
    wire [31:0] R0,R1;
    
    mult_32bits_float(C0_temp0,A0,B0);
    mult_32bits_float(C0_temp1,A1,B1);
    mult_32bits_float(C1_temp0,A1,B0);
    mult_32bits_float(C1_temp1,A0,B1);
    flp32_add_sub flp32_sub(C0_temp0,C0_temp1,R0,C0);
    flp32_add_sub flp32_add(C1_temp0,C1_temp1,C1,R1);
    
  
    
endmodule