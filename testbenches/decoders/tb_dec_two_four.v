// Testbench for 2:4 decoder.
`timescale 1ns / 1ps


module tb_dec_two_four();
    reg x, y, enable;
    wire o_one, o_two, o_three, o_four;
    
    dec_two_four dut(
        .x(x),
        .y(y),
        .enable(enable),
        .o_one(o_one),
        .o_two(o_two),
        .o_three(o_three),
        .o_four(o_four)
    );
    
    initial begin
        x = 0; y = 0; enable = 1;
        #10 x = 0; y = 1; enable = 1;
        #10 x = 1; y = 0; enable = 1;
        #10 x = 1; y = 1; enable = 1;
        #10 $finish;
    end
endmodule
