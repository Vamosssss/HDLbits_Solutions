module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output reg out;

    // State declarations
    localparam A = 1'b0, B = 1'b1;
    reg present_state, next_state;

    // Sequential block: state transition on clock edge
    always @(posedge clk) begin
        if (reset) begin  
            present_state <= B;  // Reset to state B
        end else begin
            present_state <= next_state;  // Update state to next_state
        end
    end

    // Combinational block: determine next_state and output
    always @(*) begin
        case (present_state)
            A: if (in == 1) next_state = A; 
               else next_state = B;
            B: if (in == 1) next_state = B; 
               else next_state = A;
        endcase

        // Output logic based on state
        case (present_state)
            A: out = 0;
            B: out = 1;
        endcase
    end

endmodule
