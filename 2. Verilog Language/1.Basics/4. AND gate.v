module top_module( 
    input a, 
    input b, 
    output out );
  
    assign out = a & b;
    //and(out,a,b);

endmodule
