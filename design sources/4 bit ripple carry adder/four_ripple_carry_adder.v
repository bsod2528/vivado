// 4-bit ripple carry adder.
`timescale 1ns / 1ps

// I was so dumb and did a_one ... a_n, for all inputs and outputs rather than using `reg`.
module four_ripple_carry_adder(a, b, sum, c_zero, c_four);
    input c_zero;
    input [3:0] a, b;
    
    output c_four;
    output [3:0] sum;
    
    wire c_one, c_two, c_three;
    
    full_adder fa_one(
        .a(a[0]),
        .b(b[0]),
        .c_in(c_zero),
        .sum(sum[0]),
        .c_out(c_one)
    );
    
    full_adder fa_two(
        .a(a[1]),
        .b(b[1]),
        .c_in(c_one),
        .sum(sum[1]),
        .c_out(c_two)
    );
    
    full_adder fa_three(
        .a(a[2]),
        .b(b[2]),
        .c_in(c_two),
        .sum(sum[2]),
        .c_out(c_three)
    );
    
    full_adder fa_four(
        .a(a[3]),
        .b(b[3]),
        .c_in(c_three),
        .sum(sum[3]),
        .c_out(c_four)
    );
endmodule
