module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

  //type1//
  
    assign out = ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}}^{5{a,b,c,d,e}};
  
  //type2//

    //assign out[24:20] = ~ {5{a}} ^ {a, b, c, d, e};
    //assign out[19:15] = ~ {5{b}} ^ {a, b, c, d, e};
    //assign out[14:10] = ~ {5{c}} ^ {a, b, c, d, e};
    //assign out[9:5] = ~ {5{d}} ^ {a, b, c, d, e};
    //assign out[4:0] = ~ {5{e}} ^ {a, b, c, d, e};
  

endmodule
