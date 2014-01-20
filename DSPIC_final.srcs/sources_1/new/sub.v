`timescale 1ns / 1ps

module sub(X0, Y0, R);
    input [31:0] X0, Y0;
    reg [7:0] e1, e2, shi;
    reg [23:0] s1, s2, s_temp;
    reg [30:0] R_temp;
    output reg [30:0] R;
    
    always @ (X0 or Y0)
    begin
        if ( X0[30:23]>=Y0[30:23] )
        begin
            e1[7:0] = X0[30:23];
            e2[7:0] = Y0[30:23];
            s1[23] = 1;
            s2[23] = 1;
            s1[22:0] = X0[22:0];
            s2[22:0] = Y0[22:0];
        end
        else
        begin
            e1[7:0] = Y0[30:23];
            e2[7:0] = X0[30:23];
            s1[23] = 1;
            s2[23] = 1;
            s1[22:0] = Y0[22:0];
            s2[22:0] = X0[22:0];
        end
        if (e1 >= e2)
        begin
            shi = e1 - e2;
            s2 = s2 >> shi;
            s_temp[23:0] = s1 - s2;
            R_temp[30:23] = e1[7:0];
            //R_temp[30:23] = e2[7:0] - shi - 8'b0000_00001;
        end
        else
        begin
            shi = e2 - e1;
            s1 = s1 >> shi;
            s_temp[23:0] = s2 - s1;
            R_temp[30:23] = e2[7:0];
            //R_temp[30:23] = e1[7:0] - shi - 8'b0000_00001;
        end
        
        if (s_temp[23]==1'b0)
        begin
            if (s_temp[22]==1'b1)
            begin
                s_temp = s_temp << 1;
                R_temp[30:23] = R_temp[30:23] - 8'b0000_0001;
            end
            else
            begin
                if (s_temp[21]==1'b1)
                begin
                    s_temp = s_temp << 2;
                    R_temp[30:23] = R_temp[30:23] - 8'b0000_0010;
                end
                else
                begin
                    if (s_temp[20]==1'b1)
                    begin
                        s_temp = s_temp << 3;
                        R_temp[30:23] = R_temp[30:23] - 8'b0000_0011;
                    end
                    else
                    begin
                        if (s_temp[19]==1'b1)
                        begin
                            s_temp = s_temp << 4;
                            R_temp[30:23] = R_temp[30:23] - 8'b0000_0100;
                        end
                        else
                        begin
                            if (s_temp[18]==1'b1)
                            begin
                                s_temp = s_temp << 5;
                                R_temp[30:23] = R_temp[30:23] - 8'b0000_0101;
                            end
                            else
                            begin
                                if (s_temp[17]==1'b1)
                                begin
                                    s_temp = s_temp << 6;
                                    R_temp[30:23] = R_temp[30:23] - 8'b0000_0110;
                                end
                                else
                                begin
                                    if (s_temp[16]==1'b1)
                                    begin
                                        s_temp = s_temp << 7;
                                        R_temp[30:23] = R_temp[30:23] - 8'b0000_0111;
                                    end
                                    else
                                    begin
                                        if (s_temp[15]==1'b1)
                                        begin
                                            s_temp = s_temp << 8;
                                            R_temp[30:23] = R_temp[30:23] - 8'b0000_1000;
                                        end
                                        else
                                        begin
                                            if (s_temp[14]==1'b1)
                                            begin
                                                s_temp = s_temp << 9;
                                                R_temp[30:23] = R_temp[30:23] - 8'b0000_1001;
                                            end
                                            else
                                            begin
                                                if (s_temp[13]==1'b1)
                                                begin
                                                    s_temp = s_temp << 10;
                                                    R_temp[30:23] = R_temp[30:23] - 8'b0000_1010;
                                                end
                                                else
                                                begin
                                                    if (s_temp[12]==1'b1)
                                                    begin
                                                        s_temp = s_temp << 11;
                                                        R_temp[30:23] = R_temp[30:23] - 8'b0000_1011;
                                                    end
                                                    else
                                                    begin
                                                        if (s_temp[11]==1'b1)
                                                        begin
                                                            s_temp = s_temp << 12;
                                                            R_temp[30:23] = R_temp[30:23] - 8'b0000_1100;
                                                        end
                                                        else
                                                        begin
                                                            if (s_temp[10]==1'b1)
                                                            begin
                                                                s_temp = s_temp << 13;
                                                                R_temp[30:23] = R_temp[30:23] - 8'b0000_1101;
                                                            end
                                                            else
                                                            begin
                                                                if (s_temp[9]==1'b1)
                                                                begin
                                                                    s_temp = s_temp << 14;
                                                                    R_temp[30:23] = R_temp[30:23] - 8'b0000_1110;
                                                                end
                                                                else
                                                                begin
                                                                    if (s_temp[8]==1'b1)
                                                                    begin
                                                                        s_temp = s_temp << 15;
                                                                        R_temp[30:23] = R_temp[30:23] - 8'b0000_1111;
                                                                    end
                                                                    else
                                                                    begin
                                                                        if (s_temp[7]==1'b1)
                                                                        begin
                                                                            s_temp = s_temp << 16;
                                                                            R_temp[30:23] = R_temp[30:23] - 8'b0001_0000;
                                                                        end
                                                                        else
                                                                        begin
                                                                            if (s_temp[6]==1'b1)
                                                                            begin
                                                                                s_temp = s_temp << 17;
                                                                                R_temp[30:23] = R_temp[30:23] - 8'b0001_0001;
                                                                            end
                                                                            else
                                                                            begin
                                                                                if (s_temp[5]==1'b1)
                                                                                begin
                                                                                    s_temp = s_temp << 18;
                                                                                    R_temp[30:23] = R_temp[30:23] - 8'b0001_0010;
                                                                                end
                                                                                else
                                                                                begin
                                                                                    if (s_temp[4]==1'b1)
                                                                                    begin
                                                                                        s_temp = s_temp << 19;
                                                                                        R_temp[30:23] = R_temp[30:23] - 8'b0001_0011;
                                                                                    end
                                                                                    else
                                                                                    begin
                                                                                        if (s_temp[3]==1'b1)
                                                                                        begin
                                                                                            s_temp = s_temp << 20;
                                                                                            R_temp[30:23] = R_temp[30:23] - 8'b0001_0100;
                                                                                        end
                                                                                        else
                                                                                        begin
                                                                                            if (s_temp[2]==1'b1)
                                                                                            begin
                                                                                                s_temp = s_temp << 21;
                                                                                                R_temp[30:23] = R_temp[30:23] - 8'b0001_0101;
                                                                                            end
                                                                                            else
                                                                                            begin
                                                                                                if (s_temp[1]==1'b1)
                                                                                                begin
                                                                                                    s_temp = s_temp << 22;
                                                                                                    R_temp[30:23] = R_temp[30:23] - 8'b0001_0110;
                                                                                                end
                                                                                                else
                                                                                                    R_temp[30:23] = 8'b0000_0000;
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        R_temp[22:0] = s_temp[22:0];
        /*
//  0
        if (e1[7:0] == 8'b0000_0000)
        begin
            if (s1[22:0] == 23'b0000_0000_0000_0000_0000_000)
            begin
                if (X0>Y0)
                    R_temp = Y0;
                else
                    R_temp = X0;
            end
        end
        if (e2[7:0] == 8'b0000_0000)
        begin
            if (s2[22:0] == 23'b0000_0000_0000_0000_0000_000)
            begin
                if (X0>Y0)
                    R_temp = X0;
                else
                    R_temp = Y0;
            end
        end
        if (e1==e2)
        begin
            if (s1==s2)
                R_temp = 31'b0000_0000_0000_0000_0000_0000_0000_000;  
        end
//
*/
        R <= R_temp;
    end
endmodule