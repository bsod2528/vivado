// D Flip Flop
`timescale 1ns / 1ps


module d_ff(d, q_next, clk, reset);
    input d, clk, reset;
    output reg q_next;
    
    always @ (posedge clk or posedge reset)
        if (reset)
            q_next <= 0;
        else
            q_next <= d;
endmodule