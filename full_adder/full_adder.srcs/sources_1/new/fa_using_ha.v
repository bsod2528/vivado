// Full adder using two half-adders.
`timescale 1ns / 1ps


module fa_using_ha(a, b, c_in, sum, c_out);
    input a, b, c_in;
    output sum, c_out;
    
    wire x, y, z;
    
    half_adder ha_one(.a(a), .b(b), .sum(x), .carry(y));
    half_adder ha_two(.a(c_in), .b(x), .sum(sum), .carry(z));
    
    assign c_out = (z | y);
endmodule
