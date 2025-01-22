// Testbench file for 8:3 encoder.
`timescale 1ns / 1ps


module tb_enc_eight_three();
    reg i_one, i_two, i_three, i_four, i_five, i_six, i_seven;
    wire a, b, c;
    
    enc_eight_three dut(
        .i_one(i_one),
        .i_two(i_two),
        .i_three(i_three),
        .i_four(i_four),
        .i_five(i_five),
        .i_six(i_six),
        .i_seven(i_seven),
        .a(a),
        .b(b),
        .c(c)
    );
    
    initial begin
        i_one = 0; i_two = 0; i_three = 0; i_four = 0; i_five = 0; i_six = 0; i_seven = 0;
        #10 i_one = 1; i_two = 0; i_three = 0; i_four = 0; i_five = 0; i_six = 0; i_seven = 0;
        #10 i_one = 0; i_two = 1; i_three = 0; i_four = 0; i_five = 0; i_six = 0; i_seven = 0;
        #10 i_one = 0; i_two = 0; i_three = 1; i_four = 0; i_five = 0; i_six = 0; i_seven = 0;
        #10 i_one = 0; i_two = 0; i_three = 0; i_four = 1; i_five = 0; i_six = 0; i_seven = 0;
        #10 i_one = 0; i_two = 0; i_three = 0; i_four = 0; i_five = 1; i_six = 0; i_seven = 0;
        #10 i_one = 0; i_two = 0; i_three = 0; i_four = 0; i_five = 0; i_six = 1; i_seven = 0;
        #10 i_one = 0; i_two = 0; i_three = 0; i_four = 0; i_five = 0; i_six = 0; i_seven = 1;
        #10 $finish;
    end
endmodule
