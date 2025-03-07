`timescale 1ns / 1ps


module testbench();
    reg a, b;
    wire difference, borrow;
    
    half_sub dut(
        .a(a),
        .b(b),
        .difference(difference),
        .borrow(borrow)
    );
    
    initial
    begin
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
endmodule
