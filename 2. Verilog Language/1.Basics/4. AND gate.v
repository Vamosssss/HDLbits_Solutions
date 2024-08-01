module top_module( 
    input a, 
    input b, 
    output out );
   
   //type1//

    assign out = a & b;

   //type2//

    //and(out,a,b);

endmodule
