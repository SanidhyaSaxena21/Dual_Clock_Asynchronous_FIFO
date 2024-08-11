`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 22:29:49
// Design Name: 
// Module Name: tb_fifo
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


module tb_fifo(

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
    
    
  always #10 wclk = ~wclk;
  always #35 rclk = ~rclk;
  
  reg [DSIZE-1:0] wdata_q[$], din;
  
  initial begin
    wclk = 1'b0; wrst_n = 1'b0;
    w_valid = 1'b0;
    wdata = 0;
    
    repeat(10) @(posedge wclk);
    wrst_n = 1'b1;

    repeat(2) begin
      for (int i=0; i<30; i++) begin
        @(posedge wclk iff !wfull);
        w_valid = (i%2 == 0)? 1'b1 : 1'b0;
        if (w_valid) begin
          wdata = $urandom;
          wdata_q.push_back(wdata);
        end
      end
      #50;
    end
  end
  
  initial begin
    rclk = 1'b0; rrst_n = 1'b0;
    r_valid = 1'b0;

    repeat(20) @(posedge rclk);
    rrst_n = 1'b1;

    repeat(2) begin
      for (int i=0; i<30; i++) begin
        @(posedge rclk iff !rempty);
        r_valid = (i%2 == 0)? 1'b1 : 1'b0;
        if (r_valid) begin
          din = wdata_q.pop_front();
          if(rdata !== din) $error("Time = %0t: Comparison Failed: expected wr_data = %h, rd_data = %h", $time, din, rdata);
          else $display("Time = %0t: Comparison Passed: wr_data = %h and rd_data = %h",$time, din, rdata);
        end
      end
      #50;
    end

    $finish;
  end  

endmodule
