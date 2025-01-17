// Testbench for 2:1 MUX
`timescale 1ns / 1ps


module tb_mux_two_one();
    reg a, b, select;
    wire out;
    
    mux_two_one dut(
        .a(a),
        .b(b),
        .select(select),
        .out(out)
    );
    
    initial begin
        select = 0; a = 0; b = 0;
        #10 select = 0; a = 0; b = 1;
        #10 select = 0; a = 1; b = 0;
        #10 select = 0; a = 1; b = 1;
        #10 select = 1; a = 0; b = 0;
        #10 select = 1; a = 0; b = 1;
        #10 select = 1; a = 1; b = 0;
        #10 select = 1; a = 1; b = 1;
        #10 $finish;
    end    
endmodule
