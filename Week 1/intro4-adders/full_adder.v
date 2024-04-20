`timescale 1ns / 1ps

module full_adder(
    input a,
    input b,
    input Cin,
    output s,
    output Carry
);

assign s = a ^ b ^ Cin;
assign Carry = (a & b) | (Cin & (a ^ b));

endmodule