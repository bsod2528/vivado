// Testbench for `t - flip flop`
`timescale 1ns / 1ps


module tb_t_ff();
    reg t, clk, reset;
    wire q_next;
    
    t_ff dut(
        .t(t),
        .clk(clk),
        .reset(reset),
        .q_next(q_next)
    );
    
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        t = 0;
        reset = 1;
        
        #10 reset = 0; // resetting the reset HAHAHAHAA. my humour god its undefined (dont-care) im literally explaining my joke here :moyai:
                       // if we don't reset, it becomes undefined, but I don't care (HAHAHHAHAAH THIS IS WAY TO FUNNY).
        #10 t = 1;
        #10 t = 0;
        #10 t = 1;
        #10 t = 1; // so that we can check for the toggling.
        #10 t = 0;
        #10 $finish;
    end
endmodule
