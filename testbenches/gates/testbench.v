`timescale 1ns / 1ps

module testbench();
    reg a, b;
    wire y0, y1, y2, y3, y4, y5, y6, y7;
    
    gates dut(
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
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
