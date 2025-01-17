// 8:1 MUX, gate level implementation.
`timescale 1ns / 1ps

// I know this looks horible, I will fix this.
// Also, while learning the theory in general, everything starts with 0, like s_zero, i_zero. 
// I didn't do that for simplicity. 

module mux_eight_one(
    i_one, i_two, i_three, i_four, i_five, i_six, i_seven, i_eight, 
    s_one, s_two, s_three, 
    out);
    
    input i_one, i_two, i_three, i_four, i_five, i_six, i_seven, i_eight,
          s_one, s_two, s_three;

    output out;
    
    assign out = (i_one & ~s_one & ~s_two & ~s_three) | // 000
                 (i_two & ~s_one & ~s_two & s_three) | // 001
                 (i_three & ~s_one & s_two & ~s_three) | // 010
                 (i_four & ~s_one & ~s_two & s_three) | // 011
                 (i_five & s_one & ~s_two & ~s_three) | // 100
                 (i_six & s_one & ~s_two & s_three) | // 101
                 (i_seven & s_one & s_two & ~s_three) | // 110
                 (i_eight & s_one & s_two & s_three); // 111
    
endmodule
