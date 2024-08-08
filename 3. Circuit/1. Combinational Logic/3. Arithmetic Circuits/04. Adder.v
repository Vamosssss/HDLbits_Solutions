module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire cin;
    assign cin = 0;
    wire cout[3:0];
    
    
    FA FA0(x[0], y[0], cin, cout[0], sum[0]);
    FA FA1(x[1], y[1], cout[0], cout[1], sum[1]);
    FA FA2(x[2], y[2], cout[1], cout[2], sum[2]);
    FA FA3(x[3], y[3], cout[2], sum[4], sum[3]);

endmodule

module FA(
    input x,y,
    input cin,
    output cout,
    output sum
);
    assign cout = x & y | x & cin | y & cin;
    assign sum = x ^ y ^ cin;
    
endmodule
