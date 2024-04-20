`timescale 1ns / 1ps

module n_bit_adder(
    input [N-1:0] a,
    input [N-1:0] b,
    input Cin,
    output [N-1:0] s,
    output Cout
);

// Declare wires for carry
wire [N:0] carry;

// Call the full adders here
genvar i;
generate
    for (i = 0; i < N; i = i + 1) begin
        full_adder FA(
            .a(a[i]),                // Connect the values
            .b(b[i]),                
            .Cin(carry[i]),          
            .s(s[i]),                
            .Carry(carry[i+1])       
        );
    end
endgenerate

// Assign the first carry-in
assign carry[0] = Cin;

// Assign the carry-out as Cout
assign Cout = carry[N];

endmodule
