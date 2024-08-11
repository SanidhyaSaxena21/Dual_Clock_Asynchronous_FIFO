module FIFO_MEM #(
    parameter DSIZE = 8,
    parameter ASIZE = 4
) (
    input wclk,
    input [DSIZE-1:0] wdata,
    input wclken,
    input [ASIZE-1:0] waddr,

    output [DSIZE-1:0] rdata,
    input [ASIZE-1:0] raddr

);

localparam DEPTH = 1 << ASIZE;
reg [DSIZE-1:0] mem [0:DEPTH-1];

// Synchronous writes 
always @(posedge wclk) begin
    if(wclken) mem[waddr] <= wdata;
end

// Asynchronous Reads

assign rdata = mem[raddr];
    
endmodule