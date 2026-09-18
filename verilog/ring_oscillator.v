module ring_oscillator (
    output wire ro
);

    wire n1;
    wire n2;

    not #1 inv1 (n1, ro);
    not #1 inv2 (n2, n1);
    not #1 inv3 (ro, n2);

endmodule
