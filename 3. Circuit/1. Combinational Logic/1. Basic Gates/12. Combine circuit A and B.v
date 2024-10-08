module top_module (input x, input y, output z);
    
    wire z1, z2, z3, z4, z5, z6;
    
    A IA1(x,y,z1);
    B IB1(x,y,z2);
    A IA2(x,y,z3);
    B IB2(x,y,z4);
    
    assign z5 = z1 || z2;
    assign z6 = z3 && z4;
    assign z = z5 ^ z6;

    /*
     wire z1, z2, z3, z4;
    A IA1(x,y,z1);
    A IA2(x,y,z2);
    B IB1(x,y,z3);
    B IB2(x,y,z4);
    
    assign z = (z1|z2)^(z3&z4); */
    
endmodule

    //module A
     module A(
        input x,y,
        output z
    );
        assign z = (x^y) & x;
    endmodule

    //module B
    module B(
        input x,y,
        output z
    );
        assign z = ~(x^y);
    endmodule
    
