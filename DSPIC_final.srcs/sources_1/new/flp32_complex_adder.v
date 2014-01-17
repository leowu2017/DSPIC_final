`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/01/17 16:06:35
// Design Name: 
// Module Name: flp32_complex_adder
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


module flp32_complex_adder(A0,A1,B0,B1,C0,C1);
    
    input [31:0] A0,A1,B0,B1;
    output [31:0] C0,C1;
    wire [31:0] R0,R1;
    
    flp32_add_sub flp32_add0(A0,B0,C0,R0);
    flp32_add_sub flp32_add1(A1,B1,C1,R1);       
    

endmodule