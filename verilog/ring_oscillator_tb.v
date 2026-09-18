`timescale 1ns/1ps

module tb_ring_oscillator;

    wire ro;

    ring_oscillator uut (
        .ro(ro)
    );

    initial begin
        force ro = 0;
        #2;
        release ro;

        #50;
        $finish;
    end

endmodule
