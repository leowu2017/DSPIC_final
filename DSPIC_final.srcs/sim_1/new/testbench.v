`timescale 1ns /1ps

module testbench;
   reg [31:0] X0, Y0;
   wire [31:0] Result_Add, Result_Sub;
   flp32_add_sub flp32_add_sub_1(X0, Y0, Result_Add, Result_Sub);
   initial
   begin
      //Y0 = 32'b0_1000_1000_0010_0001_1000_0000_0000_000;    //  579
      //X0 = 32'b0_1000_0111_1100_1000_0000_0000_0000_000;    //  456
      Y0 = 32'b0_1000_0001_1000_0000_0000_0000_0000_000;    //  6
      X0 = 32'b0_1000_0001_0100_0000_0000_0000_0000_000;    //  5
      #1
      $finish;
   end
endmodule