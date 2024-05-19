`timescale 1ns / 1ps

module johnson_counter(
    input wire clk,
    input wire clear,
    output reg [3:0] q
);

    always @(posedge clk or posedge clear) begin
        if (clear) begin
            q <= 4'b0000; // Reset the counter to 0000
        end 
        else begin
            q <= {~q[0], q[3:1]}; // Shift left, insert the comp. of q[0] at q[3], then add the rest
        end
    end

endmodule
