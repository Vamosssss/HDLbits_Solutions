module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    //type1//
  
    wire and_abc, and_def, and_ab, and_cd;
    
    assign and_abc = (p1a&p1b&p1c);
    assign and_def = (p1d&p1e&p1f);
    assign and_ab = (p2a&p2b);
    assign and_cd = (p2c&p2d);
    
    assign p1y = and_abc|and_def;
    assign p2y = and_ab|and_cd;
  
    //type2//
  
    //assign p1y = (p1a&p1b&p1c)|(p1d&p1e&p1f);
    //assign p2y = (p2a&p2b)|(p2c&p2d);
    
endmodule
