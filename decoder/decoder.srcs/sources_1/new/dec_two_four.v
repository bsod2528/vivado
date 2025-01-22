// 2:4 decoder, gate level implementation.
`timescale 1ns / 1ps


module dec_two_four(x, y, enable, o_one, o_two, o_three, o_four);
    input x, y, enable;
    output o_one, o_two, o_three, o_four;
    
    wire enable;
    
    assign o_one = (~x & ~y & enable);
    assign o_two = (~x & y & enable);
    assign o_three = (x & ~y & enable);
    assign o_four = (x & y & enable);
endmodule
