// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Aug 11 16:33:58 2024
// Host        : DESKTOP-S44V6ID running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/IISC/Dual_Clock_FIFO/Dual_Clock_FIFO.sim/sim_1/synth/timing/xsim/tb_fifo_parallel_time_synth.v
// Design      : FIFO_TOP
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD1
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module FIFO_MEM
   (rdata_OBUF,
    wclk_IBUF_BUFG,
    wdata_IBUF,
    wclken,
    out,
    \rdata[1] );
  output [7:0]rdata_OBUF;
  input wclk_IBUF_BUFG;
  input [7:0]wdata_IBUF;
  input wclken;
  input [3:0]out;
  input [3:0]\rdata[1] ;

  wire [3:0]out;
  wire [3:0]\rdata[1] ;
  wire [7:0]rdata_OBUF;
  wire wclk_IBUF_BUFG;
  wire wclken;
  wire [7:0]wdata_IBUF;
  wire [1:0]NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "fifo_mem/mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ mem_reg_0_15_0_5
       (.ADDRA({1'b0,\rdata[1] }),
        .ADDRB({1'b0,\rdata[1] }),
        .ADDRC({1'b0,\rdata[1] }),
        .ADDRD({1'b0,out}),
        .DIA(wdata_IBUF[1:0]),
        .DIB(wdata_IBUF[3:2]),
        .DIC(wdata_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata_OBUF[1:0]),
        .DOB(rdata_OBUF[3:2]),
        .DOC(rdata_OBUF[5:4]),
        .DOD(NLW_mem_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(wclk_IBUF_BUFG),
        .WE(wclken));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "fifo_mem/mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_UNIQ_BASE_ mem_reg_0_15_6_7
       (.A0(out[0]),
        .A1(out[1]),
        .A2(out[2]),
        .A3(out[3]),
        .A4(1'b0),
        .D(wdata_IBUF[6]),
        .DPO(rdata_OBUF[6]),
        .DPRA0(\rdata[1] [0]),
        .DPRA1(\rdata[1] [1]),
        .DPRA2(\rdata[1] [2]),
        .DPRA3(\rdata[1] [3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_7_SPO_UNCONNECTED),
        .WCLK(wclk_IBUF_BUFG),
        .WE(wclken));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "fifo_mem/mem_reg_0_15_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_HD1 mem_reg_0_15_6_7__0
       (.A0(out[0]),
        .A1(out[1]),
        .A2(out[2]),
        .A3(out[3]),
        .A4(1'b0),
        .D(wdata_IBUF[7]),
        .DPO(rdata_OBUF[7]),
        .DPRA0(\rdata[1] [0]),
        .DPRA1(\rdata[1] [1]),
        .DPRA2(\rdata[1] [2]),
        .DPRA3(\rdata[1] [3]),
        .DPRA4(1'b0),
        .SPO(NLW_mem_reg_0_15_6_7__0_SPO_UNCONNECTED),
        .WCLK(wclk_IBUF_BUFG),
        .WE(wclken));
endmodule

(* ASIZE = "4" *) (* DSIZE = "8" *) 
(* NotValidForBitStream *)
module FIFO_TOP
   (wclk,
    wrst_n,
    wdata,
    w_valid,
    wfull,
    rclk,
    rrst_n,
    rdata,
    r_valid,
    rempty);
  input wclk;
  input wrst_n;
  input [7:0]wdata;
  input w_valid;
  output wfull;
  input rclk;
  input rrst_n;
  output [7:0]rdata;
  input r_valid;
  output rempty;

  wire r_valid;
  wire r_valid_IBUF;
  wire rclk;
  wire rclk_IBUF;
  wire rclk_IBUF_BUFG;
  wire [7:0]rdata;
  wire [7:0]rdata_OBUF;
  wire rempty;
  wire rempty_OBUF;
  wire [3:0]rptr;
  wire rptr_empty_n_1;
  wire rptr_empty_n_6;
  wire rptr_empty_n_7;
  wire rptr_empty_n_8;
  wire rptr_empty_n_9;
  wire rrst_n;
  wire rrst_n_IBUF;
  wire [3:0]sync;
  wire w2r_sync_n_0;
  wire w2r_sync_n_1;
  wire w2r_sync_n_2;
  wire w2r_sync_n_3;
  wire w_valid;
  wire w_valid_IBUF;
  wire wclk;
  wire wclk_IBUF;
  wire wclk_IBUF_BUFG;
  wire wclken;
  wire [7:0]wdata;
  wire [7:0]wdata_IBUF;
  wire wfull;
  wire wfull_OBUF;
  wire [3:0]wptr;
  wire wptr_full_n_1;
  wire wptr_full_n_6;
  wire wptr_full_n_7;
  wire wptr_full_n_8;
  wire wptr_full_n_9;
  wire wrst_n;
  wire wrst_n_IBUF;

initial begin
 $sdf_annotate("tb_fifo_parallel_time_synth.sdf",,,,"tool_control");
end
  FIFO_MEM fifo_mem
       (.out({wptr_full_n_6,wptr_full_n_7,wptr_full_n_8,wptr_full_n_9}),
        .\rdata[1] ({rptr_empty_n_6,rptr_empty_n_7,rptr_empty_n_8,rptr_empty_n_9}),
        .rdata_OBUF(rdata_OBUF),
        .wclk_IBUF_BUFG(wclk_IBUF_BUFG),
        .wclken(wclken),
        .wdata_IBUF(wdata_IBUF));
  dff_sync r2w_sync
       (.CLK(wclk_IBUF_BUFG),
        .Q(rptr),
        .\meta_reg[0]_0 (wptr_full_n_1),
        .\sync_reg[3]_0 (sync));
  IBUF r_valid_IBUF_inst
       (.I(r_valid),
        .O(r_valid_IBUF));
  BUFG rclk_IBUF_BUFG_inst
       (.I(rclk_IBUF),
        .O(rclk_IBUF_BUFG));
  IBUF rclk_IBUF_inst
       (.I(rclk),
        .O(rclk_IBUF));
  OBUF \rdata_OBUF[0]_inst 
       (.I(rdata_OBUF[0]),
        .O(rdata[0]));
  OBUF \rdata_OBUF[1]_inst 
       (.I(rdata_OBUF[1]),
        .O(rdata[1]));
  OBUF \rdata_OBUF[2]_inst 
       (.I(rdata_OBUF[2]),
        .O(rdata[2]));
  OBUF \rdata_OBUF[3]_inst 
       (.I(rdata_OBUF[3]),
        .O(rdata[3]));
  OBUF \rdata_OBUF[4]_inst 
       (.I(rdata_OBUF[4]),
        .O(rdata[4]));
  OBUF \rdata_OBUF[5]_inst 
       (.I(rdata_OBUF[5]),
        .O(rdata[5]));
  OBUF \rdata_OBUF[6]_inst 
       (.I(rdata_OBUF[6]),
        .O(rdata[6]));
  OBUF \rdata_OBUF[7]_inst 
       (.I(rdata_OBUF[7]),
        .O(rdata[7]));
  OBUF rempty_OBUF_inst
       (.I(rempty_OBUF),
        .O(rempty));
  RPTR_EMPTY rptr_empty
       (.CLK(rclk_IBUF_BUFG),
        .Q(rptr),
        .out({rptr_empty_n_6,rptr_empty_n_7,rptr_empty_n_8,rptr_empty_n_9}),
        .r_valid_IBUF(r_valid_IBUF),
        .rempty_OBUF(rempty_OBUF),
        .rempty_reg_0({w2r_sync_n_0,w2r_sync_n_1,w2r_sync_n_2,w2r_sync_n_3}),
        .rrst_n(rptr_empty_n_1),
        .rrst_n_IBUF(rrst_n_IBUF));
  IBUF rrst_n_IBUF_inst
       (.I(rrst_n),
        .O(rrst_n_IBUF));
  dff_sync_0 w2r_sync
       (.CLK(rclk_IBUF_BUFG),
        .Q(wptr),
        .\sync_reg[0]_0 (rptr_empty_n_1),
        .\sync_reg[3]_0 ({w2r_sync_n_0,w2r_sync_n_1,w2r_sync_n_2,w2r_sync_n_3}));
  IBUF w_valid_IBUF_inst
       (.I(w_valid),
        .O(w_valid_IBUF));
  BUFG wclk_IBUF_BUFG_inst
       (.I(wclk_IBUF),
        .O(wclk_IBUF_BUFG));
  IBUF wclk_IBUF_inst
       (.I(wclk),
        .O(wclk_IBUF));
  IBUF \wdata_IBUF[0]_inst 
       (.I(wdata[0]),
        .O(wdata_IBUF[0]));
  IBUF \wdata_IBUF[1]_inst 
       (.I(wdata[1]),
        .O(wdata_IBUF[1]));
  IBUF \wdata_IBUF[2]_inst 
       (.I(wdata[2]),
        .O(wdata_IBUF[2]));
  IBUF \wdata_IBUF[3]_inst 
       (.I(wdata[3]),
        .O(wdata_IBUF[3]));
  IBUF \wdata_IBUF[4]_inst 
       (.I(wdata[4]),
        .O(wdata_IBUF[4]));
  IBUF \wdata_IBUF[5]_inst 
       (.I(wdata[5]),
        .O(wdata_IBUF[5]));
  IBUF \wdata_IBUF[6]_inst 
       (.I(wdata[6]),
        .O(wdata_IBUF[6]));
  IBUF \wdata_IBUF[7]_inst 
       (.I(wdata[7]),
        .O(wdata_IBUF[7]));
  OBUF wfull_OBUF_inst
       (.I(wfull_OBUF),
        .O(wfull));
  WPTR_FULL wptr_full
       (.CLK(wclk_IBUF_BUFG),
        .Q(wptr),
        .out({wptr_full_n_6,wptr_full_n_7,wptr_full_n_8,wptr_full_n_9}),
        .w_valid_IBUF(w_valid_IBUF),
        .wclken(wclken),
        .wfull_OBUF(wfull_OBUF),
        .wfull_reg_0(sync),
        .wrst_n(wptr_full_n_1),
        .wrst_n_IBUF(wrst_n_IBUF));
  IBUF wrst_n_IBUF_inst
       (.I(wrst_n),
        .O(wrst_n_IBUF));
endmodule

module RPTR_EMPTY
   (rempty_OBUF,
    rrst_n,
    Q,
    out,
    CLK,
    rrst_n_IBUF,
    rempty_reg_0,
    r_valid_IBUF);
  output rempty_OBUF;
  output rrst_n;
  output [3:0]Q;
  output [3:0]out;
  input CLK;
  input rrst_n_IBUF;
  input [3:0]rempty_reg_0;
  input r_valid_IBUF;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]bin2grey;
  wire \bin_reg_n_0_[4] ;
  wire [4:0]binnext;
  wire empty_val;
  wire [3:0]out;
  wire r_valid_IBUF;
  wire rempty_OBUF;
  wire rempty_i_2_n_0;
  wire rempty_i_3_n_0;
  wire [3:0]rempty_reg_0;
  wire \rptr[3]_i_3_n_0 ;
  wire rrst_n;
  wire rrst_n_IBUF;

  LUT3 #(
    .INIT(8'h9A)) 
    \bin[0]_i_1__0 
       (.I0(out[0]),
        .I1(rempty_OBUF),
        .I2(r_valid_IBUF),
        .O(binnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \bin[1]_i_1__0 
       (.I0(out[0]),
        .I1(r_valid_IBUF),
        .I2(rempty_OBUF),
        .I3(out[1]),
        .O(binnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \bin[2]_i_1__0 
       (.I0(rempty_OBUF),
        .I1(r_valid_IBUF),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(binnext[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \bin[3]_i_1__0 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(r_valid_IBUF),
        .I3(rempty_OBUF),
        .I4(out[2]),
        .I5(out[3]),
        .O(binnext[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bin[4]_i_1__0 
       (.I0(\rptr[3]_i_3_n_0 ),
        .I1(out[3]),
        .I2(\bin_reg_n_0_[4] ),
        .O(binnext[4]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(binnext[0]),
        .Q(out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(binnext[1]),
        .Q(out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(binnext[2]),
        .Q(out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(binnext[3]),
        .Q(out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(binnext[4]),
        .Q(\bin_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0900000900000000)) 
    rempty_i_1
       (.I0(binnext[3]),
        .I1(rempty_reg_0[3]),
        .I2(binnext[4]),
        .I3(bin2grey[0]),
        .I4(rempty_reg_0[0]),
        .I5(rempty_i_2_n_0),
        .O(empty_val));
  LUT6 #(
    .INIT(64'h1218182448424281)) 
    rempty_i_2
       (.I0(rempty_reg_0[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(rempty_i_3_n_0),
        .I4(out[1]),
        .I5(rempty_reg_0[2]),
        .O(rempty_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    rempty_i_3
       (.I0(rempty_OBUF),
        .I1(r_valid_IBUF),
        .I2(out[0]),
        .O(rempty_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rempty_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(empty_val),
        .Q(rempty_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h559A)) 
    \rptr[0]_i_1 
       (.I0(out[1]),
        .I1(rempty_OBUF),
        .I2(r_valid_IBUF),
        .I3(out[0]),
        .O(bin2grey[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66665666)) 
    \rptr[1]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(r_valid_IBUF),
        .I4(rempty_OBUF),
        .O(bin2grey[1]));
  LUT6 #(
    .INIT(64'h6566666666666666)) 
    \rptr[2]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(rempty_OBUF),
        .I3(r_valid_IBUF),
        .I4(out[0]),
        .I5(out[1]),
        .O(bin2grey[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h56)) 
    \rptr[3]_i_1 
       (.I0(\bin_reg_n_0_[4] ),
        .I1(out[3]),
        .I2(\rptr[3]_i_3_n_0 ),
        .O(bin2grey[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \rptr[3]_i_2 
       (.I0(rrst_n_IBUF),
        .O(rrst_n));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \rptr[3]_i_3 
       (.I0(out[2]),
        .I1(rempty_OBUF),
        .I2(r_valid_IBUF),
        .I3(out[0]),
        .I4(out[1]),
        .O(\rptr[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(bin2grey[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(bin2grey[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(bin2grey[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rptr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rrst_n),
        .D(bin2grey[3]),
        .Q(Q[3]));
endmodule

module WPTR_FULL
   (wfull_OBUF,
    wrst_n,
    Q,
    out,
    wclken,
    CLK,
    wrst_n_IBUF,
    wfull_reg_0,
    w_valid_IBUF);
  output wfull_OBUF;
  output wrst_n;
  output [3:0]Q;
  output [3:0]out;
  output wclken;
  input CLK;
  input wrst_n_IBUF;
  input [3:0]wfull_reg_0;
  input w_valid_IBUF;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]bin2grey;
  wire \bin_reg_n_0_[4] ;
  wire [4:0]binnext;
  wire [3:0]out;
  wire w_valid_IBUF;
  wire wclken;
  wire wfull_OBUF;
  wire wfull_i_2_n_0;
  wire wfull_i_3_n_0;
  wire [3:0]wfull_reg_0;
  wire wfull_val;
  wire wrst_n;
  wire wrst_n_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \bin[0]_i_1 
       (.I0(out[0]),
        .I1(wfull_OBUF),
        .I2(w_valid_IBUF),
        .O(binnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \bin[1]_i_1 
       (.I0(out[0]),
        .I1(w_valid_IBUF),
        .I2(wfull_OBUF),
        .I3(out[1]),
        .O(binnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \bin[2]_i_1 
       (.I0(wfull_OBUF),
        .I1(w_valid_IBUF),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(binnext[2]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \bin[3]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(w_valid_IBUF),
        .I3(wfull_OBUF),
        .I4(out[2]),
        .I5(out[3]),
        .O(binnext[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bin[4]_i_1 
       (.I0(out[2]),
        .I1(wclken),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(\bin_reg_n_0_[4] ),
        .O(binnext[4]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(binnext[0]),
        .Q(out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(binnext[1]),
        .Q(out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(binnext[2]),
        .Q(out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(binnext[3]),
        .Q(out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bin_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(binnext[4]),
        .Q(\bin_reg_n_0_[4] ));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_15_0_5_i_1
       (.I0(w_valid_IBUF),
        .I1(wfull_OBUF),
        .O(wclken));
  LUT1 #(
    .INIT(2'h1)) 
    \meta[3]_i_1 
       (.I0(wrst_n_IBUF),
        .O(wrst_n));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    wfull_i_1
       (.I0(binnext[3]),
        .I1(wfull_reg_0[3]),
        .I2(bin2grey[0]),
        .I3(wfull_reg_0[0]),
        .I4(wfull_i_2_n_0),
        .I5(binnext[4]),
        .O(wfull_val));
  LUT6 #(
    .INIT(64'h1218182448424281)) 
    wfull_i_2
       (.I0(wfull_reg_0[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(wfull_i_3_n_0),
        .I4(out[1]),
        .I5(wfull_reg_0[2]),
        .O(wfull_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    wfull_i_3
       (.I0(wfull_OBUF),
        .I1(w_valid_IBUF),
        .I2(out[0]),
        .O(wfull_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    wfull_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(wfull_val),
        .Q(wfull_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h559A)) 
    \wptr[0]_i_1 
       (.I0(out[1]),
        .I1(wfull_OBUF),
        .I2(w_valid_IBUF),
        .I3(out[0]),
        .O(bin2grey[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h66665666)) 
    \wptr[1]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(w_valid_IBUF),
        .I4(wfull_OBUF),
        .O(bin2grey[1]));
  LUT6 #(
    .INIT(64'h6566666666666666)) 
    \wptr[2]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(wfull_OBUF),
        .I3(w_valid_IBUF),
        .I4(out[0]),
        .I5(out[1]),
        .O(bin2grey[2]));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \wptr[3]_i_1 
       (.I0(\bin_reg_n_0_[4] ),
        .I1(out[3]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(wclken),
        .I5(out[2]),
        .O(bin2grey[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(bin2grey[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(bin2grey[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(bin2grey[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wptr_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(wrst_n),
        .D(bin2grey[3]),
        .Q(Q[3]));
endmodule

module dff_sync
   (\sync_reg[3]_0 ,
    Q,
    CLK,
    \meta_reg[0]_0 );
  output [3:0]\sync_reg[3]_0 ;
  input [3:0]Q;
  input CLK;
  input \meta_reg[0]_0 ;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]meta;
  wire \meta_reg[0]_0 ;
  wire [3:0]\sync_reg[3]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(Q[0]),
        .Q(meta[0]));
  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(Q[1]),
        .Q(meta[1]));
  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(Q[2]),
        .Q(meta[2]));
  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(Q[3]),
        .Q(meta[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(meta[0]),
        .Q(\sync_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(meta[1]),
        .Q(\sync_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(meta[2]),
        .Q(\sync_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\meta_reg[0]_0 ),
        .D(meta[3]),
        .Q(\sync_reg[3]_0 [3]));
endmodule

(* ORIG_REF_NAME = "dff_sync" *) 
module dff_sync_0
   (\sync_reg[3]_0 ,
    Q,
    CLK,
    \sync_reg[0]_0 );
  output [3:0]\sync_reg[3]_0 ;
  input [3:0]Q;
  input CLK;
  input \sync_reg[0]_0 ;

  wire CLK;
  wire [3:0]Q;
  wire \meta_reg_n_0_[0] ;
  wire \meta_reg_n_0_[1] ;
  wire \meta_reg_n_0_[2] ;
  wire \meta_reg_n_0_[3] ;
  wire \sync_reg[0]_0 ;
  wire [3:0]\sync_reg[3]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(Q[0]),
        .Q(\meta_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(Q[1]),
        .Q(\meta_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(Q[2]),
        .Q(\meta_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \meta_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(Q[3]),
        .Q(\meta_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(\meta_reg_n_0_[0] ),
        .Q(\sync_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(\meta_reg_n_0_[1] ),
        .Q(\sync_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(\meta_reg_n_0_[2] ),
        .Q(\sync_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \sync_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(\meta_reg_n_0_[3] ),
        .Q(\sync_reg[3]_0 [3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
