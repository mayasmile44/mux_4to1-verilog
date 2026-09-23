module mux4to1_tb;

    logic d0;
    logic d1;
    logic d2;
    logic d3;

    logic s0;
    logic s1;

    logic y;

    mux4to1 dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .s0(s0),
        .s1(s1),
        .y(y)
    );

    // Waveform
    initial begin
        $dumpfile("waves/mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);
    end

    // Test
    initial begin

        d0 = 1'b0;
        d1 = 1'b1;
        d2 = 1'b0;
        d3 = 1'b1;

        s1 = 1'b0;
        s0 = 1'b0;

        #10;

        s1 = 1'b0;
        s0 = 1'b1;

        #10;

        s1 = 1'b1;
        s0 = 1'b0;

        #10;

        s1 = 1'b1;
        s0 = 1'b1;

        #10;

        $finish;

    end

endmodule
