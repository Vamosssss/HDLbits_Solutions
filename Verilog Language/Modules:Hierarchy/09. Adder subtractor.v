module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
	//An XOR gate can also be viewed as a programmable inverter, where one input controls whether
    //the other should be inverted. 
    
    wire cout;
    wire [31:0]b_xor;
    
    assign b_xor = {32{sub}}^b; 
    add16 adder1(a[15:0], b_xor[15:0], sub, sum[15:0], cout);
    add16 adder2(a[31:16], b_xor[31:16], cout, sum[31:16]);
    
    
endmodule
