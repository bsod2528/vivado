// Testbench for JK Flip Flop.
`timescale 1ns / 1ps


module tb_jk_ff();
    reg j, k, clk, reset;
    wire q_next;
    
    jk_ff dut(
        .j(j),
        .k(k),
        .clk(clk),
        .reset(reset),
        .q_next(q_next)
    );
    
    always #5 clk = ~clk; 
    
    initial begin
        clk = 0;
        j = 0; k = 0;
        reset = 1;
        
        #10 reset = 0; // giving time so that reset actually resets.        lol (yes that space was intentional).
        
        #10 j = 0; k = 0; // same state
        #10 j = 0; k = 1; // resets
        #10 j = 1; k = 0; // becomes high
        #10 j = 1; k = 1; // toggle
        #10 j = 1; k = 1; // checking for another toggle.
        #10 $finish;
    end
endmodule
