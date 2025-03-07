// 4 - bit Up Counter.
`timescale 1ns / 1ps


module up_counter(clk, reset, q_next);
    input clk, reset;
    output reg [3:0] q_next;
    
    always @ (posedge clk or posedge reset) begin
        if (reset)
            q_next <= 4'b0000;
        else
            q_next <= q_next + 1;
    end
endmodule
