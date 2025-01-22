// 8:3 encoder, gate level implementation.
`timescale 1ns / 1ps


module enc_eight_three(
    i_one, i_two, i_three, i_four, i_five, i_six, i_seven,
    a, b, c);
    
    input i_one, i_two, i_three, i_four, i_five, i_six, i_seven;
    output a, b, c;
    
    assign a = (i_four | i_five | i_six | i_seven);
    assign b = (i_two | i_three | i_six | i_seven);
    assign c = (i_one | i_three | i_five | i_seven);
endmodule

// `meta` isn't included here, cause I can't be arsed about a simple linter error for a basic thing.
