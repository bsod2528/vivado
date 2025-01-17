// 4:1 MUX testbench
`timescale 1ns / 1ps


module tb_mux_four_one();
    reg i_one, i_two, i_three, i_four, s_one, s_two;
    wire out;
    
    mux_four_one dut(
        .i_one(i_one),
        .i_two(i_two),
        .i_three(i_three),
        .i_four(i_four),
        .s_one(s_one),
        .s_two(s_two),
        .out(out)
    );
    
    initial begin
        i_one = 1; i_two = 0; i_three = 0; i_four = 1;
       
        s_one = 0; s_two = 0;
        #10; s_one = 0; s_two = 1;
        #10; s_one = 1; s_two = 0;
        #10; s_one = 1; s_two = 1;
        #10; $finish;
    end
endmodule
