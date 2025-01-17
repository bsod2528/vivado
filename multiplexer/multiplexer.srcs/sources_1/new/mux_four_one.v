// 4:1 MUX, gate level implementation.
`timescale 1ns / 1ps


module mux_four_one(i_one, i_two, i_three, i_four, s_one, s_two, out);
    input i_one, i_two, i_three, i_four, s_one, s_two;
    output out;
    
    assign out = (i_one & ~s_one & ~s_two) | (i_two & ~s_one & s_two) | (i_three & s_one & ~s_two) | (i_four & s_one & s_two);
endmodule
