module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

  assign cin1 = 0;
  wire cin1, cout1, cout2;
  reg [15:0]sum1, sum2; 
    
      add16 inst1(
        .a (a[15:0]),
        .b (b[15:0]),
        .cin (cin1),
        .cout (cout1),
        .sum (sum1)
    );
    
      add16 inst2(
        .a (a[31:16]),
        .b (b[31:16]),
        .cin (cout1),
        .cout (cout2),
        .sum (sum2)
    );
    
    assign sum = {sum2,sum1};

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );
    
assign sum = a ^ b ^ cin;
assign cout = a & b | (a ^ b) & cin;

endmodule
