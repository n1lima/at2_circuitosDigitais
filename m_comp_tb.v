`timescale 1ns/1ns
`include "m_comp.v"

module m_comp_tb;

    reg [3:0] d;
    reg [1:0] s;
    wire y;
    m_comp uut(d, s, y);

    initial begin
        $dumpfile("m_comp.vcd");
        $dumpvars(0, m_comp_tb);

        d = 4'b0101;
        s = 2'b00; #20;
        s = 2'b01; #20;
        s = 2'b10; #20;
        s = 2'b11; #20;

        $display("Teste completo");
    end

endmodule