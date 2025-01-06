// TB for full adder using two half adders.
`timescale 1ns / 1ps


module fa_using_ha_tb();
    reg a, b, c_in;
    wire sum, c_out;
    
    fa_using_ha dut(
        .a(a),
        .b(b),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );
    
    initial
    begin
        a = 0; b = 0; c_in = 0;
        #10 a = 0; b = 0; c_in = 1;
        #10 a = 0; b = 1; c_in = 0;
        #10 a = 0; b = 1; c_in = 1;
        #10 a = 1; b = 0; c_in = 0;
        #10 a = 1; b = 0; c_in = 1;
        #10 a = 1; b = 1; c_in = 0;
        #10 a = 1; b = 1; c_in = 1;
        #10 $finish;
    end
endmodule
