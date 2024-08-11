`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 20:12:40
// Design Name: 
// Module Name: tb_FIFO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_FIFO(
    );
    
    parameter DSIZE = 8;
    parameter ASIZE = 4;
    
    reg wclk,rclk,wrst_n,rrst_n;
    reg [DSIZE-1:0] wdata;
    reg w_valid,r_valid;
    wire wfull,rempty;
    wire [DSIZE-1:0] rdata;
    
    FIFO_TOP #(.ASIZE(ASIZE),.DSIZE(DSIZE)) FIFO (
        .wclk(wclk),
        .wrst_n(wrst_n),
        .wdata(wdata),
        .w_valid(w_valid),
        .wfull(wfull),
        .rclk(rclk),
        .rrst_n(rrst_n),
        .rdata(rdata),
        .r_valid(r_valid),
        .rempty(rempty)
    ); 
    
    always #5 wclk = ~wclk;
    
  //always #10ns wclk = ~wclk;
  //always #35ns rclk = ~rclk;
  
  
  
endmodule
