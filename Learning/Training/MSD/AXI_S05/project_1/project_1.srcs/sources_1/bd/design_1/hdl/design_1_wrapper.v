//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Mon Mar 28 23:20:24 2016
//Host        : ubuntu-desktop running 64-bit Ubuntu 14.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ACLK,
    ARESETN_I,
    ARESETN_P,
    M_AXI_PORT_araddr,
    M_AXI_PORT_arburst,
    M_AXI_PORT_arcache,
    M_AXI_PORT_arid,
    M_AXI_PORT_arlen,
    M_AXI_PORT_arlock,
    M_AXI_PORT_arprot,
    M_AXI_PORT_arqos,
    M_AXI_PORT_arready,
    M_AXI_PORT_arregion,
    M_AXI_PORT_arsize,
    M_AXI_PORT_arvalid,
    M_AXI_PORT_awaddr,
    M_AXI_PORT_awburst,
    M_AXI_PORT_awcache,
    M_AXI_PORT_awid,
    M_AXI_PORT_awlen,
    M_AXI_PORT_awlock,
    M_AXI_PORT_awprot,
    M_AXI_PORT_awqos,
    M_AXI_PORT_awready,
    M_AXI_PORT_awregion,
    M_AXI_PORT_awsize,
    M_AXI_PORT_awvalid,
    M_AXI_PORT_bid,
    M_AXI_PORT_bready,
    M_AXI_PORT_bresp,
    M_AXI_PORT_bvalid,
    M_AXI_PORT_rdata,
    M_AXI_PORT_rid,
    M_AXI_PORT_rlast,
    M_AXI_PORT_rready,
    M_AXI_PORT_rresp,
    M_AXI_PORT_rvalid,
    M_AXI_PORT_wdata,
    M_AXI_PORT_wlast,
    M_AXI_PORT_wready,
    M_AXI_PORT_wstrb,
    M_AXI_PORT_wvalid,
    S_AXI_PORT_araddr,
    S_AXI_PORT_arburst,
    S_AXI_PORT_arcache,
    S_AXI_PORT_arid,
    S_AXI_PORT_arlen,
    S_AXI_PORT_arlock,
    S_AXI_PORT_arprot,
    S_AXI_PORT_arqos,
    S_AXI_PORT_arready,
    S_AXI_PORT_arsize,
    S_AXI_PORT_arvalid,
    S_AXI_PORT_awaddr,
    S_AXI_PORT_awburst,
    S_AXI_PORT_awcache,
    S_AXI_PORT_awid,
    S_AXI_PORT_awlen,
    S_AXI_PORT_awlock,
    S_AXI_PORT_awprot,
    S_AXI_PORT_awqos,
    S_AXI_PORT_awready,
    S_AXI_PORT_awsize,
    S_AXI_PORT_awvalid,
    S_AXI_PORT_bid,
    S_AXI_PORT_bready,
    S_AXI_PORT_bresp,
    S_AXI_PORT_bvalid,
    S_AXI_PORT_rdata,
    S_AXI_PORT_rid,
    S_AXI_PORT_rlast,
    S_AXI_PORT_rready,
    S_AXI_PORT_rresp,
    S_AXI_PORT_rvalid,
    S_AXI_PORT_wdata,
    S_AXI_PORT_wlast,
    S_AXI_PORT_wready,
    S_AXI_PORT_wstrb,
    S_AXI_PORT_wvalid,
    UART_rxd,
    UART_txd,
    interrupt);
  input ACLK;
  input ARESETN_I;
  input ARESETN_P;
  output [31:0]M_AXI_PORT_araddr;
  output [1:0]M_AXI_PORT_arburst;
  output [3:0]M_AXI_PORT_arcache;
  output [1:0]M_AXI_PORT_arid;
  output [7:0]M_AXI_PORT_arlen;
  output [0:0]M_AXI_PORT_arlock;
  output [2:0]M_AXI_PORT_arprot;
  output [3:0]M_AXI_PORT_arqos;
  input [0:0]M_AXI_PORT_arready;
  output [3:0]M_AXI_PORT_arregion;
  output [2:0]M_AXI_PORT_arsize;
  output [0:0]M_AXI_PORT_arvalid;
  output [31:0]M_AXI_PORT_awaddr;
  output [1:0]M_AXI_PORT_awburst;
  output [3:0]M_AXI_PORT_awcache;
  output [1:0]M_AXI_PORT_awid;
  output [7:0]M_AXI_PORT_awlen;
  output [0:0]M_AXI_PORT_awlock;
  output [2:0]M_AXI_PORT_awprot;
  output [3:0]M_AXI_PORT_awqos;
  input [0:0]M_AXI_PORT_awready;
  output [3:0]M_AXI_PORT_awregion;
  output [2:0]M_AXI_PORT_awsize;
  output [0:0]M_AXI_PORT_awvalid;
  input [1:0]M_AXI_PORT_bid;
  output [0:0]M_AXI_PORT_bready;
  input [1:0]M_AXI_PORT_bresp;
  input [0:0]M_AXI_PORT_bvalid;
  input [31:0]M_AXI_PORT_rdata;
  input [1:0]M_AXI_PORT_rid;
  input [0:0]M_AXI_PORT_rlast;
  output [0:0]M_AXI_PORT_rready;
  input [1:0]M_AXI_PORT_rresp;
  input [0:0]M_AXI_PORT_rvalid;
  output [31:0]M_AXI_PORT_wdata;
  output [0:0]M_AXI_PORT_wlast;
  input [0:0]M_AXI_PORT_wready;
  output [3:0]M_AXI_PORT_wstrb;
  output [0:0]M_AXI_PORT_wvalid;
  input [31:0]S_AXI_PORT_araddr;
  input [1:0]S_AXI_PORT_arburst;
  input [3:0]S_AXI_PORT_arcache;
  input [1:0]S_AXI_PORT_arid;
  input [7:0]S_AXI_PORT_arlen;
  input [0:0]S_AXI_PORT_arlock;
  input [2:0]S_AXI_PORT_arprot;
  input [3:0]S_AXI_PORT_arqos;
  output [0:0]S_AXI_PORT_arready;
  input [2:0]S_AXI_PORT_arsize;
  input [0:0]S_AXI_PORT_arvalid;
  input [31:0]S_AXI_PORT_awaddr;
  input [1:0]S_AXI_PORT_awburst;
  input [3:0]S_AXI_PORT_awcache;
  input [1:0]S_AXI_PORT_awid;
  input [7:0]S_AXI_PORT_awlen;
  input [0:0]S_AXI_PORT_awlock;
  input [2:0]S_AXI_PORT_awprot;
  input [3:0]S_AXI_PORT_awqos;
  output [0:0]S_AXI_PORT_awready;
  input [2:0]S_AXI_PORT_awsize;
  input [0:0]S_AXI_PORT_awvalid;
  output [1:0]S_AXI_PORT_bid;
  input [0:0]S_AXI_PORT_bready;
  output [1:0]S_AXI_PORT_bresp;
  output [0:0]S_AXI_PORT_bvalid;
  output [31:0]S_AXI_PORT_rdata;
  output [1:0]S_AXI_PORT_rid;
  output [0:0]S_AXI_PORT_rlast;
  input [0:0]S_AXI_PORT_rready;
  output [1:0]S_AXI_PORT_rresp;
  output [0:0]S_AXI_PORT_rvalid;
  input [31:0]S_AXI_PORT_wdata;
  input [0:0]S_AXI_PORT_wlast;
  output [0:0]S_AXI_PORT_wready;
  input [3:0]S_AXI_PORT_wstrb;
  input [0:0]S_AXI_PORT_wvalid;
  input UART_rxd;
  output UART_txd;
  output interrupt;

  wire ACLK;
  wire ARESETN_I;
  wire ARESETN_P;
  wire [31:0]M_AXI_PORT_araddr;
  wire [1:0]M_AXI_PORT_arburst;
  wire [3:0]M_AXI_PORT_arcache;
  wire [1:0]M_AXI_PORT_arid;
  wire [7:0]M_AXI_PORT_arlen;
  wire [0:0]M_AXI_PORT_arlock;
  wire [2:0]M_AXI_PORT_arprot;
  wire [3:0]M_AXI_PORT_arqos;
  wire [0:0]M_AXI_PORT_arready;
  wire [3:0]M_AXI_PORT_arregion;
  wire [2:0]M_AXI_PORT_arsize;
  wire [0:0]M_AXI_PORT_arvalid;
  wire [31:0]M_AXI_PORT_awaddr;
  wire [1:0]M_AXI_PORT_awburst;
  wire [3:0]M_AXI_PORT_awcache;
  wire [1:0]M_AXI_PORT_awid;
  wire [7:0]M_AXI_PORT_awlen;
  wire [0:0]M_AXI_PORT_awlock;
  wire [2:0]M_AXI_PORT_awprot;
  wire [3:0]M_AXI_PORT_awqos;
  wire [0:0]M_AXI_PORT_awready;
  wire [3:0]M_AXI_PORT_awregion;
  wire [2:0]M_AXI_PORT_awsize;
  wire [0:0]M_AXI_PORT_awvalid;
  wire [1:0]M_AXI_PORT_bid;
  wire [0:0]M_AXI_PORT_bready;
  wire [1:0]M_AXI_PORT_bresp;
  wire [0:0]M_AXI_PORT_bvalid;
  wire [31:0]M_AXI_PORT_rdata;
  wire [1:0]M_AXI_PORT_rid;
  wire [0:0]M_AXI_PORT_rlast;
  wire [0:0]M_AXI_PORT_rready;
  wire [1:0]M_AXI_PORT_rresp;
  wire [0:0]M_AXI_PORT_rvalid;
  wire [31:0]M_AXI_PORT_wdata;
  wire [0:0]M_AXI_PORT_wlast;
  wire [0:0]M_AXI_PORT_wready;
  wire [3:0]M_AXI_PORT_wstrb;
  wire [0:0]M_AXI_PORT_wvalid;
  wire [31:0]S_AXI_PORT_araddr;
  wire [1:0]S_AXI_PORT_arburst;
  wire [3:0]S_AXI_PORT_arcache;
  wire [1:0]S_AXI_PORT_arid;
  wire [7:0]S_AXI_PORT_arlen;
  wire [0:0]S_AXI_PORT_arlock;
  wire [2:0]S_AXI_PORT_arprot;
  wire [3:0]S_AXI_PORT_arqos;
  wire [0:0]S_AXI_PORT_arready;
  wire [2:0]S_AXI_PORT_arsize;
  wire [0:0]S_AXI_PORT_arvalid;
  wire [31:0]S_AXI_PORT_awaddr;
  wire [1:0]S_AXI_PORT_awburst;
  wire [3:0]S_AXI_PORT_awcache;
  wire [1:0]S_AXI_PORT_awid;
  wire [7:0]S_AXI_PORT_awlen;
  wire [0:0]S_AXI_PORT_awlock;
  wire [2:0]S_AXI_PORT_awprot;
  wire [3:0]S_AXI_PORT_awqos;
  wire [0:0]S_AXI_PORT_awready;
  wire [2:0]S_AXI_PORT_awsize;
  wire [0:0]S_AXI_PORT_awvalid;
  wire [1:0]S_AXI_PORT_bid;
  wire [0:0]S_AXI_PORT_bready;
  wire [1:0]S_AXI_PORT_bresp;
  wire [0:0]S_AXI_PORT_bvalid;
  wire [31:0]S_AXI_PORT_rdata;
  wire [1:0]S_AXI_PORT_rid;
  wire [0:0]S_AXI_PORT_rlast;
  wire [0:0]S_AXI_PORT_rready;
  wire [1:0]S_AXI_PORT_rresp;
  wire [0:0]S_AXI_PORT_rvalid;
  wire [31:0]S_AXI_PORT_wdata;
  wire [0:0]S_AXI_PORT_wlast;
  wire [0:0]S_AXI_PORT_wready;
  wire [3:0]S_AXI_PORT_wstrb;
  wire [0:0]S_AXI_PORT_wvalid;
  wire UART_rxd;
  wire UART_txd;
  wire interrupt;

design_1 design_1_i
       (.ACLK(ACLK),
        .ARESETN_I(ARESETN_I),
        .ARESETN_P(ARESETN_P),
        .M_AXI_PORT_araddr(M_AXI_PORT_araddr),
        .M_AXI_PORT_arburst(M_AXI_PORT_arburst),
        .M_AXI_PORT_arcache(M_AXI_PORT_arcache),
        .M_AXI_PORT_arid(M_AXI_PORT_arid),
        .M_AXI_PORT_arlen(M_AXI_PORT_arlen),
        .M_AXI_PORT_arlock(M_AXI_PORT_arlock),
        .M_AXI_PORT_arprot(M_AXI_PORT_arprot),
        .M_AXI_PORT_arqos(M_AXI_PORT_arqos),
        .M_AXI_PORT_arready(M_AXI_PORT_arready),
        .M_AXI_PORT_arregion(M_AXI_PORT_arregion),
        .M_AXI_PORT_arsize(M_AXI_PORT_arsize),
        .M_AXI_PORT_arvalid(M_AXI_PORT_arvalid),
        .M_AXI_PORT_awaddr(M_AXI_PORT_awaddr),
        .M_AXI_PORT_awburst(M_AXI_PORT_awburst),
        .M_AXI_PORT_awcache(M_AXI_PORT_awcache),
        .M_AXI_PORT_awid(M_AXI_PORT_awid),
        .M_AXI_PORT_awlen(M_AXI_PORT_awlen),
        .M_AXI_PORT_awlock(M_AXI_PORT_awlock),
        .M_AXI_PORT_awprot(M_AXI_PORT_awprot),
        .M_AXI_PORT_awqos(M_AXI_PORT_awqos),
        .M_AXI_PORT_awready(M_AXI_PORT_awready),
        .M_AXI_PORT_awregion(M_AXI_PORT_awregion),
        .M_AXI_PORT_awsize(M_AXI_PORT_awsize),
        .M_AXI_PORT_awvalid(M_AXI_PORT_awvalid),
        .M_AXI_PORT_bid(M_AXI_PORT_bid),
        .M_AXI_PORT_bready(M_AXI_PORT_bready),
        .M_AXI_PORT_bresp(M_AXI_PORT_bresp),
        .M_AXI_PORT_bvalid(M_AXI_PORT_bvalid),
        .M_AXI_PORT_rdata(M_AXI_PORT_rdata),
        .M_AXI_PORT_rid(M_AXI_PORT_rid),
        .M_AXI_PORT_rlast(M_AXI_PORT_rlast),
        .M_AXI_PORT_rready(M_AXI_PORT_rready),
        .M_AXI_PORT_rresp(M_AXI_PORT_rresp),
        .M_AXI_PORT_rvalid(M_AXI_PORT_rvalid),
        .M_AXI_PORT_wdata(M_AXI_PORT_wdata),
        .M_AXI_PORT_wlast(M_AXI_PORT_wlast),
        .M_AXI_PORT_wready(M_AXI_PORT_wready),
        .M_AXI_PORT_wstrb(M_AXI_PORT_wstrb),
        .M_AXI_PORT_wvalid(M_AXI_PORT_wvalid),
        .S_AXI_PORT_araddr(S_AXI_PORT_araddr),
        .S_AXI_PORT_arburst(S_AXI_PORT_arburst),
        .S_AXI_PORT_arcache(S_AXI_PORT_arcache),
        .S_AXI_PORT_arid(S_AXI_PORT_arid),
        .S_AXI_PORT_arlen(S_AXI_PORT_arlen),
        .S_AXI_PORT_arlock(S_AXI_PORT_arlock),
        .S_AXI_PORT_arprot(S_AXI_PORT_arprot),
        .S_AXI_PORT_arqos(S_AXI_PORT_arqos),
        .S_AXI_PORT_arready(S_AXI_PORT_arready),
        .S_AXI_PORT_arsize(S_AXI_PORT_arsize),
        .S_AXI_PORT_arvalid(S_AXI_PORT_arvalid),
        .S_AXI_PORT_awaddr(S_AXI_PORT_awaddr),
        .S_AXI_PORT_awburst(S_AXI_PORT_awburst),
        .S_AXI_PORT_awcache(S_AXI_PORT_awcache),
        .S_AXI_PORT_awid(S_AXI_PORT_awid),
        .S_AXI_PORT_awlen(S_AXI_PORT_awlen),
        .S_AXI_PORT_awlock(S_AXI_PORT_awlock),
        .S_AXI_PORT_awprot(S_AXI_PORT_awprot),
        .S_AXI_PORT_awqos(S_AXI_PORT_awqos),
        .S_AXI_PORT_awready(S_AXI_PORT_awready),
        .S_AXI_PORT_awsize(S_AXI_PORT_awsize),
        .S_AXI_PORT_awvalid(S_AXI_PORT_awvalid),
        .S_AXI_PORT_bid(S_AXI_PORT_bid),
        .S_AXI_PORT_bready(S_AXI_PORT_bready),
        .S_AXI_PORT_bresp(S_AXI_PORT_bresp),
        .S_AXI_PORT_bvalid(S_AXI_PORT_bvalid),
        .S_AXI_PORT_rdata(S_AXI_PORT_rdata),
        .S_AXI_PORT_rid(S_AXI_PORT_rid),
        .S_AXI_PORT_rlast(S_AXI_PORT_rlast),
        .S_AXI_PORT_rready(S_AXI_PORT_rready),
        .S_AXI_PORT_rresp(S_AXI_PORT_rresp),
        .S_AXI_PORT_rvalid(S_AXI_PORT_rvalid),
        .S_AXI_PORT_wdata(S_AXI_PORT_wdata),
        .S_AXI_PORT_wlast(S_AXI_PORT_wlast),
        .S_AXI_PORT_wready(S_AXI_PORT_wready),
        .S_AXI_PORT_wstrb(S_AXI_PORT_wstrb),
        .S_AXI_PORT_wvalid(S_AXI_PORT_wvalid),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .interrupt(interrupt));
endmodule
