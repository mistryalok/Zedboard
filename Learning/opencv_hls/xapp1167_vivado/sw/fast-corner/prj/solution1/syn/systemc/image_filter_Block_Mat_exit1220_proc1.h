// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _image_filter_Block_Mat_exit1220_proc1_HH_
#define _image_filter_Block_Mat_exit1220_proc1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "image_filter_Duplicate_1080_1920_32_32_s.h"

namespace ap_rtl {

struct image_filter_Block_Mat_exit1220_proc1 : public sc_module {
    // Port declarations 46
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<12> > p_read;
    sc_in< sc_lv<12> > p_read2;
    sc_in< sc_lv<12> > p_read16;
    sc_in< sc_lv<12> > p_read17;
    sc_in< sc_lv<8> > p_src_data_stream_0_V_dout;
    sc_in< sc_logic > p_src_data_stream_0_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_0_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_1_V_dout;
    sc_in< sc_logic > p_src_data_stream_1_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_1_V_read;
    sc_in< sc_lv<8> > p_src_data_stream_2_V_dout;
    sc_in< sc_logic > p_src_data_stream_2_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_2_V_read;
    sc_out< sc_lv<8> > src0_data_stream_0_V_din;
    sc_in< sc_logic > src0_data_stream_0_V_full_n;
    sc_out< sc_logic > src0_data_stream_0_V_write;
    sc_out< sc_lv<8> > src0_data_stream_1_V_din;
    sc_in< sc_logic > src0_data_stream_1_V_full_n;
    sc_out< sc_logic > src0_data_stream_1_V_write;
    sc_out< sc_lv<8> > src0_data_stream_2_V_din;
    sc_in< sc_logic > src0_data_stream_2_V_full_n;
    sc_out< sc_logic > src0_data_stream_2_V_write;
    sc_out< sc_lv<8> > src1_data_stream_0_V_din;
    sc_in< sc_logic > src1_data_stream_0_V_full_n;
    sc_out< sc_logic > src1_data_stream_0_V_write;
    sc_out< sc_lv<8> > src1_data_stream_1_V_din;
    sc_in< sc_logic > src1_data_stream_1_V_full_n;
    sc_out< sc_logic > src1_data_stream_1_V_write;
    sc_out< sc_lv<8> > src1_data_stream_2_V_din;
    sc_in< sc_logic > src1_data_stream_2_V_full_n;
    sc_out< sc_logic > src1_data_stream_2_V_write;
    sc_out< sc_lv<12> > ap_return_0;
    sc_out< sc_lv<12> > ap_return_1;
    sc_out< sc_lv<12> > ap_return_2;
    sc_out< sc_lv<12> > ap_return_3;
    sc_out< sc_lv<12> > ap_return_4;
    sc_out< sc_lv<12> > ap_return_5;
    sc_out< sc_lv<12> > ap_return_6;
    sc_out< sc_lv<12> > ap_return_7;


    // Module declarations
    image_filter_Block_Mat_exit1220_proc1(sc_module_name name);
    SC_HAS_PROCESS(image_filter_Block_Mat_exit1220_proc1);

    ~image_filter_Block_Mat_exit1220_proc1();

    sc_trace_file* mVcdFile;

    image_filter_Duplicate_1080_1920_32_32_s* grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_21;
    sc_signal< bool > ap_sig_bdd_82;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_ap_start;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_ap_done;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_ap_idle;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_ap_ready;
    sc_signal< sc_lv<12> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_rows_V_read;
    sc_signal< sc_lv<12> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_cols_V_read;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_0_V_dout;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_0_V_empty_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_0_V_read;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_1_V_dout;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_1_V_empty_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_1_V_read;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_2_V_dout;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_2_V_empty_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_2_V_read;
    sc_signal< sc_lv<12> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_rows_V_read;
    sc_signal< sc_lv<12> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_cols_V_read;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_0_V_din;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_0_V_full_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_1_V_din;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_1_V_full_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_1_V_write;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_2_V_din;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_2_V_full_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_2_V_write;
    sc_signal< sc_lv<12> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_rows_V_read;
    sc_signal< sc_lv<12> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_cols_V_read;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_0_V_din;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_0_V_full_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_1_V_din;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_1_V_full_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_1_V_write;
    sc_signal< sc_lv<8> > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_2_V_din;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_2_V_full_n;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_2_V_write;
    sc_signal< sc_logic > grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_ap_start_ap_start_reg;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_137;
    sc_signal< sc_lv<12> > ap_return_0_preg;
    sc_signal< sc_lv<12> > ap_return_1_preg;
    sc_signal< sc_lv<12> > ap_return_2_preg;
    sc_signal< sc_lv<12> > ap_return_3_preg;
    sc_signal< sc_lv<12> > ap_return_4_preg;
    sc_signal< sc_lv<12> > ap_return_5_preg;
    sc_signal< sc_lv<12> > ap_return_6_preg;
    sc_signal< sc_lv<12> > ap_return_7_preg;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<12> ap_const_lv12_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_sig_bdd_137();
    void thread_ap_sig_bdd_21();
    void thread_ap_sig_bdd_82();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_ap_start();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_cols_V_read();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_0_V_full_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_1_V_full_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_data_stream_2_V_full_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst1_rows_V_read();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_cols_V_read();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_0_V_full_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_1_V_full_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_data_stream_2_V_full_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_dst2_rows_V_read();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_cols_V_read();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_0_V_dout();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_0_V_empty_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_1_V_dout();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_1_V_empty_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_2_V_dout();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_data_stream_2_V_empty_n();
    void thread_grp_image_filter_Duplicate_1080_1920_32_32_s_fu_97_src_rows_V_read();
    void thread_p_src_data_stream_0_V_read();
    void thread_p_src_data_stream_1_V_read();
    void thread_p_src_data_stream_2_V_read();
    void thread_src0_data_stream_0_V_din();
    void thread_src0_data_stream_0_V_write();
    void thread_src0_data_stream_1_V_din();
    void thread_src0_data_stream_1_V_write();
    void thread_src0_data_stream_2_V_din();
    void thread_src0_data_stream_2_V_write();
    void thread_src1_data_stream_0_V_din();
    void thread_src1_data_stream_0_V_write();
    void thread_src1_data_stream_1_V_din();
    void thread_src1_data_stream_1_V_write();
    void thread_src1_data_stream_2_V_din();
    void thread_src1_data_stream_2_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
