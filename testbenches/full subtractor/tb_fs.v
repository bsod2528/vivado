// Testbench file for the "actual logic" based full subtractor (full_sub.v).
`timescale 1ns / 1ps


module tb_fs();
    reg a, b, b_in;
    wire difference, b_out;
    
    full_sub dut(
        .a(a),
        .b(b),
        .b_in(b_in),
        .difference(difference),
        .b_out(b_out)
    );
    
    initial
    begin
        a = 0; b = 0; b_in = 0;
        #10 a = 0; b = 0; b_in = 1;
        #10 a = 0; b = 1; b_in = 0;
        #10 a = 0; b = 1; b_in = 1;
        #10 a = 1; b = 0; b_in = 0;
        #10 a = 1; b = 0; b_in = 1;
        #10 a = 1; b = 1; b_in = 0;
        #10 a = 1; b = 1; b_in = 1;
        #10 $finish;
    end
endmodule
