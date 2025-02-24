// D Flip Flop
`timescale 1ns / 1ps


module d_ff(d, q_next, clk);
    input d, clk;
    output reg q_next;
    
    always @ (posedge clk)
        q_next <= d;
endmodule
