`timescale 1ns / 1ps
`timescale 1ns / 1ps
`include "params_sim.v"
`include "../../sources_1/new/params.v"

module test_flp32_add_sub();
    reg `BITS_RANGE X0, Y0;
    wire `BITS_RANGE Result_Add, Result_Sub;
    flp32_add_sub as1(X0, Y0, Result_Add, Result_Sub);
    
    initial
    begin
        $monitor("%0dns: R:%b"  , $stime, Result_Add);
        Y0 = 32'b0_1000_1000_0010_0001_1000_0000_0000_000;    //  579
        X0 = 32'b0_1000_0111_1100_1000_0000_0000_0000_000;    //  456
        #1
        Y0 = `NUM6;
        X0 = `NUM5;
        #1
        $finish;
    end
endmodule
