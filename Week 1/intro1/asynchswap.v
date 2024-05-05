`timescale 1ns/1ps

module swap (
    input rst,clk,
    input wire a,b
    output reg reg_a, reg_b
    );

  always @ (posedge clk or negedge reset) begin
    if (rst==1) begin
        reg_a<=0;
        reg_b<=0;
        end
    else 
      begin
      reg_a<=b;
      reg_b<=a;
      end
    end
  
endmodule
