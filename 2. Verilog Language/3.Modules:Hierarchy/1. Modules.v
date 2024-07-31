module top_module ( input a, input b, output out );

  // By Position //
  
    mod_a inst1(a,b,out);
  
  // By Name //
  
    mod_a inst2(
        .in1 (a),
        .in2 (b),
        .out (out)
    );
    
endmodule
