`timescale 1ns / 1ps

module add(X0, Y0, R);
    input [31:0] X0, Y0;
    reg [7:0] e1, e2, shi;
    reg [23:0] s1, s2;
    reg [24:0] s_temp;
    reg [30:0] R_temp;
    output reg [30:0] R;
    
    always @ (X0 or Y0)
    begin
        e1[7:0] = X0[30:23];
        e2[7:0] = Y0[30:23];
        s1[22:0] = X0[22:0];
        s2[22:0] = Y0[22:0];
        s1[23] = 1;
        s2[23] = 1;
        if (e1 > e2)
        begin
            shi = e1 - e2;
            s2 = s2 >> shi;
            R_temp[30:23] = e1 + 8'b0000_0001;
        end
        else
        begin
            shi = e2 - e1;
            s1 = s1 >> shi;
            R_temp[30:23] = e2 + 8'b0000_0001;
        end
        s_temp[24:0] = s1 + s2;
        if ( s_temp[24]==1 )
            R_temp[22:0] = s_temp[22:0] >> 1;
        R <= R_temp;
    end
endmodule