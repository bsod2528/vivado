// Testbench for PISO shift register.
`timescale 1ns / 1ps

module tb_piso_reg();

    reg clk, reset, load;  
    reg d_zero, d_one, d_two, d_three; 
    wire q_output, q_zero, q_one, q_two, q_three; 

    piso dut(
        .clk(clk),
        .reset(reset),
        .load(load),
        .d_zero(d_zero),
        .d_one(d_one),
        .d_two(d_two),
        .d_three(d_three),
        .q_output(q_output),
        .q_zero(q_zero),
        .q_one(q_one),
        .q_two(q_two),
        .q_three(q_three)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1; 
        load = 0;
        d_zero = 0; d_one = 0; d_two = 0; d_three = 0;  

        #10 reset = 0;  

        #10 load = 1;
        d_zero = 1; d_one = 0; d_two = 1; d_three = 1; 
        #10 load = 0;

        #50 $finish;
    end

endmodule
