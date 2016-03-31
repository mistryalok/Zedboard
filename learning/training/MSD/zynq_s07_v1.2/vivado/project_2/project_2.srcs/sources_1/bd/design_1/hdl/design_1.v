//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Thu Mar 31 12:12:30 2016
//Host        : alok-laptop running 64-bit Ubuntu 14.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
   (AXI_En,
    En,
    FrameSize,
    M_AXIS_tdata,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tstrb,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tstrb,
    S_AXIS_tvalid,
    m_axis_aclk,
    m_axis_aresetn);
  input AXI_En;
  input En;
  input [7:0]FrameSize;
  output [31:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
  output [3:0]M_AXIS_tstrb;
  output M_AXIS_tvalid;
  input [31:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input [3:0]S_AXIS_tstrb;
  input S_AXIS_tvalid;
  input m_axis_aclk;
  input m_axis_aresetn;

  wire AXI_En_1;
  wire En_1;
  wire [7:0]FrameSize_1;
  wire [31:0]S_AXIS_1_TDATA;
  wire S_AXIS_1_TLAST;
  wire S_AXIS_1_TREADY;
  wire [3:0]S_AXIS_1_TSTRB;
  wire S_AXIS_1_TVALID;
  wire m_axis_aclk_1;
  wire m_axis_aresetn_1;
  wire [31:0]sample_generator_0_M_AXIS_TDATA;
  wire sample_generator_0_M_AXIS_TLAST;
  wire sample_generator_0_M_AXIS_TREADY;
  wire [3:0]sample_generator_0_M_AXIS_TSTRB;
  wire sample_generator_0_M_AXIS_TVALID;

  assign AXI_En_1 = AXI_En;
  assign En_1 = En;
  assign FrameSize_1 = FrameSize[7:0];
  assign M_AXIS_tdata[31:0] = sample_generator_0_M_AXIS_TDATA;
  assign M_AXIS_tlast = sample_generator_0_M_AXIS_TLAST;
  assign M_AXIS_tstrb[3:0] = sample_generator_0_M_AXIS_TSTRB;
  assign M_AXIS_tvalid = sample_generator_0_M_AXIS_TVALID;
  assign S_AXIS_1_TDATA = S_AXIS_tdata[31:0];
  assign S_AXIS_1_TLAST = S_AXIS_tlast;
  assign S_AXIS_1_TSTRB = S_AXIS_tstrb[3:0];
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXIS_tready = S_AXIS_1_TREADY;
  assign m_axis_aclk_1 = m_axis_aclk;
  assign m_axis_aresetn_1 = m_axis_aresetn;
  assign sample_generator_0_M_AXIS_TREADY = M_AXIS_tready;
design_1_sample_generator_0_0 sample_generator_0
       (.AXI_En(AXI_En_1),
        .En(En_1),
        .FrameSize(FrameSize_1),
        .m_axis_aclk(m_axis_aclk_1),
        .m_axis_aresetn(m_axis_aresetn_1),
        .m_axis_tdata(sample_generator_0_M_AXIS_TDATA),
        .m_axis_tlast(sample_generator_0_M_AXIS_TLAST),
        .m_axis_tready(sample_generator_0_M_AXIS_TREADY),
        .m_axis_tstrb(sample_generator_0_M_AXIS_TSTRB),
        .m_axis_tvalid(sample_generator_0_M_AXIS_TVALID),
        .s_axis_aclk(m_axis_aclk_1),
        .s_axis_aresetn(m_axis_aresetn_1),
        .s_axis_tdata(S_AXIS_1_TDATA),
        .s_axis_tlast(S_AXIS_1_TLAST),
        .s_axis_tready(S_AXIS_1_TREADY),
        .s_axis_tstrb(S_AXIS_1_TSTRB),
        .s_axis_tvalid(S_AXIS_1_TVALID));
endmodule
