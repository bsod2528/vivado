// PIPO - Parallel In Parallel Out using D flip flop.
`timescale 1ns / 1ps


module pipo(
    d_zero, d_one, d_two, d_three,
    clk, reset,
    q_zero, q_one, q_two, q_three
);
    
    input d_zero, d_one, d_two, d_three,
          clk, reset;
    output wire q_zero, q_one, q_two, q_three;
    
    d_ff dff_one(
        .d(d_zero),
        .q_next(q_zero),
        .clk(clk),
        .reset(reset)
    );
    
    d_ff dff_two(
        .d(d_one),
        .q_next(q_one),
        .clk(clk),
        .reset(reset)
    );
        
    d_ff dff_three(
        .d(d_two),
        .q_next(q_two),
        .clk(clk),
        .reset(reset)
    );
     
    d_ff dff_four(
        .d(d_three),
        .q_next(q_three),
        .clk(clk),
        .reset(reset)
    );
    
    
endmodule
