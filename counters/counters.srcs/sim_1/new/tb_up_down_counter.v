// Testbench for 4-bit Up Down Counter.
`timescale 1ns / 1ps


module tb_up_down_counter();
    reg clk, enable, go_down, reset;
    wire [3:0] q_next;
    
    up_down_counter dut(
        .clk(clk),
        .enable(enable),
        .go_down(go_down),
        .reset(reset),
        .q_next(q_next)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        enable = 1;
        go_down = 0;
         
        #10 reset = 0;
        
        #20 go_down = 1;
        #10 go_down = 0;
        #20 go_down = 1;
        #10 go_down = 0;
        
        #100 $finish;
    end
endmodule
