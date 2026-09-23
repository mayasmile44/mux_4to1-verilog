module mux4to1 (
    input  d0,
    input  d1,
    input  d2,
    input  d3,
    input  s0,
    input  s1,
    output y
);

    assign y = (s1 == 1'b0 && s0 == 1'b0) ? d0 :
               (s1 == 1'b0 && s0 == 1'b1) ? d1 :
               (s1 == 1'b1 && s0 == 1'b0) ? d2 :
                                             d3;

endmodule
