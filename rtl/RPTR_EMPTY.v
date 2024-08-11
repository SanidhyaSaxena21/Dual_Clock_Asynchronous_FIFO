module RPTR_EMPTY #(
    parameter ASIZE=4
) (
    input rinc,
    input rclk,
    input rrst_n,
    input [ASIZE:0] rq2_wptr,
    output reg rempty,

    output [ASIZE-1:0] raddr,
    output reg [ASIZE:0] rptr
);

reg [ASIZE:0] bin;
wire [ASIZE:0] binnext,bin2grey;
wire empty_val;

// Dual n-bit grey code counter
always @(posedge rclk or negedge rrst_n) begin
    if(!rrst_n) begin
        bin <= 0;
        rptr <= 0;
    end
    else begin
        bin <= binnext; // Will be used for addressing memory 
        rptr <= bin2grey; // Will be used for full condition and to be sent to read side
    end
end

assign binnext = bin + (rinc & ~rempty);

assign bin2grey = (binnext >> 1) ^ binnext ;

assign raddr = bin[ASIZE-1:0];

// Conditions for FUll ---------------------------------------------------
// 1) wptr[MSB] != wq2_rptr[MSB]
// 2) wptr[MSB-1] != wq2_rptr[MSB-1]
// 3) wptr[MSB-2:0] == wq2_rptr[MSB-2:0]
//------------------------------------------------------------------------

assign empty_val = (bin2grey == rq2_wptr);

always @(posedge rclk or negedge rrst_n) begin
    if(!rrst_n) rempty <= 1'b0;
    else rempty <= empty_val;
end



    
endmodule