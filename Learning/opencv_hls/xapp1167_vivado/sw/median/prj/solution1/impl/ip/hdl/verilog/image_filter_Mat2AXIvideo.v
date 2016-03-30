// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_Mat2AXIvideo (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        img_rows_V_read,
        img_cols_V_read,
        img_data_stream_0_V_dout,
        img_data_stream_0_V_empty_n,
        img_data_stream_0_V_read,
        img_data_stream_1_V_dout,
        img_data_stream_1_V_empty_n,
        img_data_stream_1_V_read,
        img_data_stream_2_V_dout,
        img_data_stream_2_V_empty_n,
        img_data_stream_2_V_read,
        OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv4_F = 4'b1111;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv13_1FFF = 13'b1111111111111;
parameter    ap_const_lv12_1 = 12'b1;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] img_rows_V_read;
input  [11:0] img_cols_V_read;
input  [7:0] img_data_stream_0_V_dout;
input   img_data_stream_0_V_empty_n;
output   img_data_stream_0_V_read;
input  [7:0] img_data_stream_1_V_dout;
input   img_data_stream_1_V_empty_n;
output   img_data_stream_1_V_read;
input  [7:0] img_data_stream_2_V_dout;
input   img_data_stream_2_V_empty_n;
output   img_data_stream_2_V_read;
output  [31:0] OUTPUT_STREAM_TDATA;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output  [3:0] OUTPUT_STREAM_TKEEP;
output  [3:0] OUTPUT_STREAM_TSTRB;
output  [0:0] OUTPUT_STREAM_TUSER;
output  [0:0] OUTPUT_STREAM_TLAST;
output  [0:0] OUTPUT_STREAM_TID;
output  [0:0] OUTPUT_STREAM_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg img_data_stream_0_V_read;
reg img_data_stream_1_V_read;
reg img_data_stream_2_V_read;
reg OUTPUT_STREAM_TVALID;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [11:0] p_3_reg_170;
reg    ap_sig_bdd_60;
wire   [12:0] op2_assign_fu_186_p2;
reg   [12:0] op2_assign_reg_267;
wire   [0:0] exitcond3_fu_197_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_74;
wire   [11:0] i_V_fu_202_p2;
reg   [11:0] i_V_reg_276;
wire   [0:0] exitcond4_fu_208_p2;
reg   [0:0] exitcond4_reg_281;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_85;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_99;
reg    ap_sig_ioackin_OUTPUT_STREAM_TREADY;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [11:0] j_V_fu_213_p2;
wire   [0:0] axi_last_V_fu_223_p2;
reg   [0:0] axi_last_V_reg_290;
reg   [11:0] p_s_reg_159;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_130;
reg   [0:0] tmp_user_V_fu_96;
reg    ap_reg_ioackin_OUTPUT_STREAM_TREADY = 1'b0;
wire   [12:0] tmp_cast_fu_182_p1;
wire   [12:0] tmp_cast_35_fu_219_p1;
reg   [3:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_fu_197_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ioackin_OUTPUT_STREAM_TREADY assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ioackin_OUTPUT_STREAM_TREADY
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
            ap_reg_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_99 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (ap_const_logic_1 == OUTPUT_STREAM_TREADY))) begin
            ap_reg_ioackin_OUTPUT_STREAM_TREADY <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond4_fu_208_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_fu_197_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond4_fu_208_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_fu_197_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond4_fu_208_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond4_fu_208_p2 == ap_const_lv1_0))) begin
        p_3_reg_170 <= j_V_fu_213_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond3_fu_197_p2 == ap_const_lv1_0))) begin
        p_3_reg_170 <= ap_const_lv12_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_s_reg_159 <= i_V_reg_276;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_60)) begin
        p_s_reg_159 <= ap_const_lv12_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        tmp_user_V_fu_96 <= ap_const_lv1_0;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_60)) begin
        tmp_user_V_fu_96 <= ap_const_lv1_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond4_fu_208_p2 == ap_const_lv1_0))) begin
        axi_last_V_reg_290 <= axi_last_V_fu_223_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond4_reg_281 <= exitcond4_fu_208_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_276 <= i_V_fu_202_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_60)) begin
        op2_assign_reg_267 <= op2_assign_fu_186_p2;
    end
end

/// OUTPUT_STREAM_TVALID assign process. ///
always @ (exitcond4_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_99 or ap_reg_ppiten_pp0_it1 or ap_reg_ioackin_OUTPUT_STREAM_TREADY)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_99 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (ap_const_logic_0 == ap_reg_ioackin_OUTPUT_STREAM_TREADY))) begin
        OUTPUT_STREAM_TVALID = ap_const_logic_1;
    end else begin
        OUTPUT_STREAM_TVALID = ap_const_logic_0;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or exitcond3_fu_197_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_fu_197_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (exitcond3_fu_197_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond3_fu_197_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_85)
begin
    if (ap_sig_bdd_85) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_23)
begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_74)
begin
    if (ap_sig_bdd_74) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_3 assign process. ///
always @ (ap_sig_bdd_130)
begin
    if (ap_sig_bdd_130) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_ioackin_OUTPUT_STREAM_TREADY assign process. ///
always @ (OUTPUT_STREAM_TREADY or ap_reg_ioackin_OUTPUT_STREAM_TREADY)
begin
    if ((ap_const_logic_0 == ap_reg_ioackin_OUTPUT_STREAM_TREADY)) begin
        ap_sig_ioackin_OUTPUT_STREAM_TREADY = OUTPUT_STREAM_TREADY;
    end else begin
        ap_sig_ioackin_OUTPUT_STREAM_TREADY = ap_const_logic_1;
    end
end

/// img_data_stream_0_V_read assign process. ///
always @ (exitcond4_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_99 or ap_sig_ioackin_OUTPUT_STREAM_TREADY or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        img_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        img_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// img_data_stream_1_V_read assign process. ///
always @ (exitcond4_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_99 or ap_sig_ioackin_OUTPUT_STREAM_TREADY or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        img_data_stream_1_V_read = ap_const_logic_1;
    end else begin
        img_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// img_data_stream_2_V_read assign process. ///
always @ (exitcond4_reg_281 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_99 or ap_sig_ioackin_OUTPUT_STREAM_TREADY or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        img_data_stream_2_V_read = ap_const_logic_1;
    end else begin
        img_data_stream_2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_60 or exitcond3_fu_197_p2 or exitcond4_fu_208_p2 or exitcond4_reg_281 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_99 or ap_sig_ioackin_OUTPUT_STREAM_TREADY or ap_reg_ppiten_pp0_it1)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_60) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond3_fu_197_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond4_fu_208_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_99 | ((exitcond4_reg_281 == ap_const_lv1_0) & (ap_const_logic_0 == ap_sig_ioackin_OUTPUT_STREAM_TREADY))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond4_fu_208_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OUTPUT_STREAM_TDATA = {{{{{{ap_const_lv8_FF}, {img_data_stream_2_V_dout}}}, {img_data_stream_1_V_dout}}}, {img_data_stream_0_V_dout}};
assign OUTPUT_STREAM_TDEST = ap_const_lv1_0;
assign OUTPUT_STREAM_TID = ap_const_lv1_0;
assign OUTPUT_STREAM_TKEEP = ap_const_lv4_F;
assign OUTPUT_STREAM_TLAST = axi_last_V_reg_290;
assign OUTPUT_STREAM_TSTRB = ap_const_lv4_0;
assign OUTPUT_STREAM_TUSER = tmp_user_V_fu_96;

/// ap_sig_bdd_130 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_130 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_60 assign process. ///
always @ (ap_start or ap_done_reg)
begin
    ap_sig_bdd_60 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_74 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_74 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_85 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_85 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_99 assign process. ///
always @ (img_data_stream_0_V_empty_n or img_data_stream_1_V_empty_n or img_data_stream_2_V_empty_n or exitcond4_reg_281)
begin
    ap_sig_bdd_99 = (((img_data_stream_0_V_empty_n == ap_const_logic_0) & (exitcond4_reg_281 == ap_const_lv1_0)) | ((exitcond4_reg_281 == ap_const_lv1_0) & (img_data_stream_1_V_empty_n == ap_const_logic_0)) | ((exitcond4_reg_281 == ap_const_lv1_0) & (img_data_stream_2_V_empty_n == ap_const_logic_0)));
end
assign axi_last_V_fu_223_p2 = (tmp_cast_35_fu_219_p1 == op2_assign_reg_267? 1'b1: 1'b0);
assign exitcond3_fu_197_p2 = (p_s_reg_159 == img_rows_V_read? 1'b1: 1'b0);
assign exitcond4_fu_208_p2 = (p_3_reg_170 == img_cols_V_read? 1'b1: 1'b0);
assign i_V_fu_202_p2 = (p_s_reg_159 + ap_const_lv12_1);
assign j_V_fu_213_p2 = (p_3_reg_170 + ap_const_lv12_1);
assign op2_assign_fu_186_p2 = ($signed(tmp_cast_fu_182_p1) + $signed(ap_const_lv13_1FFF));
assign tmp_cast_35_fu_219_p1 = p_3_reg_170;
assign tmp_cast_fu_182_p1 = img_cols_V_read;


endmodule //image_filter_Mat2AXIvideo

