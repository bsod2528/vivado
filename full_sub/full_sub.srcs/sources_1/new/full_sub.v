// Full subtractor using the actual logic.
`timescale 1ns / 1ps


module full_sub(a, b, b_in, difference, b_out);
    input a, b, b_in;
    output difference, b_out;
    
    assign difference = (a ^ b ^ b_in);
    assign b_out = (~a & b) | (~a & b_in) | (b & b_in);
endmodule
