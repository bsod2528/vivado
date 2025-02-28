// Testbench for SIPO shift register.
`timescale 1ns / 1ps


module tb_sipo_reg();
    reg d, clk, reset;
    wire q_zero, q_one, q_two, q_three;
    
    sipo dut(
        .d(d),
        .clk(clk),
        .reset(reset),
        .q_zero(q_zero),
        .q_one(q_one),
        .q_two(q_two),
        .q_three(q_three));
        
    always #5 clk = ~clk;
    
    initial begin
        d = 0;
        clk = 0;
        reset = 1;
        
        #10 reset = 0;
        
        #10 d = 1;
        #10 d = 0;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;
        #40 $finish;
    end
endmodule
