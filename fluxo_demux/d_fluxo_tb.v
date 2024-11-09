`timescale 1ns/1ns
`include "d_fluxo.v"

module d_fluxo_tb;

    reg d;
    reg [1:0] s;
    wire [3:0] y;
    d_fluxo uut(d, s, y);

    initial begin
        $dumpfile("d_fluxo.vcd");
        $dumpvars(0, d_fluxo_tb);

        d = 4'b0101;
        s = 2'b00; #20;
        s = 2'b01; #20;
        s = 2'b10; #20;
        s = 2'b11; #20;
       
        $display("Teste completo");
    end

endmodule