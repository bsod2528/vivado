// JK flip - flop
`timescale 1ns / 1ps


module jk_ff(j, k, clk, reset, q_next);
    input j, k, clk, reset;
    output reg q_next;
    
    always @ (posedge clk or posedge reset) begin
        if (reset)
            q_next <= 0; // async reset
        
        else if (~j && ~k)
            q_next <= q_next; // same state
        
        else if (~j && k)
            q_next <= 0; // resets
            
        else if (j && ~k)
            q_next <= 1; // switches to a higher state, basically becomes 1.
            
        else if (j && k)
            q_next <= ~q_next; // toggles
    end
endmodule

// NOW I could've used switch, but I literally did the characteristic table.
// I was to lazy to re-write it in switch, it makes sense.
// So don't go wild when you see the elaborated design.