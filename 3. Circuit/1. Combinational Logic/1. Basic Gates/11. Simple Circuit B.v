module top_module ( input x, input y, output z );
    
    assign z = ~(x^y);
    
    //xnor(z,x,y);

    /* always @(*) begin
        case({x,y})
            2'b00 : z = 1;
            2'b10 : z = 0;
            2'b01 : z = 0;
            2'b11 : z = 1;
        endcase
    end*/

endmodule
