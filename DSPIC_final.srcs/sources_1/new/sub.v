`timescale 1ns / 1ps

module sub(X0, Y0, R);
    input [31:0] X0, Y0;
    reg [7:0] e1, e2, shi;
    reg [23:0] s1, s2, s_temp;
    reg [30:0] R_temp;
    output reg [30:0] R;
    
    always @ (X0 or Y0)
    begin
        if ( X0>=Y0 )
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
            if (s1>s2)
            begin
                s_temp[23:0] = s1 - s2;
            end
            else
            begin
                s_temp[23:0] = s2 - s1;
            end
            R_temp[30:23] = e2[7:0] - shi - 8'b0000_00001;
        end
        else
        begin
            shi = e2 - e1;
            s1 = s1 >> shi;
            s_temp[23:0] = s2 - s1;
            R_temp[30:23] = e1[7:0] - shi - 8'b0000_00001;
        end
        
        if (shi==8'b0000_0000)
            R_temp[30:23] = R_temp[30:23] - 8'b0000_0001;
        if (s_temp[23]==1'b0)
        begin
            if (s_temp[22]==1'b1)
                s_temp = s_temp << 1;
            else
            begin
                if (s_temp[21]==1'b1)
                    s_temp = s_temp << 2;
                else
                begin
                    if (s_temp[20]==1'b1)
                        s_temp = s_temp << 3;
                    else
                    begin
                        if (s_temp[19]==1'b1)
                            s_temp = s_temp << 4;
                        else
                        begin
                            if (s_temp[18]==1'b1)
                                s_temp = s_temp << 5;
                            else
                            begin
                                if (s_temp[17]==1'b1)
                                    s_temp = s_temp << 6;
                                else
                                begin
                                    if (s_temp[16]==1'b1)
                                        s_temp = s_temp << 7;
                                    else
                                    begin
                                        if (s_temp[15]==1'b1)
                                            s_temp = s_temp << 8;
                                        else
                                        begin
                                            if (s_temp[14]==1'b1)
                                                s_temp = s_temp << 9;
                                            else
                                            begin
                                                if (s_temp[13]==1'b1)
                                                    s_temp = s_temp << 10;
                                                else
                                                begin
                                                    if (s_temp[12]==1'b1)
                                                        s_temp = s_temp << 11;
                                                    else
                                                    begin
                                                        if (s_temp[11]==1'b1)
                                                            s_temp = s_temp << 12;
                                                        else
                                                        begin
                                                            if (s_temp[10]==1'b1)
                                                                s_temp = s_temp << 13;
                                                            else
                                                            begin
                                                                if (s_temp[9]==1'b1)
                                                                    s_temp = s_temp << 14;
                                                                else
                                                                begin
                                                                    if (s_temp[8]==1'b1)
                                                                        s_temp = s_temp << 15;
                                                                    else
                                                                    begin
                                                                        if (s_temp[7]==1'b1)
                                                                            s_temp = s_temp << 16;
                                                                        else
                                                                        begin
                                                                            if (s_temp[6]==1'b1)
                                                                                s_temp = s_temp << 17;
                                                                            else
                                                                            begin
                                                                                if (s_temp[5]==1'b1)
                                                                                    s_temp = s_temp << 18;
                                                                                else
                                                                                begin
                                                                                    if (s_temp[4]==1'b1)
                                                                                        s_temp = s_temp << 19;
                                                                                    else
                                                                                    begin
                                                                                        if (s_temp[3]==1'b1)
                                                                                            s_temp = s_temp << 20;
                                                                                        else
                                                                                        begin
                                                                                            if (s_temp[2]==1'b1)
                                                                                                s_temp = s_temp << 21;
                                                                                            else
                                                                                            begin
                                                                                                if (s_temp[1]==1'b1)
                                                                                                    s_temp = s_temp << 22;
                                                                                                else
                                                                                                    s_temp = s_temp << 23;
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
        R <= R_temp;
    end
endmodule