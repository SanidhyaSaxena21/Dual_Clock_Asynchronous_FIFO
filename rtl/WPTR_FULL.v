module WPTR_FULL #(
    parameter ASIZE=4
) (
    input winc,
    input wclk,
    input wrst_n,
    input [ASIZE:0] wq2_rptr,
    output reg wfull,

    output [ASIZE-1:0] waddr,
    output reg [ASIZE:0] wptr
);

reg [ASIZE:0] bin;
wire [ASIZE:0] binnext,bin2grey;
wire wfull_val;

// Dual n-bit grey code counter
always @(posedge wclk or negedge wrst_n) begin
    if(!wrst_n) begin
        bin <= 0;
        wptr <= 0;
    end
    else begin
        bin <= binnext; // Will be used for addressing memory 
        wptr <= bin2grey; // Will be used for full condition and to be sent to read side
    end
end

assign binnext = bin + (winc & ~wfull);

assign bin2grey = (binnext >> 1) ^ binnext ;

assign waddr = bin[ASIZE-1:0];

// Conditions for FUll ---------------------------------------------------
// 1) wptr[MSB] != wq2_rptr[MSB]
// 2) wptr[MSB-1] != wq2_rptr[MSB-1]
// 3) wptr[MSB-2:0] == wq2_rptr[MSB-2:0]
//------------------------------------------------------------------------

assign wfull_val = (bin2grey == {~wq2_rptr[ASIZE:ASIZE-1],wq2_rptr[ASIZE-2:0]});

always @(posedge wclk or negedge wrst_n) begin
    if(!wrst_n) wfull <= 1'b0;
    else wfull <= wfull_val;
end



    
endmodule