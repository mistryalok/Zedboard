`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2016 12:23:12
// Design Name: 
// Module Name: sample_generator_testbench
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


module sample_generator_testbench();
reg             AXI_En;
reg             En;
reg  [7:0]      FrameSize;
wire [31:0]     M_AXIS_tdata;
wire            M_AXIS_tlast;
reg            M_AXIS_tready;
wire [3:0]      M_AXIS_tstrb;
wire            M_AXIS_tvalid;
reg [31:0]      S_AXIS_tdata;
reg             S_AXIS_tlast;
wire            S_AXIS_tready;
reg	[3:0]       S_AXIS_tstrb;
reg             S_AXIS_tvalid;
reg             Clk;
reg             ResetN;

initial begin
    AXI_En=0;
    FrameSize=16;
    S_AXIS_tdata=0;
    S_AXIS_tlast=0;
    S_AXIS_tstrb=0;
    S_AXIS_tvalid=0;
    
end

initial begin	
    Clk = 0;
    forever #5 Clk= ~Clk;
      
end

initial begin
    ResetN=0;
    #100 ResetN = 1;
end

initial begin	
    En = 1;
    #1000 En = 0;
    #100 En = 1;
    
end

initial begin
    M_AXIS_tready = 0;
    #200 M_AXIS_tready=1;
    #2000 M_AXIS_tready=0;
    #200 M_AXIS_tready = 1;
  
end

   design_1_wrapper dut
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
    .m_axis_aclk(Clk),
    .m_axis_aresetn(ResetN));
    
endmodule
