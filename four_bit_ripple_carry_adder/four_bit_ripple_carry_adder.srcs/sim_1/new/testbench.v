// Testbench for the entire 4-bit ripple carry adder.
`timescale 1ns / 1ps


module testbench();
    reg [3:0] a, b;
    reg c_zero;
    
    wire c_four;
    wire [3:0] sum;
    
    four_ripple_carry_adder uut(
        .a(a),
        .b(b),
        .sum(sum),
        .c_zero(c_zero),
        .c_four(c_four)
    );
    
    initial begin
        a = 4'b0001; b = 4'b0010; c_zero = 0;
        #10 a = 4'b0011; b = 4'b0100;
        #10 a = 4'b0101; b = 4'b0101;
        #10 a = 4'b0110; b = 4'b0111;
        #10 $finish;
    end
endmodule
