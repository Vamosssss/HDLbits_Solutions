module top_module ( input a, input b, output out );
    //by position
  
    mod_a instance1(a,b,out);
    
   //by name
  
   // mod_a instance1(
   //   .out (out),
   //   .in1 (a),
   //   .in2 (b)
   //  );
  
endmodule
