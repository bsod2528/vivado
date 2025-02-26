// 4 - bit up down counter.
`timescale 1ns / 1ps


module up_down_counter(clk, reset, enable, go_down, q_next);
    input clk, enable, go_down, reset;
    output reg [3:0] q_next;
    
    always @ (posedge clk or posedge reset or posedge enable) begin
        if (reset)
            q_next <= 4'b0000;
            
        else if (enable) begin
            if (go_down)
                q_next <= q_next - 1;
            else     
                q_next <= q_next + 1;
        end
    end
endmodule
