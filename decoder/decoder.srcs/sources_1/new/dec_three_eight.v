// 3:8 decoder, gate level implementation.
`timescale 1ns / 1ps


module dec_three_eight(
    x, y, z, enable,
    o_one, o_two, o_three, o_four, o_five, o_six, o_seven, o_eight);
    
    input x, y, z, enable;
    output o_one, o_two, o_three, o_four, o_five, o_six, o_seven, o_eight;
    
    assign o_one = (~x & ~y & ~z & enable);
    assign o_two = (~x & ~y & z & enable);
    assign o_three = (~x & y & ~z & enable);
    assign o_four = (~x & y & z & enable);
    assign o_five = (x & ~y & ~z & enable);
    assign o_six = (x & ~y & z & enable);
    assign o_seven = (x & y & ~z & enable);
    assign o_eight = (x & y & z & enable);
endmodule
