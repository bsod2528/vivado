// SIPO - Serial In Parallel Out shift register using D Flip Flop.
`timescale 1ns / 1ps


module sipo(
    d, clk, reset,
    q_zero, q_one, q_two, q_three);
    
    input d, clk, reset;
    output wire q_zero, q_one, q_two, q_three;
    
    d_ff dff_one(
        .d(d),
        .q_next(q_zero),
        .clk(clk),
        .reset(reset)
    );
    
    d_ff dff_two(
        .d(q_zero),
        .q_next(q_one),
        .clk(clk),
        .reset(reset)
    );
        
    d_ff dff_three(
        .d(q_one),
        .q_next(q_two),
        .clk(clk),
        .reset(reset)
    );
     
    d_ff dff_four(
        .d(q_two),
        .q_next(q_three),
        .clk(clk),
        .reset(reset)
    );
endmodule
