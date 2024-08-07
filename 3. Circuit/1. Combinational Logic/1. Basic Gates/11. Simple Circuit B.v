module top_module ( input x, input y, output z );
    
    assign z = ~(x^y);
    //xnor(z,x,y);

endmodule
