module top_module(
    input clk,
    input in,
    input reset,
    output out); //
    
    parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11;
    reg [1:0] state, next_state;

    // State transition logic
    always @(*) begin
        case(state)
            A : next_state = in?B:A;
            B : next_state = in?B:C;
            C : next_state = in?D:A;
            D : next_state = in?B:C;
            default : next_state = next_state;
        endcase
    end
    

    // State flip-flops with synchronous reset
    always@(posedge clk) begin
        if(reset)
            state <= A;
        else
            state <= next_state;
    end
    
    // Output logic
    
    assign out = (state == D);

endmodule
