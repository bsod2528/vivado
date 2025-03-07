// T Flip Flop
`timescale 1ns / 1ps


module t_ff(t, q_next, reset, clk);
    input t, clk, reset;
    output reg q_next;
        
    always @ (posedge clk or posedge reset) begin
        if (reset)
            q_next <= 0;
        if (t)
            q_next <= ~q_next;
    end
endmodule
