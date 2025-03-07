`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Vishal Srivatsava AV
// Create Date: 05.01.2025 09:15:51
// Description: Half adder hehe.
//////////////////////////////////////////////////////////////////////////////////


module half_adder(a, b, sum, carry);
    input a, b;
    output sum, carry;
    
    assign sum = (a ^ b);
    assign carry = (a & b);
endmodule
