// PISO - Parallel In Serial Out shift register.
`timescale 1ns / 1ps

module piso(
    input d_zero, d_one, d_two, d_three,  
    input clk, reset, load,               
    output wire q_output, q_zero, q_one, q_two, q_three 
);

    reg [3:0] shift_reg; 

    always @(posedge clk or posedge reset) begin
        if (reset) 
            shift_reg <= 4'b0000; 
        else if (load) 
            shift_reg <= {d_three, d_two, d_one, d_zero}; 
        else 
            shift_reg <= shift_reg >> 1; 
    end

    assign q_output = shift_reg[0];
    assign q_zero   = shift_reg[0]; 
    assign q_one    = shift_reg[1];
    assign q_two    = shift_reg[2];
    assign q_three  = shift_reg[3];

endmodule
