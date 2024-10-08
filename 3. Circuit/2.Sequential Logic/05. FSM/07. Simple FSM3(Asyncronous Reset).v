module top_module(
    input clk,
    input in,
    input areset,
    output out); //
	
    reg [2:0] state, next_state;
    parameter A = 3'b000, B = 2'b001, C = 2'b011, D = 3'b100;
    
    // State transition logic
    always @(*) begin
        case(state)
            A : next_state = (in == 1) ? B : A;
            B : next_state = (in == 1) ? B : C;
            C : next_state = (in == 1) ? D : A;
            D : next_state = (in == 1) ? B : C;
        endcase
    end

    // State flip-flops with asynchronous reset
    always @(posedge clk or posedge areset) begin
        if(areset) state <= A;
        else state <= next_state;
    end

    // Output logic
    assign out = (state == D);

endmodule
