`timescale 1ns / 1ps
`include "params.v"

`define COUNTER_BITS 4

module LUT_twiddle_factor_control_units(twiddle_factor1_real,twiddle_factor1_imag,twiddle_factor2_real,twiddle_factor2_imag,twiddle_factor3_real,twiddle_factor3_imag,counter1,counter2,counter3);
output reg `BITS_RANGE twiddle_factor1_real,twiddle_factor1_imag,twiddle_factor2_real,twiddle_factor2_imag,twiddle_factor3_real,twiddle_factor3_imag;
input [`COUNTER_BITS-1:0] counter1,counter2,counter3;

// counter 1
always@(counter1)
begin
    case(counter1)
        `COUNTER_BITS'h0: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h1: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h2: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h3: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h4: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h5: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h6: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h7: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h8: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h9: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'ha: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'hb: twiddle_factor1_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'hc: twiddle_factor1_real = `BITS'b00000000000000000000000000000000; // W4
        `COUNTER_BITS'hd: twiddle_factor1_real = `BITS'b00000000000000000000000000000000; // W4
        `COUNTER_BITS'he: twiddle_factor1_real = `BITS'b00000000000000000000000000000000; // W4
        `COUNTER_BITS'hf: twiddle_factor1_real = `BITS'b00000000000000000000000000000000; // W4
    endcase
    case(counter1)
        `COUNTER_BITS'h0: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h1: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h2: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h3: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h4: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h5: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h6: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h7: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h8: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h9: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'ha: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'hb: twiddle_factor1_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'hc: twiddle_factor1_imag = `BITS'b10111111100000000000000000000000; // W4
        `COUNTER_BITS'hd: twiddle_factor1_imag = `BITS'b10111111100000000000000000000000; // W4
        `COUNTER_BITS'he: twiddle_factor1_imag = `BITS'b10111111100000000000000000000000; // W4
        `COUNTER_BITS'hf: twiddle_factor1_imag = `BITS'b10111111100000000000000000000000; // W4
    endcase
end

// counter 2
always@(counter2)
begin
    case(counter2)
        `COUNTER_BITS'h0: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h1: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h2: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h3: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h4: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h5: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h6: twiddle_factor2_real = `BITS'b00000000000000000000000000000000; // W4
        `COUNTER_BITS'h7: twiddle_factor2_real = `BITS'b00000000000000000000000000000000; // W4
        `COUNTER_BITS'h8: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h9: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'ha: twiddle_factor2_real = `BITS'b00111111001101010000010011110011; // W2
        `COUNTER_BITS'hb: twiddle_factor2_real = `BITS'b00111111001101010000010011110011; // W2
        `COUNTER_BITS'hc: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'hd: twiddle_factor2_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'he: twiddle_factor2_real = `BITS'b10111111001101010000010011110011; // W6
        `COUNTER_BITS'hf: twiddle_factor2_real = `BITS'b10111111001101010000010011110011; // W6
    endcase
    case(counter2)
        `COUNTER_BITS'h0: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h1: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h2: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h3: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h4: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h5: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h6: twiddle_factor2_imag = `BITS'b10111111100000000000000000000000; // W4
        `COUNTER_BITS'h7: twiddle_factor2_imag = `BITS'b10111111100000000000000000000000; // W4
        `COUNTER_BITS'h8: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h9: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'ha: twiddle_factor2_imag = `BITS'b10111111001101010000010011110011; // W2
        `COUNTER_BITS'hb: twiddle_factor2_imag = `BITS'b10111111001101010000010011110011; // W2
        `COUNTER_BITS'hc: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'hd: twiddle_factor2_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'he: twiddle_factor2_imag = `BITS'b10111111001101010000010011110011; // W6
        `COUNTER_BITS'hf: twiddle_factor2_imag = `BITS'b10111111001101010000010011110011; // W6
    endcase
end

// counter 3
always@(counter3)
begin
    case(counter3)
        `COUNTER_BITS'h0: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h1: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h2: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h3: twiddle_factor3_real = `BITS'b00000000000000000000000000000000; // W4
        `COUNTER_BITS'h4: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h5: twiddle_factor3_real = `BITS'b00111111001101010000010011110011; // W2
        `COUNTER_BITS'h6: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h7: twiddle_factor3_real = `BITS'b10111111001101010000010011110011; // W6
        `COUNTER_BITS'h8: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'h9: twiddle_factor3_real = `BITS'b00111111011011001000001101011110; // W1
        `COUNTER_BITS'ha: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'hb: twiddle_factor3_real = `BITS'b10111110110000111110111100010101; // W5
        `COUNTER_BITS'hc: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'hd: twiddle_factor3_real = `BITS'b00111110110000111110111100010101; // W3
        `COUNTER_BITS'he: twiddle_factor3_real = `BITS'b00111111100000000000000000000000; // W0
        `COUNTER_BITS'hf: twiddle_factor3_real = `BITS'b10111111011011001000001101011110; // W7
    endcase
    case(counter1)
        `COUNTER_BITS'h0: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h1: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h2: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h3: twiddle_factor3_imag = `BITS'b10111111100000000000000000000000; // W4
        `COUNTER_BITS'h4: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h5: twiddle_factor3_imag = `BITS'b10111111001101010000010011110011; // W2
        `COUNTER_BITS'h6: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h7: twiddle_factor3_imag = `BITS'b10111111001101010000010011110011; // W6
        `COUNTER_BITS'h8: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'h9: twiddle_factor3_imag = `BITS'b10111110110000111110111100010101; // W1
        `COUNTER_BITS'ha: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'hb: twiddle_factor3_imag = `BITS'b10111111011011001000001101011110; // W5
        `COUNTER_BITS'hc: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'hd: twiddle_factor3_imag = `BITS'b10111111011011001000001101011110; // W3
        `COUNTER_BITS'he: twiddle_factor3_imag = `BITS'b00000000000000000000000000000000; // W0
        `COUNTER_BITS'hf: twiddle_factor3_imag = `BITS'b10111110110000111110111100010101; // W7
    endcase
end

endmodule
