module top_module(
    input in,
    input [1:0] state,
    output [1:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

    always@(*) begin
        case(state)
            A : next_state = in?B:A;
            B : next_state = in?B:C;
            C : next_state = in?D:A;
            D : next_state = in?B:C;
        endcase
    end
  
    assign out = (state == D);
   /* always@(*)begin
        case(state)
            A : out = 2'b00;
            B : out = 2'b00;
            C : out = 2'b00;
            D : out = 2'b01;
        endcase
    end*/
    
endmodule
