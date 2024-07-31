module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    reg[7:0] q1,q2,q3;
    
    my_dff8 inst1(
        .clk (clk),
        .d (d),
        .q (q1)
    );
    
    
    my_dff8 inst2(
        .clk (clk),
        .d (q1),
        .q (q2)
    );
    
     my_dff8 inst3(
        .clk (clk),
        .d (q2),
        .q (q3)
    );
    
    always @(*)
        case(sel)
            3 : q=q3;  
            2 : q=q2;
            1 : q=q1;
            0 : q=d;
        endcase
  /*if(sel==2'b00)
            q=d;
        else if( sel == 2'b01)
      		q = q1;
        else if( sel == 2'b10)
      		q = q2;
        else if( sel == 2'b11)
      		q = q3;*/
        
endmodule
