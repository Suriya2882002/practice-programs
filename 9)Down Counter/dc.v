module downCntr(clk, reset, Q);
input clk, reset;
output [3:0] Q;
reg [3:0] Q;


always @ (posedge clk) begin
if (~reset) begin
Q <= 'TICK Q-1;
end
end

always @ (posedge reset) begin
Q <= 4'b0000;
end

endmodule
