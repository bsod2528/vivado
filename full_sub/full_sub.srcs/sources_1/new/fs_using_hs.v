// Full subtractor using two half-subtractors.
`timescale 1ns / 1ps


module fs_using_hs(a, b, b_in, difference, b_out);
    input a, b, b_in;
    output difference, b_out;
    
    wire x, y, z;
    
    half_sub hs_one(.a(a), .b(b), .difference(x), .borrow(y));
    half_sub hs_two(.a(x), .b(b_in), .difference(difference), .borrow(z));
    
    assign b_out = (z | y);
endmodule
