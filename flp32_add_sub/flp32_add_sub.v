`timescale 1ns / 1ps

module flp32_add_sub(X0, Y0, Result_Add, Result_Sub);
    input [31:0] X0, Y0;
    wire [30:0] Ra, Rs;
    output reg [31:0] Result_Add, Result_Sub;
    
    add add_1(X0, Y0, Ra);
    sub sub_1(X0, Y0, Rs);
    
    always @ ( X0 or Y0 or Ra or Rs)
    if ( X0[31]==0 )
    begin
        if ( Y0[31]==0 )    // + +
        begin
            if ( X0[30:0]>=Y0[30:0] )
            begin
                Result_Add[31] = 0;
                Result_Add[30:0] = Ra[30:0];
                Result_Sub[31] = 0;
                Result_Sub[30:0] = Rs[30:0];
            end
            else
            begin
                Result_Add[31] = 0;
                Result_Add[30:0] = Ra[30:0];
                Result_Sub[31] = 1;
                Result_Sub[30:0] = Rs[30:0];
            end
        end
        else    // + -
        begin
            if ( X0[30:0]>=Y0[30:0] )
            begin
                Result_Add[31] = 0;
                Result_Add[30:0] = Rs[30:0];
                Result_Sub[31] = 0;
                Result_Sub[30:0] = Ra[30:0];
            end
            else
            begin
                Result_Add[31] = 1;
                Result_Add[30:0] = Rs[30:0];
                Result_Sub[31] = 0;
                Result_Sub[30:0] = Ra[30:0];
            end
        end
    end
    else
    begin
        if ( Y0[31]==0 )    //  - +
        begin
            if ( X0[30:0]>=Y0[30:0] )
            begin
                Result_Add[31] = 1;
                Result_Add[30:0] = Rs[30:0];
                Result_Sub[31] = 1;
                Result_Sub[30:0] = Ra[30:0];
            end
            else
            begin
                Result_Add[31] = 0;
                Result_Add[30:0] = Rs[30:0];
                Result_Sub[31] = 1;
                Result_Sub[30:0] = Ra[30:0];
            end
        end
        else    // - -
        begin
            if ( X0[30:0]>=Y0[30:0] )
            begin
                Result_Add[31] = 1;
                Result_Add[30:0] = Ra[30:0];
                Result_Sub[31] = 1;
                Result_Sub[30:0] = Rs[30:0];
            end
            else
            begin
                Result_Add[31] = 1;
                Result_Add[30:0] = Ra[30:0];
                Result_Sub[31] = 0;
                Result_Sub[30:0] = Rs[30:0];
            end
        end
    end
    
endmodule