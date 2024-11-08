`timescale 1ns/1ns
`include "m_fluxo.v"

module m_fluxo_tb;

    reg d0, d1, d2, d3, s0, s1;
    wire y;
    m_fluxo uut(d0, d1, d2, d3, s0, s1, y);

    initial begin
        $dumpfile("m_fluxo.vcd");
        $dumpvars(0, m_fluxo_tb);
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;
        s1 = 0; s0 = 0; #20;
        s1 = 0; s0 = 1; #20;
        s1 = 1; s0 = 0; #20;
        s1 = 1; s0 = 1; #20;

        $display("Teste completo");
    end

endmodule