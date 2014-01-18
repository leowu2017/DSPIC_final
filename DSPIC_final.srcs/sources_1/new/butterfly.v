`timescale 1ns / 1ps

module butterfly();

    input  [31:0][15:0] input_real, input_img;
    output [31:0][15:0] output_real, output_img;
    
    wire [31:0][15:0] real_stage2, img_stage2, real_stage3, img_stage3, real_stage4, img_stage4, real_stage5, img_stage5, real_stage6, img_stage6, real_stage7, img_stage7, real_stage8, img_stage8;    
    
    //stage2
    flp32_complex_adder adder2_0(input_real[0],input_img[0],input_real[8],input_img[8],real_stage2[0],img_stage2[0]);
    flp32_complex_adder adder2_1(input_real[1],input_img[1],input_real[9],input_img[9],real_stage2[1],img_stage2[1]);
    flp32_complex_adder adder2_2(input_real[2],input_img[2],input_real[10],input_img[10],real_stage2[2],img_stage2[2]);
    flp32_complex_adder adder2_3(input_real[3],input_img[3],input_real[11],input_img[11],real_stage2[3],img_stage2[3]);
    flp32_complex_adder adder2_4(input_real[4],input_img[4],input_real[12],input_img[12],real_stage2[4],img_stage2[4]);
    flp32_complex_adder adder2_5(input_real[5],input_img[5],input_real[13],input_img[13],real_stage2[5],img_stage2[5]);
    flp32_complex_adder adder2_6(input_real[6],input_img[6],input_real[14],input_img[14],real_stage2[6],img_stage2[6]);
    flp32_complex_adder adder2_7(input_real[7],input_img[7],input_real[15],input_img[15],real_stage2[7],img_stage2[7]);
    flp32_complex_subtracter subtracter2_8(input_real[0],input_img[0],input_real[8],input_img[8],real_stage2[8],img_stage2[8]);
    flp32_complex_subtracter subtracter2_9(input_real[1],input_img[1],input_real[9],input_img[9],real_stage2[9],img_stage2[9]);
    flp32_complex_subtracter subtracter2_10(input_real[2],input_img[2],input_real[10],input_img[10],real_stage2[10],img_stage2[10]);
    flp32_complex_subtracter subtracter2_11(input_real[3],input_img[3],input_real[11],input_img[11],real_stage2[11],img_stage2[11]);
    flp32_complex_subtracter subtracter2_12(input_real[4],input_img[4],input_real[12],input_img[12],real_stage2[12],img_stage2[12]);
    flp32_complex_subtracter subtracter2_13(input_real[5],input_img[5],input_real[13],input_img[13],real_stage2[13],img_stage2[13]);
    flp32_complex_subtracter subtracter2_14(input_real[6],input_img[6],input_real[14],input_img[14],real_stage2[14],img_stage2[14]);
    flp32_complex_subtracter subtracter2_15(input_real[7],input_img[7],input_real[15],input_img[15],real_stage2[15],img_stage2[15]);
    
    //stage3
    assign real_stage3[0:11] = real_stage2[0:11];
    assign img_stage3[0:11] = img_stage2[0:11];
    flp32_complex_multiplier mult3_12(real_stage2[12], img_stage2[12], 0, 2'b1_0111_1111_0000_0000_0000_0000_0000_000, real_stage3[12], img_stage3[12]);
    flp32_complex_multiplier mult3_13(real_stage2[13], img_stage2[13], 0, 2'b1_0111_1111_0000_0000_0000_0000_0000_000, real_stage3[13], img_stage3[13]);
    flp32_complex_multiplier mult3_14(real_stage2[14], img_stage2[14], 0, 2'b1_0111_1111_0000_0000_0000_0000_0000_000, real_stage3[14], img_stage3[14]);
    flp32_complex_multiplier mult3_15(real_stage2[15], img_stage2[15], 0, 2'b1_0111_1111_0000_0000_0000_0000_0000_000, real_stage3[15], img_stage3[15]);
    
    //stage4
    flp32_complex_adder adder4_0(real_stage3[0], img_stage3[0], real_stage3[4], img_stage3[4], real_stage4[0], img_stage4[0]);
    flp32_complex_adder adder4_1(real_stage3[1], img_stage3[1], real_stage3[5], img_stage3[5], real_stage4[1], img_stage4[1]);
    flp32_complex_adder adder4_2(real_stage3[2], img_stage3[2], real_stage3[6], img_stage3[6], real_stage4[2], img_stage4[2]);
    flp32_complex_adder adder4_3(real_stage3[3], img_stage3[3], real_stage3[7], img_stage3[7], real_stage4[3], img_stage4[3]);
    flp32_complex_subtracter subtracter4_4(real_stage3[0], img_stage3[0], real_stage3[4], img_stage3[4], real_stage4[4], img_stage4[4]);
    flp32_complex_subtracter subtracter4_5(real_stage3[1], img_stage3[1], real_stage3[5], img_stage3[5], real_stage4[5], img_stage4[5]);
    flp32_complex_subtracter subtracter4_6(real_stage3[2], img_stage3[2], real_stage3[6], img_stage3[6], real_stage4[6], img_stage4[6]);
    flp32_complex_subtracter subtracter4_7(real_stage3[3], img_stage3[3], real_stage3[7], img_stage3[7], real_stage4[7], img_stage4[7]);
    flp32_complex_adder adder4_8(real_stage3[8], img_stage3[8], real_stage3[12], img_stage3[12], real_stage4[8], img_stage4[8]);
    flp32_complex_adder adder4_9(real_stage3[9], img_stage3[9], real_stage3[13], img_stage3[13], real_stage4[9], img_stage4[9]);
    flp32_complex_adder adder4_10(real_stage3[10], img_stage3[10], real_stage3[14], img_stage3[14], real_stage4[10], img_stage4[10]);
    flp32_complex_adder adder4_11(real_stage3[11], img_stage3[11], real_stage3[15], img_stage3[15], real_stage4[11], img_stage4[11]);
    flp32_complex_subtracter subtracter4_12(real_stage3[8], img_stage3[8], real_stage3[12], img_stage3[12], real_stage4[12], img_stage4[12]);
    flp32_complex_subtracter subtracter4_13(real_stage3[9], img_stage3[9], real_stage3[13], img_stage3[13], real_stage4[13], img_stage4[13]);
    flp32_complex_subtracter subtracter4_14(real_stage3[10], img_stage3[10], real_stage3[14], img_stage3[14], real_stage4[14], img_stage4[14]);
    flp32_complex_subtracter subtracter4_15(real_stage3[11], img_stage3[11], real_stage3[15], img_stage3[15], real_stage4[15], img_stage4[15]);
    
    //stage5
    
    //stage6
    flp32_complex_adder adder6_0(real_stage5[0], img_stage5[0], real_stage5[2], img_stage5[2], real_stage6[0], img_stage6[0]);
    flp32_complex_adder adder6_1(real_stage5[1], img_stage5[1], real_stage5[3], img_stage5[3], real_stage6[1], img_stage6[1]);
    flp32_complex_subtracter subtracter6_2(real_stage5[0], img_stage5[0], real_stage5[2], img_stage5[2], real_stage6[2], img_stage6[2]);
    flp32_complex_subtracter subtracter6_3(real_stage5[1], img_stage5[1], real_stage5[3], img_stage5[3], real_stage6[3], img_stage6[3]);
    flp32_complex_adder adder6_4(real_stage5[4], img_stage5[4], real_stage5[6], img_stage5[6], real_stage6[4], img_stage6[4]);
    flp32_complex_adder adder6_5(real_stage5[5], img_stage5[5], real_stage5[7], img_stage5[7], real_stage6[5], img_stage6[5]);
    flp32_complex_subtracter subtracter6_6(real_stage5[4], img_stage5[4], real_stage5[6], img_stage5[6], real_stage6[6], img_stage6[6]);
    flp32_complex_subtracter subtracter6_7(real_stage5[5], img_stage5[5], real_stage5[7], img_stage5[7], real_stage6[7], img_stage6[7]);
    
    flp32_complex_adder adder6_8(real_stage5[8], img_stage5[8], real_stage5[10], img_stage5[10], real_stage6[8], img_stage6[8]);
    flp32_complex_adder adder6_9(real_stage5[9], img_stage5[9], real_stage5[11], img_stage5[11], real_stage6[9], img_stage6[9]);
    flp32_complex_subtracter subtracter6_10(real_stage5[8], img_stage5[8], real_stage5[10], img_stage5[10], real_stage6[10], img_stage6[10]);
    flp32_complex_subtracter subtracter6_11(real_stage5[9], img_stage5[9], real_stage5[11], img_stage5[11], real_stage6[11], img_stage6[11]);
    flp32_complex_adder adder6_12(real_stage5[12], img_stage5[12], real_stage5[14], img_stage5[14], real_stage6[12], img_stage6[12]);
    flp32_complex_adder adder6_13(real_stage5[13], img_stage5[13], real_stage5[15], img_stage5[15], real_stage6[13], img_stage6[13]);
    flp32_complex_subtracter subtracter6_14(real_stage5[12], img_stage5[12], real_stage5[14], img_stage5[14], real_stage6[14], img_stage6[14]);
    flp32_complex_subtracter subtracter6_15(real_stage5[13], img_stage5[13], real_stage5[15], img_stage5[15], real_stage6[15], img_stage6[15]);
    
    //stage7
    
    //stage8
    flp32_complex_adder adder8_0(real_stage7[0], img_stage7[0], real_stage7[1], img_stage7[1], real_stage8[0], img_stage8[0]);
    flp32_complex_subtracter subtracter8_1(real_stage7[0], img_stage7[0], real_stage7[1], img_stage7[1], real_stage8[1], img_stage8[1]);
    
    flp32_complex_adder adder8_2(real_stage7[2], img_stage7[2], real_stage7[3], img_stage7[3], real_stage8[2], img_stage8[2]);
    flp32_complex_subtracter subtracter8_3(real_stage7[2], img_stage7[2], real_stage7[3], img_stage7[3], real_stage8[3], img_stage8[3]);
    
    flp32_complex_adder adder8_4(real_stage7[4], img_stage7[4], real_stage7[5], img_stage7[5], real_stage8[4], img_stage8[4]);
    flp32_complex_subtracter subtracter8_5(real_stage7[4], img_stage7[4], real_stage7[5], img_stage7[5], real_stage8[5], img_stage8[5]);
    
    flp32_complex_adder adder8_6(real_stage7[6], img_stage7[6], real_stage7[7], img_stage7[7], real_stage8[6], img_stage8[6]);
    flp32_complex_subtracter subtracter8_7(real_stage7[6], img_stage7[6], real_stage7[7], img_stage7[7], real_stage8[7], img_stage8[7]);
    
    flp32_complex_adder adder8_8(real_stage7[8], img_stage7[8], real_stage7[9], img_stage7[9], real_stage8[8], img_stage8[8]);
    flp32_complex_subtracter subtracter8_9(real_stage7[8], img_stage7[8], real_stage7[9], img_stage7[9], real_stage8[9], img_stage8[9]);
    
    flp32_complex_adder adder8_10(real_stage7[10], img_stage7[10], real_stage7[11], img_stage7[11], real_stage8[10], img_stage8[10]);
    flp32_complex_subtracter subtracter8_11(real_stage7[10], img_stage7[10], real_stage7[11], img_stage7[11], real_stage8[11], img_stage8[11]);
    
    flp32_complex_adder adder8_12(real_stage7[12], img_stage7[12], real_stage7[13], img_stage7[13], real_stage8[12], img_stage8[12]);
    flp32_complex_subtracter subtracter8_13(real_stage7[12], img_stage7[12], real_stage7[13], img_stage7[13], real_stage8[13], img_stage8[13]);
    
    flp32_complex_adder adder8_14(real_stage7[14], img_stage7[14], real_stage7[15], img_stage7[15], real_stage8[14], img_stage8[14]);
    flp32_complex_subtracter subtracter8_15(real_stage7[14], img_stage7[14], real_stage7[15], img_stage7[15], real_stage8[15], img_stage8[15]);
    
    

endmodule
