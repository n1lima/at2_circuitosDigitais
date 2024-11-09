`timescale 1ns/1ns
`include "m_estrutural.v"

module m_estrutural_tb;

    reg d0, d1, d2, d3, s0, s1;
    wire y;
    m_estrutural uut ( 
        .d0(d0), 
        .d1(d1), 
        .d2(d2), 
        .d3(d3), 
        .s0(s0), 
        .s1(s1), 
        .y(y) 
        );

    initial begin
        $dumpfile("m_estrutural.vcd");
        $dumpvars(0, m_estrutural_tb);
 
        d0 = 0; d1 = 0; d2 = 0; d3 = 0; s0 = 0; s1 = 0; 
        
        #10 d0 = 1; s0 = 0; s1 = 0; 
        #10 d0 = 0; d1 = 1; s0 = 1; s1 = 0; 
        #10 d1 = 0; d2 = 1; s0 = 0; s1 = 1; 
        #10 d2 = 0; d3 = 1; s0 = 1; s1 = 1; 
        #10 d3 = 0; s0 = 0; s1 = 0;

        $display("Teste completo");
    end

endmodule
