// 4 - bit down counter.
`timescale 1ns / 1ps


module down_counter(clk, reset, q_next);
    input clk, reset;
    output reg [3:0] q_next;
    
    always @ (posedge clk or posedge reset) begin
        if (reset)
            q_next <= 4'b1111;
        else
            q_next <= q_next - 1;
    end
endmodule
