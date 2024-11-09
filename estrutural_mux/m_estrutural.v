module m_estrutural(d0, d1, d2, d3, s0, s1, y);
    input d0, d1, d2, d3, s0, s1;
    output y;

    wire not_s0, not_s1;
    wire and0, and1, and2, and3;

    not (not_s0, s0);
    not (not_s1, s1);

    and (and0, d0, not_s0, not_s1);
    and (and1, d1, s0, not_s1);
    and (and2, d2, not_s0, s1);
    and (and3, d3, s0, s1);

    or (y, and0, and1, and2, and3);

endmodule
