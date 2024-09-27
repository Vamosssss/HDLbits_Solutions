module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin1,cin2, cin3, cout1,cout2,cout3;
    reg[15:0]sum1, sum2, sum3,sum_q;
    assign cin1 = 0;
    assign cin2 = 0;
    assign cin3 = 1;
    
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
        .cin (cin2),
        .cout (cout2),
        .sum (sum2)
    );
    
    add16 inst3(
        .a (a[31:16]),
        .b (b[31:16]),
        .cin (cin3),
        .cout (cout3),
        .sum (sum3)
    );
    
    always@(*)begin
        case(cout1)
            0 : sum_q=sum2;
            1 : sum_q=sum3;
        endcase
    end
    
    assign sum = {sum_q,sum1};
    
    /* always @(*)
        case(cout1)
            1'b0 : sum = {sum2,sum1};
            1'b1 : sum = {sum3,sum1};
        endcase*/
    
endmodule
