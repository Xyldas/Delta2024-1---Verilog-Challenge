`timescale 1ns / 1ps

module ring_counter (
  input wire clk,
  input wire clear,
  output reg [3:0] q
);

  initial begin
    q = 4'b0001;
  end

  always @(negedge clk or posedge clear) begin
    if (reset) begin
      q <= 4'b0001;
    end 
    else begin
      q <= {q[0], q[3:1]}; // shift to right
    end
  end

endmodule
