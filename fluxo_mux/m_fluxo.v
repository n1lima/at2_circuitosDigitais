module m_fluxo(d0, d1, d2, d3, s0, s1, y);

    input d0, d1, d2, d3, s0, s1;
    output y;

    assign y = (d0 & (~s0) & (~s1)) | (d1 & (~s1) & s0) | (d2 & s1& (~s0)) | (d3 & s0 & s1);

endmodule