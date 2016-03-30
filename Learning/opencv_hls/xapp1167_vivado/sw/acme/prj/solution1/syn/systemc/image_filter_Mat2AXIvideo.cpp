// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "image_filter_Mat2AXIvideo.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic image_filter_Mat2AXIvideo::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic image_filter_Mat2AXIvideo::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> image_filter_Mat2AXIvideo::ap_ST_st1_fsm_0 = "1";
const sc_lv<4> image_filter_Mat2AXIvideo::ap_ST_st2_fsm_1 = "10";
const sc_lv<4> image_filter_Mat2AXIvideo::ap_ST_pp0_stg0_fsm_2 = "100";
const sc_lv<4> image_filter_Mat2AXIvideo::ap_ST_st5_fsm_3 = "1000";
const sc_lv<32> image_filter_Mat2AXIvideo::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> image_filter_Mat2AXIvideo::ap_const_lv1_1 = "1";
const sc_lv<32> image_filter_Mat2AXIvideo::ap_const_lv32_1 = "1";
const sc_lv<32> image_filter_Mat2AXIvideo::ap_const_lv32_2 = "10";
const sc_lv<1> image_filter_Mat2AXIvideo::ap_const_lv1_0 = "0";
const sc_lv<12> image_filter_Mat2AXIvideo::ap_const_lv12_0 = "000000000000";
const sc_lv<32> image_filter_Mat2AXIvideo::ap_const_lv32_3 = "11";
const sc_lv<4> image_filter_Mat2AXIvideo::ap_const_lv4_F = "1111";
const sc_lv<4> image_filter_Mat2AXIvideo::ap_const_lv4_0 = "0000";
const sc_lv<13> image_filter_Mat2AXIvideo::ap_const_lv13_1FFF = "1111111111111";
const sc_lv<12> image_filter_Mat2AXIvideo::ap_const_lv12_1 = "1";
const sc_lv<8> image_filter_Mat2AXIvideo::ap_const_lv8_FF = "11111111";

image_filter_Mat2AXIvideo::image_filter_Mat2AXIvideo(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_OUTPUT_STREAM_TDATA);
    sensitive << ( img_data_stream_0_V_dout );
    sensitive << ( img_data_stream_1_V_dout );
    sensitive << ( img_data_stream_2_V_dout );
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_OUTPUT_STREAM_TDEST);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_OUTPUT_STREAM_TID);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_OUTPUT_STREAM_TKEEP);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_OUTPUT_STREAM_TLAST);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( axi_last_V_reg_290 );

    SC_METHOD(thread_OUTPUT_STREAM_TSTRB);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_OUTPUT_STREAM_TUSER);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_user_V_fu_96 );

    SC_METHOD(thread_OUTPUT_STREAM_TVALID);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( ap_reg_ioackin_OUTPUT_STREAM_TREADY );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( exitcond3_fu_197_p2 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( exitcond3_fu_197_p2 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_sig_bdd_130);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_60);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_bdd_74);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_85);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_99);
    sensitive << ( img_data_stream_0_V_empty_n );
    sensitive << ( img_data_stream_1_V_empty_n );
    sensitive << ( img_data_stream_2_V_empty_n );
    sensitive << ( exitcond4_reg_281 );

    SC_METHOD(thread_ap_sig_cseq_ST_pp0_stg0_fsm_2);
    sensitive << ( ap_sig_bdd_85 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_74 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_3);
    sensitive << ( ap_sig_bdd_130 );

    SC_METHOD(thread_ap_sig_ioackin_OUTPUT_STREAM_TREADY);
    sensitive << ( OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ioackin_OUTPUT_STREAM_TREADY );

    SC_METHOD(thread_axi_last_V_fu_223_p2);
    sensitive << ( op2_assign_reg_267 );
    sensitive << ( exitcond4_fu_208_p2 );
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_sig_ioackin_OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ppiten_pp0_it1 );
    sensitive << ( tmp_cast_38_fu_219_p1 );

    SC_METHOD(thread_exitcond3_fu_197_p2);
    sensitive << ( img_rows_V_read );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( p_s_reg_159 );

    SC_METHOD(thread_exitcond4_fu_208_p2);
    sensitive << ( img_cols_V_read );
    sensitive << ( p_3_reg_170 );
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_sig_ioackin_OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_i_V_fu_202_p2);
    sensitive << ( p_s_reg_159 );

    SC_METHOD(thread_img_data_stream_0_V_read);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_sig_ioackin_OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_img_data_stream_1_V_read);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_sig_ioackin_OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_img_data_stream_2_V_read);
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_sig_cseq_ST_pp0_stg0_fsm_2 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_sig_ioackin_OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    SC_METHOD(thread_j_V_fu_213_p2);
    sensitive << ( p_3_reg_170 );

    SC_METHOD(thread_op2_assign_fu_186_p2);
    sensitive << ( tmp_cast_fu_182_p1 );

    SC_METHOD(thread_tmp_cast_38_fu_219_p1);
    sensitive << ( p_3_reg_170 );

    SC_METHOD(thread_tmp_cast_fu_182_p1);
    sensitive << ( img_cols_V_read );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_60 );
    sensitive << ( exitcond3_fu_197_p2 );
    sensitive << ( exitcond4_fu_208_p2 );
    sensitive << ( exitcond4_reg_281 );
    sensitive << ( ap_reg_ppiten_pp0_it0 );
    sensitive << ( ap_sig_bdd_99 );
    sensitive << ( ap_sig_ioackin_OUTPUT_STREAM_TREADY );
    sensitive << ( ap_reg_ppiten_pp0_it1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_reg_ppiten_pp0_it0 = SC_LOGIC_0;
    ap_reg_ppiten_pp0_it1 = SC_LOGIC_0;
    ap_reg_ioackin_OUTPUT_STREAM_TREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "image_filter_Mat2AXIvideo_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, img_rows_V_read, "(port)img_rows_V_read");
    sc_trace(mVcdFile, img_cols_V_read, "(port)img_cols_V_read");
    sc_trace(mVcdFile, img_data_stream_0_V_dout, "(port)img_data_stream_0_V_dout");
    sc_trace(mVcdFile, img_data_stream_0_V_empty_n, "(port)img_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, img_data_stream_0_V_read, "(port)img_data_stream_0_V_read");
    sc_trace(mVcdFile, img_data_stream_1_V_dout, "(port)img_data_stream_1_V_dout");
    sc_trace(mVcdFile, img_data_stream_1_V_empty_n, "(port)img_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, img_data_stream_1_V_read, "(port)img_data_stream_1_V_read");
    sc_trace(mVcdFile, img_data_stream_2_V_dout, "(port)img_data_stream_2_V_dout");
    sc_trace(mVcdFile, img_data_stream_2_V_empty_n, "(port)img_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, img_data_stream_2_V_read, "(port)img_data_stream_2_V_read");
    sc_trace(mVcdFile, OUTPUT_STREAM_TDATA, "(port)OUTPUT_STREAM_TDATA");
    sc_trace(mVcdFile, OUTPUT_STREAM_TVALID, "(port)OUTPUT_STREAM_TVALID");
    sc_trace(mVcdFile, OUTPUT_STREAM_TREADY, "(port)OUTPUT_STREAM_TREADY");
    sc_trace(mVcdFile, OUTPUT_STREAM_TKEEP, "(port)OUTPUT_STREAM_TKEEP");
    sc_trace(mVcdFile, OUTPUT_STREAM_TSTRB, "(port)OUTPUT_STREAM_TSTRB");
    sc_trace(mVcdFile, OUTPUT_STREAM_TUSER, "(port)OUTPUT_STREAM_TUSER");
    sc_trace(mVcdFile, OUTPUT_STREAM_TLAST, "(port)OUTPUT_STREAM_TLAST");
    sc_trace(mVcdFile, OUTPUT_STREAM_TID, "(port)OUTPUT_STREAM_TID");
    sc_trace(mVcdFile, OUTPUT_STREAM_TDEST, "(port)OUTPUT_STREAM_TDEST");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_23, "ap_sig_bdd_23");
    sc_trace(mVcdFile, p_3_reg_170, "p_3_reg_170");
    sc_trace(mVcdFile, ap_sig_bdd_60, "ap_sig_bdd_60");
    sc_trace(mVcdFile, op2_assign_fu_186_p2, "op2_assign_fu_186_p2");
    sc_trace(mVcdFile, op2_assign_reg_267, "op2_assign_reg_267");
    sc_trace(mVcdFile, exitcond3_fu_197_p2, "exitcond3_fu_197_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_74, "ap_sig_bdd_74");
    sc_trace(mVcdFile, i_V_fu_202_p2, "i_V_fu_202_p2");
    sc_trace(mVcdFile, i_V_reg_276, "i_V_reg_276");
    sc_trace(mVcdFile, exitcond4_fu_208_p2, "exitcond4_fu_208_p2");
    sc_trace(mVcdFile, exitcond4_reg_281, "exitcond4_reg_281");
    sc_trace(mVcdFile, ap_sig_cseq_ST_pp0_stg0_fsm_2, "ap_sig_cseq_ST_pp0_stg0_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_85, "ap_sig_bdd_85");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it0, "ap_reg_ppiten_pp0_it0");
    sc_trace(mVcdFile, ap_sig_bdd_99, "ap_sig_bdd_99");
    sc_trace(mVcdFile, ap_sig_ioackin_OUTPUT_STREAM_TREADY, "ap_sig_ioackin_OUTPUT_STREAM_TREADY");
    sc_trace(mVcdFile, ap_reg_ppiten_pp0_it1, "ap_reg_ppiten_pp0_it1");
    sc_trace(mVcdFile, j_V_fu_213_p2, "j_V_fu_213_p2");
    sc_trace(mVcdFile, axi_last_V_fu_223_p2, "axi_last_V_fu_223_p2");
    sc_trace(mVcdFile, axi_last_V_reg_290, "axi_last_V_reg_290");
    sc_trace(mVcdFile, p_s_reg_159, "p_s_reg_159");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_3, "ap_sig_cseq_ST_st5_fsm_3");
    sc_trace(mVcdFile, ap_sig_bdd_130, "ap_sig_bdd_130");
    sc_trace(mVcdFile, tmp_user_V_fu_96, "tmp_user_V_fu_96");
    sc_trace(mVcdFile, ap_reg_ioackin_OUTPUT_STREAM_TREADY, "ap_reg_ioackin_OUTPUT_STREAM_TREADY");
    sc_trace(mVcdFile, tmp_cast_fu_182_p1, "tmp_cast_fu_182_p1");
    sc_trace(mVcdFile, tmp_cast_38_fu_219_p1, "tmp_cast_38_fu_219_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

image_filter_Mat2AXIvideo::~image_filter_Mat2AXIvideo() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void image_filter_Mat2AXIvideo::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    !esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ioackin_OUTPUT_STREAM_TREADY = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
              esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
              esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
              !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))))) {
            ap_reg_ioackin_OUTPUT_STREAM_TREADY = ap_const_logic_0;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
                     esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
                     esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                     !(ap_sig_bdd_99.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
                     esl_seteq<1,1,1>(ap_const_logic_1, OUTPUT_STREAM_TREADY.read())))) {
            ap_reg_ioackin_OUTPUT_STREAM_TREADY = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
             !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             !esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
             !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
             esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                     esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
                     !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
                     !esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0)))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
         esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0))) {
        p_3_reg_170 = j_V_fu_213_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0))) {
        p_3_reg_170 = ap_const_lv12_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_3.read())) {
        p_s_reg_159 = i_V_reg_276.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_bdd_60.read())) {
        p_s_reg_159 = ap_const_lv12_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        tmp_user_V_fu_96 = ap_const_lv1_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_bdd_60.read())) {
        tmp_user_V_fu_96 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0))) {
        axi_last_V_reg_290 = axi_last_V_fu_223_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        exitcond4_reg_281 = exitcond4_fu_208_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i_V_reg_276 = i_V_fu_202_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !ap_sig_bdd_60.read())) {
        op2_assign_reg_267 = op2_assign_fu_186_p2.read();
    }
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TDATA() {
    OUTPUT_STREAM_TDATA = esl_concat<24,8>(esl_concat<16,8>(esl_concat<8,8>(ap_const_lv8_FF, img_data_stream_2_V_dout.read()), img_data_stream_1_V_dout.read()), img_data_stream_0_V_dout.read());
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TDEST() {
    OUTPUT_STREAM_TDEST = ap_const_lv1_0;
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TID() {
    OUTPUT_STREAM_TID = ap_const_lv1_0;
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TKEEP() {
    OUTPUT_STREAM_TKEEP = ap_const_lv4_F;
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TLAST() {
    OUTPUT_STREAM_TLAST = axi_last_V_reg_290.read();
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TSTRB() {
    OUTPUT_STREAM_TSTRB = ap_const_lv4_0;
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TUSER() {
    OUTPUT_STREAM_TUSER = tmp_user_V_fu_96.read();
}

void image_filter_Mat2AXIvideo::thread_OUTPUT_STREAM_TVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
          esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          !(ap_sig_bdd_99.read() && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_OUTPUT_STREAM_TREADY.read())))) {
        OUTPUT_STREAM_TVALID = ap_const_logic_1;
    } else {
        OUTPUT_STREAM_TVALID = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_sig_bdd_130() {
    ap_sig_bdd_130 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void image_filter_Mat2AXIvideo::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void image_filter_Mat2AXIvideo::thread_ap_sig_bdd_60() {
    ap_sig_bdd_60 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void image_filter_Mat2AXIvideo::thread_ap_sig_bdd_74() {
    ap_sig_bdd_74 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void image_filter_Mat2AXIvideo::thread_ap_sig_bdd_85() {
    ap_sig_bdd_85 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void image_filter_Mat2AXIvideo::thread_ap_sig_bdd_99() {
    ap_sig_bdd_99 = ((esl_seteq<1,1,1>(img_data_stream_0_V_empty_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(img_data_stream_1_V_empty_n.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(img_data_stream_2_V_empty_n.read(), ap_const_logic_0)));
}

void image_filter_Mat2AXIvideo::thread_ap_sig_cseq_ST_pp0_stg0_fsm_2() {
    if (ap_sig_bdd_85.read()) {
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_74.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_sig_cseq_ST_st5_fsm_3() {
    if (ap_sig_bdd_130.read()) {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_ap_sig_ioackin_OUTPUT_STREAM_TREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_OUTPUT_STREAM_TREADY.read())) {
        ap_sig_ioackin_OUTPUT_STREAM_TREADY = OUTPUT_STREAM_TREADY.read();
    } else {
        ap_sig_ioackin_OUTPUT_STREAM_TREADY = ap_const_logic_1;
    }
}

void image_filter_Mat2AXIvideo::thread_axi_last_V_fu_223_p2() {
    axi_last_V_fu_223_p2 = (!tmp_cast_38_fu_219_p1.read().is_01() || !op2_assign_reg_267.read().is_01())? sc_lv<1>(): sc_lv<1>(tmp_cast_38_fu_219_p1.read() == op2_assign_reg_267.read());
}

void image_filter_Mat2AXIvideo::thread_exitcond3_fu_197_p2() {
    exitcond3_fu_197_p2 = (!p_s_reg_159.read().is_01() || !img_rows_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(p_s_reg_159.read() == img_rows_V_read.read());
}

void image_filter_Mat2AXIvideo::thread_exitcond4_fu_208_p2() {
    exitcond4_fu_208_p2 = (!p_3_reg_170.read().is_01() || !img_cols_V_read.read().is_01())? sc_lv<1>(): sc_lv<1>(p_3_reg_170.read() == img_cols_V_read.read());
}

void image_filter_Mat2AXIvideo::thread_i_V_fu_202_p2() {
    i_V_fu_202_p2 = (!p_s_reg_159.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_biguint<12>(p_s_reg_159.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void image_filter_Mat2AXIvideo::thread_img_data_stream_0_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        img_data_stream_0_V_read = ap_const_logic_1;
    } else {
        img_data_stream_0_V_read = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_img_data_stream_1_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        img_data_stream_1_V_read = ap_const_logic_1;
    } else {
        img_data_stream_1_V_read = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_img_data_stream_2_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_pp0_stg0_fsm_2.read()) && 
         esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())))) {
        img_data_stream_2_V_read = ap_const_logic_1;
    } else {
        img_data_stream_2_V_read = ap_const_logic_0;
    }
}

void image_filter_Mat2AXIvideo::thread_j_V_fu_213_p2() {
    j_V_fu_213_p2 = (!p_3_reg_170.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_biguint<12>(p_3_reg_170.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void image_filter_Mat2AXIvideo::thread_op2_assign_fu_186_p2() {
    op2_assign_fu_186_p2 = (!tmp_cast_fu_182_p1.read().is_01() || !ap_const_lv13_1FFF.is_01())? sc_lv<13>(): (sc_biguint<13>(tmp_cast_fu_182_p1.read()) + sc_bigint<13>(ap_const_lv13_1FFF));
}

void image_filter_Mat2AXIvideo::thread_tmp_cast_38_fu_219_p1() {
    tmp_cast_38_fu_219_p1 = esl_zext<13,12>(p_3_reg_170.read());
}

void image_filter_Mat2AXIvideo::thread_tmp_cast_fu_182_p1() {
    tmp_cast_fu_182_p1 = esl_zext<13,12>(img_cols_V_read.read());
}

void image_filter_Mat2AXIvideo::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_bdd_60.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond3_fu_197_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !((ap_sig_bdd_99.read() || 
  (esl_seteq<1,1,1>(exitcond4_reg_281.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_OUTPUT_STREAM_TREADY.read()))) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) && !esl_seteq<1,1,1>(exitcond4_fu_208_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st5_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

