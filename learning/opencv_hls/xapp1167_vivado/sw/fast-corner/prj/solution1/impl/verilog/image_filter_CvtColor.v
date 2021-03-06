// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module image_filter_CvtColor (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_src_rows_V_read,
        p_src_cols_V_read,
        p_src_data_stream_0_V_dout,
        p_src_data_stream_0_V_empty_n,
        p_src_data_stream_0_V_read,
        p_src_data_stream_1_V_dout,
        p_src_data_stream_1_V_empty_n,
        p_src_data_stream_1_V_read,
        p_src_data_stream_2_V_dout,
        p_src_data_stream_2_V_empty_n,
        p_src_data_stream_2_V_read,
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st10_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv31_4C8B43 = 31'b10011001000101101000011;
parameter    ap_const_lv30_1D2F1A = 30'b111010010111100011010;
parameter    ap_const_lv32_9645A1 = 32'b100101100100010110100001;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] p_src_rows_V_read;
input  [11:0] p_src_cols_V_read;
input  [7:0] p_src_data_stream_0_V_dout;
input   p_src_data_stream_0_V_empty_n;
output   p_src_data_stream_0_V_read;
input  [7:0] p_src_data_stream_1_V_dout;
input   p_src_data_stream_1_V_empty_n;
output   p_src_data_stream_1_V_read;
input  [7:0] p_src_data_stream_2_V_dout;
input   p_src_data_stream_2_V_empty_n;
output   p_src_data_stream_2_V_read;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_0_V_read;
reg p_src_data_stream_1_V_read;
reg p_src_data_stream_2_V_read;
reg p_dst_data_stream_V_write;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_22;
reg   [10:0] j_reg_144;
wire   [0:0] exitcond2_fu_160_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_61;
wire   [10:0] i_1_fu_165_p2;
reg   [10:0] i_1_reg_308;
wire   [0:0] exitcond_fu_175_p2;
reg   [0:0] exitcond_reg_313;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_72;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_86;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg    ap_reg_ppiten_pp0_it3 = 1'b0;
reg    ap_reg_ppiten_pp0_it4 = 1'b0;
reg    ap_reg_ppiten_pp0_it5 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_reg_313_pp0_it5;
reg    ap_sig_bdd_102;
reg    ap_reg_ppiten_pp0_it6 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_reg_313_pp0_it1;
reg   [0:0] ap_reg_ppstg_exitcond_reg_313_pp0_it2;
reg   [0:0] ap_reg_ppstg_exitcond_reg_313_pp0_it3;
reg   [0:0] ap_reg_ppstg_exitcond_reg_313_pp0_it4;
wire   [10:0] j_1_fu_180_p2;
reg   [7:0] tmp_10_reg_322;
reg   [7:0] tmp_11_reg_327;
reg   [7:0] ap_reg_ppstg_tmp_11_reg_327_pp0_it2;
wire   [30:0] grp_fu_190_p2;
reg   [30:0] r_V_4_i_reg_347;
wire   [31:0] tmp_i_cast_fu_223_p1;
reg   [31:0] tmp_i_cast_reg_352;
reg   [0:0] tmp_7_reg_357;
wire   [7:0] p_Val2_4_fu_262_p2;
reg   [7:0] p_Val2_4_reg_362;
reg   [0:0] tmp_8_reg_367;
reg   [10:0] i_reg_133;
reg    ap_sig_cseq_ST_st10_fsm_3;
reg    ap_sig_bdd_169;
wire   [11:0] i_cast_fu_156_p1;
wire   [11:0] j_cast_fu_171_p1;
wire   [7:0] grp_fu_190_p0;
wire   [23:0] grp_fu_190_p1;
wire   [7:0] grp_fu_199_p0;
wire   [21:0] grp_fu_199_p1;
wire   [7:0] grp_fu_208_p0;
wire   [24:0] grp_fu_208_p1;
wire   [29:0] grp_fu_199_p2;
wire   [30:0] tmp1_i_cast_fu_214_p1;
wire   [30:0] p_Val2_1_fu_218_p2;
wire   [31:0] grp_fu_208_p2;
wire   [31:0] r_V_1_fu_227_p2;
wire   [0:0] tmp_fu_242_p3;
wire   [7:0] p_Val2_3_fu_232_p4;
wire   [7:0] tmp_3_i_i_i_fu_250_p1;
wire   [0:0] p_Result_2_i_i_i_not_fu_276_p2;
wire   [0:0] not_carry_fu_281_p2;
reg    grp_fu_190_ce;
reg    grp_fu_199_ce;
reg    grp_fu_208_ce;
reg   [3:0] ap_NS_fsm;
wire   [30:0] grp_fu_190_p00;
wire   [29:0] grp_fu_199_p00;
wire   [31:0] grp_fu_208_p00;


image_filter_mul_8ns_24ns_31_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 31 ))
image_filter_mul_8ns_24ns_31_3_U43(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_190_p0 ),
    .din1( grp_fu_190_p1 ),
    .ce( grp_fu_190_ce ),
    .dout( grp_fu_190_p2 )
);

image_filter_mul_8ns_22ns_30_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 22 ),
    .dout_WIDTH( 30 ))
image_filter_mul_8ns_22ns_30_3_U44(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_199_p0 ),
    .din1( grp_fu_199_p1 ),
    .ce( grp_fu_199_ce ),
    .dout( grp_fu_199_p2 )
);

image_filter_mul_8ns_25ns_32_3 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 25 ),
    .dout_WIDTH( 32 ))
image_filter_mul_8ns_25ns_32_3_U45(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_208_p0 ),
    .din1( grp_fu_208_p1 ),
    .ce( grp_fu_208_ce ),
    .dout( grp_fu_208_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ~(exitcond_fu_175_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_160_p2 == ap_const_lv1_0))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & (exitcond_fu_175_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_160_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ~(exitcond_fu_175_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6)))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end
    end
end

/// ap_reg_ppiten_pp0_it4 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it4
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6)))) begin
            ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
        end
    end
end

/// ap_reg_ppiten_pp0_it5 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it5
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it5 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6)))) begin
            ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
        end
    end
end

/// ap_reg_ppiten_pp0_it6 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it6
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it6 <= ap_const_logic_0;
    end else begin
        if (~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6)))) begin
            ap_reg_ppiten_pp0_it6 <= ap_reg_ppiten_pp0_it5;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_160_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it6 <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_133 <= ap_const_lv11_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st10_fsm_3)) begin
        i_reg_133 <= i_1_reg_308;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & (exitcond_fu_175_p2 == ap_const_lv1_0))) begin
        j_reg_144 <= j_1_fu_180_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_160_p2 == ap_const_lv1_0))) begin
        j_reg_144 <= ap_const_lv11_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))))) begin
        ap_reg_ppstg_exitcond_reg_313_pp0_it1 <= exitcond_reg_313;
        exitcond_reg_313 <= exitcond_fu_175_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6)))) begin
        ap_reg_ppstg_exitcond_reg_313_pp0_it2 <= ap_reg_ppstg_exitcond_reg_313_pp0_it1;
        ap_reg_ppstg_exitcond_reg_313_pp0_it3 <= ap_reg_ppstg_exitcond_reg_313_pp0_it2;
        ap_reg_ppstg_exitcond_reg_313_pp0_it4 <= ap_reg_ppstg_exitcond_reg_313_pp0_it3;
        ap_reg_ppstg_exitcond_reg_313_pp0_it5 <= ap_reg_ppstg_exitcond_reg_313_pp0_it4;
        ap_reg_ppstg_tmp_11_reg_327_pp0_it2 <= tmp_11_reg_327;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_1_reg_308 <= i_1_fu_165_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it4))) begin
        p_Val2_4_reg_362 <= p_Val2_4_fu_262_p2;
        tmp_7_reg_357 <= r_V_1_fu_227_p2[ap_const_lv32_1F];
        tmp_8_reg_367 <= p_Val2_4_fu_262_p2[ap_const_lv32_7];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it2))) begin
        r_V_4_i_reg_347 <= grp_fu_190_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_313 == ap_const_lv1_0) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))))) begin
        tmp_10_reg_322 <= p_src_data_stream_0_V_dout;
        tmp_11_reg_327 <= p_src_data_stream_1_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it3))) begin
        tmp_i_cast_reg_352[0] <= tmp_i_cast_fu_223_p1[0];
tmp_i_cast_reg_352[1] <= tmp_i_cast_fu_223_p1[1];
tmp_i_cast_reg_352[2] <= tmp_i_cast_fu_223_p1[2];
tmp_i_cast_reg_352[3] <= tmp_i_cast_fu_223_p1[3];
tmp_i_cast_reg_352[4] <= tmp_i_cast_fu_223_p1[4];
tmp_i_cast_reg_352[5] <= tmp_i_cast_fu_223_p1[5];
tmp_i_cast_reg_352[6] <= tmp_i_cast_fu_223_p1[6];
tmp_i_cast_reg_352[7] <= tmp_i_cast_fu_223_p1[7];
tmp_i_cast_reg_352[8] <= tmp_i_cast_fu_223_p1[8];
tmp_i_cast_reg_352[9] <= tmp_i_cast_fu_223_p1[9];
tmp_i_cast_reg_352[10] <= tmp_i_cast_fu_223_p1[10];
tmp_i_cast_reg_352[11] <= tmp_i_cast_fu_223_p1[11];
tmp_i_cast_reg_352[12] <= tmp_i_cast_fu_223_p1[12];
tmp_i_cast_reg_352[13] <= tmp_i_cast_fu_223_p1[13];
tmp_i_cast_reg_352[14] <= tmp_i_cast_fu_223_p1[14];
tmp_i_cast_reg_352[15] <= tmp_i_cast_fu_223_p1[15];
tmp_i_cast_reg_352[16] <= tmp_i_cast_fu_223_p1[16];
tmp_i_cast_reg_352[17] <= tmp_i_cast_fu_223_p1[17];
tmp_i_cast_reg_352[18] <= tmp_i_cast_fu_223_p1[18];
tmp_i_cast_reg_352[19] <= tmp_i_cast_fu_223_p1[19];
tmp_i_cast_reg_352[20] <= tmp_i_cast_fu_223_p1[20];
tmp_i_cast_reg_352[21] <= tmp_i_cast_fu_223_p1[21];
tmp_i_cast_reg_352[22] <= tmp_i_cast_fu_223_p1[22];
tmp_i_cast_reg_352[23] <= tmp_i_cast_fu_223_p1[23];
tmp_i_cast_reg_352[24] <= tmp_i_cast_fu_223_p1[24];
tmp_i_cast_reg_352[25] <= tmp_i_cast_fu_223_p1[25];
tmp_i_cast_reg_352[26] <= tmp_i_cast_fu_223_p1[26];
tmp_i_cast_reg_352[27] <= tmp_i_cast_fu_223_p1[27];
tmp_i_cast_reg_352[28] <= tmp_i_cast_fu_223_p1[28];
tmp_i_cast_reg_352[29] <= tmp_i_cast_fu_223_p1[29];
tmp_i_cast_reg_352[30] <= tmp_i_cast_fu_223_p1[30];
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or exitcond2_fu_160_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_160_p2 == ap_const_lv1_0)))) begin
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
always @ (exitcond2_fu_160_p2 or ap_sig_cseq_ST_st2_fsm_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_160_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. ///
always @ (ap_sig_bdd_72)
begin
    if (ap_sig_bdd_72) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st10_fsm_3 assign process. ///
always @ (ap_sig_bdd_169)
begin
    if (ap_sig_bdd_169) begin
        ap_sig_cseq_ST_st10_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_22)
begin
    if (ap_sig_bdd_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_61)
begin
    if (ap_sig_bdd_61) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// grp_fu_190_ce assign process. ///
always @ (exitcond_reg_313 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6 or ap_reg_ppstg_exitcond_reg_313_pp0_it1 or ap_reg_ppstg_exitcond_reg_313_pp0_it2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ((exitcond_reg_313 == ap_const_lv1_0) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it1) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it2)))) begin
        grp_fu_190_ce = ap_const_logic_1;
    end else begin
        grp_fu_190_ce = ap_const_logic_0;
    end
end

/// grp_fu_199_ce assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6 or ap_reg_ppstg_exitcond_reg_313_pp0_it1 or ap_reg_ppstg_exitcond_reg_313_pp0_it2 or ap_reg_ppstg_exitcond_reg_313_pp0_it3)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ((ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it1) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it2) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it3)))) begin
        grp_fu_199_ce = ap_const_logic_1;
    end else begin
        grp_fu_199_ce = ap_const_logic_0;
    end
end

/// grp_fu_208_ce assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6 or ap_reg_ppstg_exitcond_reg_313_pp0_it2 or ap_reg_ppstg_exitcond_reg_313_pp0_it3 or ap_reg_ppstg_exitcond_reg_313_pp0_it4)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ((ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it2) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it3) | (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it4)))) begin
        grp_fu_208_ce = ap_const_logic_1;
    end else begin
        grp_fu_208_ce = ap_const_logic_0;
    end
end

/// p_dst_data_stream_V_write assign process. ///
always @ (ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_reg_ppstg_exitcond_reg_313_pp0_it5 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6)
begin
    if (((ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it5) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))))) begin
        p_dst_data_stream_V_write = ap_const_logic_1;
    end else begin
        p_dst_data_stream_V_write = ap_const_logic_0;
    end
end

/// p_src_data_stream_0_V_read assign process. ///
always @ (exitcond_reg_313 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_313 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))))) begin
        p_src_data_stream_0_V_read = ap_const_logic_1;
    end else begin
        p_src_data_stream_0_V_read = ap_const_logic_0;
    end
end

/// p_src_data_stream_1_V_read assign process. ///
always @ (exitcond_reg_313 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_313 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))))) begin
        p_src_data_stream_1_V_read = ap_const_logic_1;
    end else begin
        p_src_data_stream_1_V_read = ap_const_logic_0;
    end
end

/// p_src_data_stream_2_V_read assign process. ///
always @ (exitcond_reg_313 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_313 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))))) begin
        p_src_data_stream_2_V_read = ap_const_logic_1;
    end else begin
        p_src_data_stream_2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond2_fu_160_p2 or exitcond_fu_175_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_86 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it5 or ap_sig_bdd_102 or ap_reg_ppiten_pp0_it6)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond2_fu_160_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if ((~((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it5)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ~(exitcond_fu_175_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if ((((ap_const_logic_1 == ap_reg_ppiten_pp0_it6) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it5)) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_sig_bdd_86 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it6))) & ~(exitcond_fu_175_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_st10_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st10_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_102 assign process. ///
always @ (p_dst_data_stream_V_full_n or ap_reg_ppstg_exitcond_reg_313_pp0_it5)
begin
    ap_sig_bdd_102 = ((p_dst_data_stream_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_reg_313_pp0_it5));
end

/// ap_sig_bdd_169 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_169 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_22 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_22 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_61 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_61 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_72 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_72 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_86 assign process. ///
always @ (p_src_data_stream_0_V_empty_n or p_src_data_stream_1_V_empty_n or p_src_data_stream_2_V_empty_n or exitcond_reg_313)
begin
    ap_sig_bdd_86 = (((p_src_data_stream_0_V_empty_n == ap_const_logic_0) & (exitcond_reg_313 == ap_const_lv1_0)) | ((exitcond_reg_313 == ap_const_lv1_0) & (p_src_data_stream_1_V_empty_n == ap_const_logic_0)) | ((exitcond_reg_313 == ap_const_lv1_0) & (p_src_data_stream_2_V_empty_n == ap_const_logic_0)));
end
assign exitcond2_fu_160_p2 = (i_cast_fu_156_p1 == p_src_rows_V_read? 1'b1: 1'b0);
assign exitcond_fu_175_p2 = (j_cast_fu_171_p1 == p_src_cols_V_read? 1'b1: 1'b0);
assign grp_fu_190_p0 = grp_fu_190_p00;
assign grp_fu_190_p00 = p_src_data_stream_2_V_dout;
assign grp_fu_190_p1 = ap_const_lv31_4C8B43;
assign grp_fu_199_p0 = grp_fu_199_p00;
assign grp_fu_199_p00 = tmp_10_reg_322;
assign grp_fu_199_p1 = ap_const_lv30_1D2F1A;
assign grp_fu_208_p0 = grp_fu_208_p00;
assign grp_fu_208_p00 = ap_reg_ppstg_tmp_11_reg_327_pp0_it2;
assign grp_fu_208_p1 = ap_const_lv32_9645A1;
assign i_1_fu_165_p2 = (i_reg_133 + ap_const_lv11_1);
assign i_cast_fu_156_p1 = i_reg_133;
assign j_1_fu_180_p2 = (j_reg_144 + ap_const_lv11_1);
assign j_cast_fu_171_p1 = j_reg_144;
assign not_carry_fu_281_p2 = (tmp_8_reg_367 | p_Result_2_i_i_i_not_fu_276_p2);
assign p_Result_2_i_i_i_not_fu_276_p2 = (tmp_7_reg_357 ^ ap_const_lv1_1);
assign p_Val2_1_fu_218_p2 = (r_V_4_i_reg_347 + tmp1_i_cast_fu_214_p1);
assign p_Val2_3_fu_232_p4 = {{r_V_1_fu_227_p2[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Val2_4_fu_262_p2 = (p_Val2_3_fu_232_p4 + tmp_3_i_i_i_fu_250_p1);
assign p_dst_data_stream_V_din = ((not_carry_fu_281_p2)? p_Val2_4_reg_362: ap_const_lv8_FF);
assign r_V_1_fu_227_p2 = (grp_fu_208_p2 + tmp_i_cast_reg_352);
assign tmp1_i_cast_fu_214_p1 = grp_fu_199_p2;
assign tmp_3_i_i_i_fu_250_p1 = tmp_fu_242_p3;
assign tmp_fu_242_p3 = r_V_1_fu_227_p2[ap_const_lv32_17];
assign tmp_i_cast_fu_223_p1 = p_Val2_1_fu_218_p2;
always @ (posedge ap_clk)
begin
    tmp_i_cast_reg_352[31] <= 1'b0;
end



endmodule //image_filter_CvtColor

