module dff_sync #(
    parameter WIDTH = 4
) (
    input [WIDTH:0] async,
    input clk,
    input rst_n,
    output reg [WIDTH:0] sync
);

reg [WIDTH-1:0] meta;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        sync <= {WIDTH{1'b0}};
        meta <= {WIDTH{1'b0}};
    end
    else begin
        meta <= async;
        sync <= meta;
    end
end

endmodule