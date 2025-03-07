// Testbench for 3:8 decoder.
`timescale 1ns / 1ps


module tb_dec_three_eight();
    reg x, y, z, enable;
    wire o_one, o_two, o_three, o_four, o_five, o_six, o_seven, o_eight;
    
    dec_three_eight dut(
        .x(x),
        .y(y),
        .z(z),
        .enable(enable),
        .o_one(o_one),
        .o_two(o_two),
        .o_three(o_three),
        .o_four(o_four),
        .o_five(o_five),
        .o_six(o_six),
        .o_seven(o_seven),
        .o_eight(o_eight)
    );
    
    initial begin
        x = 0; y = 0; z = 0; enable = 1;
        #10 x = 0; y = 0; z = 1; enable = 1;
        #10 x = 0; y = 1; z = 0; enable = 1;
        #10 x = 0; y = 1; z = 1; enable = 1;
        #10 x = 1; y = 0; z = 0; enable = 1;
        #10 x = 1; y = 0; z = 1; enable = 1;
        #10 x = 1; y = 1; z = 0; enable = 1;
        #10 x = 1; y = 1; z = 1; enable = 1;
        #10 $finish;
    end
endmodule
