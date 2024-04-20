`timescale 1ns / 1ps

module half_adder(
    input a,
    input b,
    output s,
    output carry
);

assign s = a ^ b;
assign carry = a & b;

endmodule