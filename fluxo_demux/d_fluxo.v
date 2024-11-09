module d_fluxo(d, s, y);
    input d;
    input [1:0]s;
    output [3:0]y;

    assign y[0] = d & (~s[0]) & (~s[1]);
    assign y[1] = d & (~s[1]) & s[0];
    assign y[2] = d & s[1] & (~s[0]);
    assign y[3] = d & s[0] & s[1];

    
endmodule