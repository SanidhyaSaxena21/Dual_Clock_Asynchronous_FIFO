module FIFO_TOP #( 
    parameter DSIZE=8,
    parameter ASIZE =4
)(
    input wclk,
    input wrst_n,
    input [DSIZE-1:0] wdata,
    input w_valid,
    output wfull,

    input rclk,
    input rrst_n,
    output [DSIZE-1:0] rdata,
    input r_valid,
    output rempty,
    input rvalid
);

reg [ASIZE-1:0] waddr,raddr;
reg [ASIZE:0] wptr,rptr,wq2_rptr,rq2_wptr;

assign wclken = (w_valid & ~wfull )
FIFO_MEM #(.DSIZE(8),.ASIZE(4)) fifo_mem            (.wclk(wclk),
                                                        .wclken(wclken),
                                                        .wdata(wdata),
                                                        .rdata(rdata),
                                                        .waddr(waddr),
                                                        .raddr(raddr));

WPTR_FULL #(.ASIZE(4)) wptr_full                       (.wclk(wclk),
                                                        .wrst_n(wrst_n),
                                                        .winc(w_valid),
                                                        .wfull(wfull),
                                                        .waddr(waddr),
                                                        .wptr(wptr),
                                                        .wq2_rptr(wq2_rptr));

RPTR_EMPTY #(.ASIZE(4)) rptr_empty                     (.rclk(rclk),
                                                        .rrst_n(rrst_n),
                                                        .rinc(r_valid),
                                                        .rempty(rempty),
                                                        .raddr(raddr),
                                                        .rptr(rptr),
                                                        .rq2_wptr(rq2_wptr));


dff_sync #(.WIDTH(ASIZE)) r2w_sync                    (.clk(wclk)
                                                        .rst_n(wrst_n)
                                                        .async(rptr).
                                                        .sync(wq2_rptr));
                                 
dff_sync #(.WIDTH(ASIZE)) w2r_sync                    (.clk(rclk),
                                                        .rst_n(rrst_n),
                                                        .async(wptr),
                                                        .sync(rq2_wptr));



    
endmodule