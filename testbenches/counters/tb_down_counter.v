// Testbenc for 4-bit down counter.
`timescale 1ns / 1ps


module tb_down_counter();
    reg clk, reset;
    wire [3:0] q_next;
    
    down_counter dut(
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
    end
endmodule
