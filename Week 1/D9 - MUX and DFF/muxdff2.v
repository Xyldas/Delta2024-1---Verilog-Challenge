module muxdff2 (
    input clk,
    input w, R, E, L,
    output reg Q
);
	wire D,Z;
    assign Z = E ? w : Q;
    assign D = L ? R : Z;
    
    always@(posedge clk) begin
        Q <= D;
    end
    
endmodule
