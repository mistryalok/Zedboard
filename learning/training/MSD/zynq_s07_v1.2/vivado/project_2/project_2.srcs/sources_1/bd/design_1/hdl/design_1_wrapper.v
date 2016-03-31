//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Thu Mar 31 18:01:07 2016
//Host        : lubuntu running 64-bit Ubuntu 15.04
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire AXI_En;
  wire En;
  wire [7:0]FrameSize;
  wire [31:0]M_AXIS_tdata;
  wire M_AXIS_tlast;
  wire M_AXIS_tready;
  wire [3:0]M_AXIS_tstrb;
  wire M_AXIS_tvalid;
  wire [31:0]S_AXIS_tdata;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire [3:0]S_AXIS_tstrb;
  wire S_AXIS_tvalid;
  wire m_axis_aclk;
  wire m_axis_aresetn;

design_1 design_1_i
       (.AXI_En(AXI_En),
        .En(En),
        .FrameSize(FrameSize),
        .M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tlast(M_AXIS_tlast),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tstrb(M_AXIS_tstrb),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tlast(S_AXIS_tlast),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tstrb(S_AXIS_tstrb),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn));
endmodule
