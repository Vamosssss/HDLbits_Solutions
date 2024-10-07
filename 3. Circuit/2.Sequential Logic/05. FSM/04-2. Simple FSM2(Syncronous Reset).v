module top_module(
    input clk,
    input reset,    // Synchronous reset to OFF
    input j,
    input k,
    output reg out); // Output as reg for case statement

    parameter OFF = 0, ON = 1;
    reg state;

    always @(posedge clk) begin
        // State transition logic with synchronous reset
        if (reset) 
            state <= OFF;
        else begin
            case (state)
                OFF: state <= j ? ON : OFF;
                ON:  state <= k ? OFF : ON;
            endcase
        end
    end

    always @(*) begin
        // Output logic based on state
        case (state)
            OFF: out = 0;
            ON:  out = 1;
        endcase
    end

endmodule
