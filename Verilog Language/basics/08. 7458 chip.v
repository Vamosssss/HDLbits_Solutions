module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    assign p2y = (p2a&p2b)|(p2c&p2d);
    assign p1y = (p1a&p1b&p1c)|(p1d&p1e&p1f);

  ////////////////////////////////////////////
  //wire and1, and2, or1, and3, and4, or2;
  
  //assign and1 = p2a&p2b;
  //assign and2 = p2c&p2d;
  //assign or1 = and1|and2;
  //assign p2y = or1;
    
  //assign and3 = p1a&p1b&p1c;
  //assign and4 = p1d&p1e&p1f;
  //assign or2 = and3|and4;
  //assign p1y = or2;
  ///////////////////////////////////////////
endmodule
