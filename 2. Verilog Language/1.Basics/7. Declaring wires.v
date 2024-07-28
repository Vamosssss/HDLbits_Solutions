`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    //type1//
    
    wire and_ab, and_cd;
    
    assign and_ab = a&b;
    assign and_cd = c&d;
    assign out = and_ab|and_cd;
    assign out_n = ~(and_ab|and_cd);
    
    //type2//
    
    //assign out = (a&b)|(c&d);
    //assign out_n = ~((a&b)|(c&d));

endmodule
