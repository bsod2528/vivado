// 4:2 encoder testbench
`timescale 1ns / 1ps


module tb_enc_four_two();
    reg i_one, i_two, i_three, i_four;
    wire a, b, meta;
    
    enc_four_two dut(
        .i_one(i_one),
        .i_two(i_two),
        .i_three(i_three),
        .i_four(i_four),
        .a(a),
        .b(b),
        .meta(meta)
    );
    
    initial begin
        i_one = 0; i_two = 0; i_three = 0; i_four = 0;
        #10 i_one = 0; i_two = 0; i_three = 0; i_four = 1;
        #10 i_one = 0; i_two = 0; i_three = 1; i_four = 0;
        #10 i_one = 0; i_two = 1; i_three = 0; i_four = 0;
        #10 i_one = 1; i_two = 0; i_three = 0; i_four = 0;
        #10 $finish;               
    end
endmodule