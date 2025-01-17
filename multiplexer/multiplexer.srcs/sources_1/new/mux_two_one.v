// 2:1 MUX, gate level implementation

`timescale 1ns / 1ps


module mux_two_one(a, b, select, out);
    input a, b, select;
    output out;
    
    assign out = (a & ~select) | (b & select);
endmodule
