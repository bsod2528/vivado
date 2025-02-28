// Testbench for SISO shift register.
`timescale 1ns / 1ps


module tb_siso_reg();
    reg d, clk, reset;
    wire q_next, q_one, q_two, q_three;
    
    siso dut(
        .d_zero(d),
        .clk(clk),
        .q_zero(q_next),
        .q_one_op(q_one),
        .q_two_op(q_two),
        .q_three_op(q_three),
        .reset(reset));
        
    always #5 clk = ~clk;
    
    initial begin
        d = 0;
        reset = 1;
        clk = 0;
        
        #10 reset = 0;
        
        #10 d = 1;
        #10 d = 0;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;
        #40 $finish;
    end
endmodule
