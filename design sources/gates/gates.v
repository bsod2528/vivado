`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Vishal Srivatsava AV
// Create Date: 05.01.2025 08:51:35
// Description: Simple testing of all gates.
//////////////////////////////////////////////////////////////////////////////////


module gates(a, b, y0, y1, y2, y3, y4, y5, y6, y7);
    input a, b;
    output y0, y1, y2, y3, y4, y5, y6, y7;
    
    assign y0 = (a & b); // and
    assign y1 = (a | b); // or
    assign y2 = ~(a & b); // nand
    assign y3 = ~(a | b); // nor
    assign y4 = (a ^ b); // xor
    assign y5 = ~(a ^ b); // xnor
    assign y6 = ~a;
    assign y7 = ~b;
endmodule
