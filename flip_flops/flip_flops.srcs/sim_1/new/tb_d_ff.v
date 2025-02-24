// Testbench for `d - flip flop`
`timescale 1ns / 1ps


module tb_d_ff();
    reg d, clk;
    wire q_next;
    
    d_ff dut(
        .d(d),
        .clk(clk),
        .q_next(q_next)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        d = 0;
        
        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;
        #10 $finish;
    end
endmodule
