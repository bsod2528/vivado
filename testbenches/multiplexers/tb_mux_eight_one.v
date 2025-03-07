// 8:1 MUX testbench
`timescale 1ns / 1ps


module tb_mux_eight_one();
    reg i_one, i_two, i_three, i_four, i_five, i_six, i_seven, i_eight,
        s_one, s_two, s_three;
        
    wire out;
    
    mux_eight_one dut(
        .i_one(i_one),
        .i_two(i_two),
        .i_three(i_three),
        .i_four(i_four),
        .i_five(i_five),
        .i_six(i_six),
        .i_seven(i_seven),
        .i_eight(i_eight),
        .s_one(s_one),
        .s_two(s_two),
        .s_three(s_three),
        .out(out)   
    );
    
    initial begin
        i_one = 1; i_two = 0; i_three = 0; i_four = 1;
        i_five = 1; i_six = 0; i_seven = 0; i_eight = 1;
        
        s_one = 0; s_two = 0; s_three = 0;
        #10 s_one = 0; s_two = 0; s_three = 1;
        #10 s_one = 0; s_two = 1; s_three = 0;
        #10 s_one = 0; s_two = 1; s_three = 1;
        #10 s_one = 1; s_two = 0; s_three = 0;
        #10 s_one = 1; s_two = 0; s_three = 1;
        #10 s_one = 1; s_two = 1; s_three = 0;
        #10 s_one = 1; s_two = 1; s_three = 1;
        #10 $finish;        
    end
endmodule
