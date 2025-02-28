// Testbench for PIPO shift register.
`timescale 1ns / 1ps


module tb_pipo_reg();
    reg d_zero, d_one, d_two, d_three,
    clk, reset;
    
    wire q_zero, q_one, q_two, q_three;
    
    pipo dut(
        .d_zero(d_zero),
        .d_one(d_one),
        .d_two(d_two),
        .d_three(d_three),
        .clk(clk),
        .reset(reset),
        .q_zero(q_zero),
        .q_one(q_one),
        .q_two(q_two),
        .q_three(q_three));
        
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        d_zero = 0;
        d_one = 0;
        d_two = 0;
        d_three = 0;
           
        #10 reset = 0;
        
        #10 d_zero = 1; d_one = 1; d_two = 1; d_three = 1;
        #10 d_zero = 0; d_one = 0; d_two = 0; d_three = 0;
        #10 $finish;
    end
endmodule
