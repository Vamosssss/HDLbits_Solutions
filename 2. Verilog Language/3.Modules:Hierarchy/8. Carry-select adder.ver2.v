module top_module(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] sum
);
    wire [15:0] cout,con2;
    wire [15:0] sum1, sum2;
  add16 inst1(a[15:0], b[15:0], 0, sum[15:0], cout);
  add16 inst2(a[31:16], b[31:16], 0, sum1, con2);
  add16 inst3(a[31:16], b[31:16], 1, sum2, con2);
    
    always @(cout, alt_sum1, alt_sum2) begin
        case(cout)
            0 : sum[31:16] = sum1;
            1 : sum[31:16] = sum2;
        endcase
    end

endmodule
