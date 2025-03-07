// Testbench for 4-bit Up Counter
`timescale 1ns / 1ps


module tb_up_counter();
    reg clk, reset;
    wire [3:0] q_next;
    
    up_counter dut(
        .clk(clk),
        .reset(reset),
        .q_next(q_next)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        
        #10 reset = 0;
        
        #200 $finish;
        // gave 200 time units here so that upon simulating once can see that the 
        // counter resets back to 1 hehe.
    end 
endmodule
