// SISO - Serial In Serial Out shift register using D Flip Flop.
`timescale 1ns / 1ps


module siso(d_zero, clk, q_zero, q_one_op, q_two_op, q_three_op, reset);
    input d_zero, clk, reset;
    output wire q_zero, q_one_op, q_two_op, q_three_op;
    
    // x_three would be the last as i'm starting values from `x_zero`.
    wire q_zero_wire, q_one, q_two, q_three;
         
    // yet the flip-flops index's start from one :moyai:.
    d_ff dff_one(
        .d(d_zero),
        .q_next(q_zero_wire),
        .clk(clk),
        .reset(reset)
    );
    
    d_ff dff_two(
        .d(q_zero_wire),
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
    
    assign q_one_op = q_zero_wire;
    assign q_two_op = q_one;
    assign q_three_op = q_two;
    assign q_zero = q_three;
endmodule
