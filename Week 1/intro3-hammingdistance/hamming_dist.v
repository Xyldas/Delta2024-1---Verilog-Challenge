`timescale 1ns / 1ps

module hamming_d(
  input [15:0] num1, //16bit
  input [15:0] num2, //16bit
  output reg [15:0] hamming
);

  always @* begin
    // Perform bitwise XOR of each bit
    hamming = num1 ^ num2;
  end

endmodule