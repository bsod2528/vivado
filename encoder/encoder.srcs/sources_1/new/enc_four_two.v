// 4:2 encoder
`timescale 1ns / 1ps


module enc_four_two(a, b, meta, i_one, i_two, i_three, i_four);
    input i_one, i_two, i_three, i_four;
    output a, b, meta;
    
    assign a = (i_three | i_four);
    assign b = (i_two | i_four);
    assign meta = i_one | i_two | i_three | i_four; // not needed as per actual ecoder, but given for the sake of validation.  
endmodule

// According to actual encoder diagram, i_one isn't being used at all, due to linter errors you can just give
// `meta = i_one`. 
// What I've done is validating the outputs whether if the outputs are good and correct for the encoder;
// Checking if both aren't logic 0 inputs.