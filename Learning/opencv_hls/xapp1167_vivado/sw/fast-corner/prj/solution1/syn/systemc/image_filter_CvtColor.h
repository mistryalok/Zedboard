// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _image_filter_CvtColor_HH_
#define _image_filter_CvtColor_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "image_filter_mul_8ns_24ns_31_3.h"
#include "image_filter_mul_8ns_22ns_30_3.h"
#include "image_filter_mul_8ns_25ns_32_3.h"

namespace ap_rtl {

struct image_filter_CvtColor : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<12> > p_src_rows_V_read;
    sc_in< sc_lv<12> > p_src_cols_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_0_V_dout;
    sc_in< sc_logic > p_src_data_stream_0_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_0_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_1_V_dout;
    sc_in< sc_logic > p_src_data_stream_1_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_1_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_2_V_dout;
    sc_in< sc_logic > p_src_data_stream_2_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_2_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_V_din;
    sc_in< sc_logic > p_dst_data_stream_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_V_write;


    // Module declarations
    image_filter_CvtColor(sc_module_name name);
    SC_HAS_PROCESS(image_filter_CvtColor);

    ~image_filter_CvtColor();

    sc_trace_file* mVcdFile;

    image_filter_mul_8ns_24ns_31_3<1,3,8,24,31>* image_filter_mul_8ns_24ns_31_3_U43;
    image_filter_mul_8ns_22ns_30_3<1,3,8,22,30>* image_filter_mul_8ns_22ns_30_3_U44;
    image_filter_mul_8ns_25ns_32_3<1,3,8,25,32>* image_filter_mul_8ns_25ns_32_3_U45;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_22;
    sc_signal< sc_lv<11> > j_reg_144;
    sc_signal< sc_lv<1> > exitcond2_fu_160_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_61;
    sc_signal< sc_lv<11> > i_1_fu_165_p2;
    sc_signal< sc_lv<11> > i_1_reg_308;
    sc_signal< sc_lv<1> > exitcond_fu_175_p2;
    sc_signal< sc_lv<1> > exitcond_reg_313;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_72;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_86;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_313_pp0_it5;
    sc_signal< bool > ap_sig_bdd_102;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_313_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_313_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_313_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_313_pp0_it4;
    sc_signal< sc_lv<11> > j_1_fu_180_p2;
    sc_signal< sc_lv<8> > tmp_10_reg_322;
    sc_signal< sc_lv<8> > tmp_11_reg_327;
    sc_signal< sc_lv<8> > ap_reg_ppstg_tmp_11_reg_327_pp0_it2;
    sc_signal< sc_lv<31> > grp_fu_190_p2;
    sc_signal< sc_lv<31> > r_V_4_i_reg_347;
    sc_signal< sc_lv<32> > tmp_i_cast_fu_223_p1;
    sc_signal< sc_lv<32> > tmp_i_cast_reg_352;
    sc_signal< sc_lv<1> > tmp_7_reg_357;
    sc_signal< sc_lv<8> > p_Val2_4_fu_262_p2;
    sc_signal< sc_lv<8> > p_Val2_4_reg_362;
    sc_signal< sc_lv<1> > tmp_8_reg_367;
    sc_signal< sc_lv<11> > i_reg_133;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_3;
    sc_signal< bool > ap_sig_bdd_169;
    sc_signal< sc_lv<12> > i_cast_fu_156_p1;
    sc_signal< sc_lv<12> > j_cast_fu_171_p1;
    sc_signal< sc_lv<8> > grp_fu_190_p0;
    sc_signal< sc_lv<24> > grp_fu_190_p1;
    sc_signal< sc_lv<8> > grp_fu_199_p0;
    sc_signal< sc_lv<22> > grp_fu_199_p1;
    sc_signal< sc_lv<8> > grp_fu_208_p0;
    sc_signal< sc_lv<25> > grp_fu_208_p1;
    sc_signal< sc_lv<30> > grp_fu_199_p2;
    sc_signal< sc_lv<31> > tmp1_i_cast_fu_214_p1;
    sc_signal< sc_lv<31> > p_Val2_1_fu_218_p2;
    sc_signal< sc_lv<32> > grp_fu_208_p2;
    sc_signal< sc_lv<32> > r_V_1_fu_227_p2;
    sc_signal< sc_lv<1> > tmp_fu_242_p3;
    sc_signal< sc_lv<8> > p_Val2_3_fu_232_p4;
    sc_signal< sc_lv<8> > tmp_3_i_i_i_fu_250_p1;
    sc_signal< sc_lv<1> > p_Result_2_i_i_i_not_fu_276_p2;
    sc_signal< sc_lv<1> > not_carry_fu_281_p2;
    sc_signal< sc_logic > grp_fu_190_ce;
    sc_signal< sc_logic > grp_fu_199_ce;
    sc_signal< sc_logic > grp_fu_208_ce;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_lv<31> > grp_fu_190_p00;
    sc_signal< sc_lv<30> > grp_fu_199_p00;
    sc_signal< sc_lv<32> > grp_fu_208_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<4> ap_ST_st10_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<31> ap_const_lv31_4C8B43;
    static const sc_lv<30> ap_const_lv30_1D2F1A;
    static const sc_lv<32> ap_const_lv32_9645A1;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_FF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_102();
    void thread_ap_sig_bdd_169();
    void thread_ap_sig_bdd_22();
    void thread_ap_sig_bdd_61();
    void thread_ap_sig_bdd_72();
    void thread_ap_sig_bdd_86();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st10_fsm_3();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_exitcond2_fu_160_p2();
    void thread_exitcond_fu_175_p2();
    void thread_grp_fu_190_ce();
    void thread_grp_fu_190_p0();
    void thread_grp_fu_190_p00();
    void thread_grp_fu_190_p1();
    void thread_grp_fu_199_ce();
    void thread_grp_fu_199_p0();
    void thread_grp_fu_199_p00();
    void thread_grp_fu_199_p1();
    void thread_grp_fu_208_ce();
    void thread_grp_fu_208_p0();
    void thread_grp_fu_208_p00();
    void thread_grp_fu_208_p1();
    void thread_i_1_fu_165_p2();
    void thread_i_cast_fu_156_p1();
    void thread_j_1_fu_180_p2();
    void thread_j_cast_fu_171_p1();
    void thread_not_carry_fu_281_p2();
    void thread_p_Result_2_i_i_i_not_fu_276_p2();
    void thread_p_Val2_1_fu_218_p2();
    void thread_p_Val2_3_fu_232_p4();
    void thread_p_Val2_4_fu_262_p2();
    void thread_p_dst_data_stream_V_din();
    void thread_p_dst_data_stream_V_write();
    void thread_p_src_data_stream_0_V_read();
    void thread_p_src_data_stream_1_V_read();
    void thread_p_src_data_stream_2_V_read();
    void thread_r_V_1_fu_227_p2();
    void thread_tmp1_i_cast_fu_214_p1();
    void thread_tmp_3_i_i_i_fu_250_p1();
    void thread_tmp_fu_242_p3();
    void thread_tmp_i_cast_fu_223_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
