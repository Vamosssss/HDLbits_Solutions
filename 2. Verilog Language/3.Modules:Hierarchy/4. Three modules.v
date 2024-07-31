module top_module ( input clk, input d, output q );

    reg q1, q2;
    
    my_dff inst1(
        .clk (clk),
        .d (d),
        .q (q1)
    );
    
        my_dff inst2(
        .clk (clk),
        .d (q1),
        .q (q2),
    );
    
        my_dff inst3(
        .clk (clk),
        .d (q2),
        .q (q),
    );
    
endmodule
