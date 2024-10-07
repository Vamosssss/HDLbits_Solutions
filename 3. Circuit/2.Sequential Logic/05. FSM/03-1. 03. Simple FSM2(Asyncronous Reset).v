module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state;
 
    always @(posedge clk, posedge areset) begin
        if(areset) state <= OFF;
        else case(state)
            OFF : state <= j?ON:OFF;
            ON : state<= k?OFF:ON;        
        endcase
    end
   
    assign out = (state==ON);
endmodule
