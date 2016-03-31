// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _image_filter_Loop_1_proc_HH_
#define _image_filter_Loop_1_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct image_filter_Loop_1_proc : public sc_module {
    // Port declarations 57
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > rows;
    sc_in< sc_lv<32> > cols;
    sc_out< sc_lv<8> > img_1_data_stream_0_V_din;
    sc_in< sc_logic > img_1_data_stream_0_V_full_n;
    sc_out< sc_logic > img_1_data_stream_0_V_write;
    sc_out< sc_lv<8> > img_1_data_stream_1_V_din;
    sc_in< sc_logic > img_1_data_stream_1_V_full_n;
    sc_out< sc_logic > img_1_data_stream_1_V_write;
    sc_out< sc_lv<8> > img_1_data_stream_2_V_din;
    sc_in< sc_logic > img_1_data_stream_2_V_full_n;
    sc_out< sc_logic > img_1_data_stream_2_V_write;
    sc_in< sc_lv<8> > img_0_data_stream_0_V_dout;
    sc_in< sc_logic > img_0_data_stream_0_V_empty_n;
    sc_out< sc_logic > img_0_data_stream_0_V_read;
    sc_in< sc_lv<8> > img_0_data_stream_1_V_dout;
    sc_in< sc_logic > img_0_data_stream_1_V_empty_n;
    sc_out< sc_logic > img_0_data_stream_1_V_read;
    sc_in< sc_lv<8> > img_0_data_stream_2_V_dout;
    sc_in< sc_logic > img_0_data_stream_2_V_empty_n;
    sc_out< sc_logic > img_0_data_stream_2_V_read;
    sc_out< sc_lv<2> > buffer_val_0_address0;
    sc_out< sc_logic > buffer_val_0_ce0;
    sc_out< sc_logic > buffer_val_0_we0;
    sc_out< sc_lv<8> > buffer_val_0_d0;
    sc_in< sc_lv<8> > buffer_val_0_q0;
    sc_out< sc_lv<2> > buffer_val_0_address1;
    sc_out< sc_logic > buffer_val_0_ce1;
    sc_out< sc_logic > buffer_val_0_we1;
    sc_out< sc_lv<8> > buffer_val_0_d1;
    sc_in< sc_lv<8> > buffer_val_0_q1;
    sc_out< sc_lv<2> > buffer_val_1_address0;
    sc_out< sc_logic > buffer_val_1_ce0;
    sc_out< sc_logic > buffer_val_1_we0;
    sc_out< sc_lv<8> > buffer_val_1_d0;
    sc_in< sc_lv<8> > buffer_val_1_q0;
    sc_out< sc_lv<2> > buffer_val_1_address1;
    sc_out< sc_logic > buffer_val_1_ce1;
    sc_out< sc_logic > buffer_val_1_we1;
    sc_out< sc_lv<8> > buffer_val_1_d1;
    sc_in< sc_lv<8> > buffer_val_1_q1;
    sc_out< sc_lv<2> > buffer_val_2_address0;
    sc_out< sc_logic > buffer_val_2_ce0;
    sc_out< sc_logic > buffer_val_2_we0;
    sc_out< sc_lv<8> > buffer_val_2_d0;
    sc_in< sc_lv<8> > buffer_val_2_q0;
    sc_out< sc_lv<2> > buffer_val_2_address1;
    sc_out< sc_logic > buffer_val_2_ce1;
    sc_out< sc_logic > buffer_val_2_we1;
    sc_out< sc_lv<8> > buffer_val_2_d1;
    sc_in< sc_lv<8> > buffer_val_2_q1;


    // Module declarations
    image_filter_Loop_1_proc(sc_module_name name);
    SC_HAS_PROCESS(image_filter_Loop_1_proc);

    ~image_filter_Loop_1_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_25;
    sc_signal< sc_lv<11> > col_reg_269;
    sc_signal< sc_lv<12> > tmp_fu_281_p1;
    sc_signal< bool > ap_sig_bdd_104;
    sc_signal< sc_lv<12> > tmp_2_fu_285_p1;
    sc_signal< sc_lv<2> > buffer_val_0_addr_gep_fu_159_p3;
    sc_signal< sc_lv<2> > buffer_val_0_addr_reg_551;
    sc_signal< sc_lv<2> > buffer_val_0_addr_1_gep_fu_167_p3;
    sc_signal< sc_lv<2> > buffer_val_0_addr_1_reg_556;
    sc_signal< sc_lv<2> > buffer_val_1_addr_gep_fu_175_p3;
    sc_signal< sc_lv<2> > buffer_val_1_addr_reg_561;
    sc_signal< sc_lv<2> > buffer_val_1_addr_1_gep_fu_183_p3;
    sc_signal< sc_lv<2> > buffer_val_1_addr_1_reg_566;
    sc_signal< sc_lv<2> > buffer_val_2_addr_gep_fu_191_p3;
    sc_signal< sc_lv<2> > buffer_val_2_addr_reg_571;
    sc_signal< sc_lv<2> > buffer_val_2_addr_1_gep_fu_199_p3;
    sc_signal< sc_lv<2> > buffer_val_2_addr_1_reg_577;
    sc_signal< sc_lv<2> > buffer_val_0_addr_2_gep_fu_207_p3;
    sc_signal< sc_lv<2> > buffer_val_0_addr_2_reg_582;
    sc_signal< sc_lv<2> > buffer_val_1_addr_2_gep_fu_215_p3;
    sc_signal< sc_lv<2> > buffer_val_1_addr_2_reg_587;
    sc_signal< sc_lv<2> > buffer_val_2_addr_2_gep_fu_223_p3;
    sc_signal< sc_lv<2> > buffer_val_2_addr_2_reg_592;
    sc_signal< sc_lv<1> > exitcond2_fu_293_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_134;
    sc_signal< sc_lv<11> > row_1_fu_298_p2;
    sc_signal< sc_lv<11> > row_1_reg_602;
    sc_signal< sc_lv<1> > exitcond1_fu_308_p2;
    sc_signal< sc_lv<1> > exitcond1_reg_607;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_145;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_159;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<11> > col_1_fu_313_p2;
    sc_signal< sc_lv<11> > col_1_reg_611;
    sc_signal< sc_lv<1> > icmp_fu_329_p2;
    sc_signal< sc_lv<1> > icmp_reg_616;
    sc_signal< sc_lv<8> > scl_val_0_reg_624;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg1_fsm_3;
    sc_signal< bool > ap_sig_bdd_180;
    sc_signal< bool > ap_sig_bdd_190;
    sc_signal< sc_lv<8> > scl_val_1_reg_630;
    sc_signal< sc_lv<8> > p_val_2_reg_636;
    sc_signal< sc_lv<8> > buffer_val_0_load_reg_643;
    sc_signal< sc_lv<8> > buffer_val_1_load_reg_649;
    sc_signal< sc_lv<8> > buffer_val_2_load_reg_655;
    sc_signal< sc_lv<8> > buffer_val_0_load_1_reg_660;
    sc_signal< sc_lv<8> > buffer_val_1_load_1_reg_665;
    sc_signal< sc_lv<8> > buffer_val_2_load_1_reg_670;
    sc_signal< sc_lv<1> > c_fu_335_p2;
    sc_signal< sc_lv<1> > c_reg_675;
    sc_signal< sc_lv<1> > ult_fu_341_p2;
    sc_signal< sc_lv<1> > ult_reg_681;
    sc_signal< sc_lv<1> > rev1_fu_353_p2;
    sc_signal< sc_lv<1> > rev1_reg_686;
    sc_signal< sc_lv<1> > c_1_fu_359_p2;
    sc_signal< sc_lv<1> > c_1_reg_691;
    sc_signal< sc_lv<1> > ult2_fu_365_p2;
    sc_signal< sc_lv<1> > ult2_reg_697;
    sc_signal< sc_lv<1> > rev3_fu_377_p2;
    sc_signal< sc_lv<1> > rev3_reg_702;
    sc_signal< sc_lv<1> > c_2_fu_383_p2;
    sc_signal< sc_lv<1> > c_2_reg_707;
    sc_signal< sc_lv<1> > ult4_fu_389_p2;
    sc_signal< sc_lv<1> > ult4_reg_713;
    sc_signal< sc_lv<1> > ult5_fu_395_p2;
    sc_signal< sc_lv<1> > ult5_reg_718;
    sc_signal< sc_lv<8> > p_val_0_1_fu_427_p3;
    sc_signal< sc_lv<8> > p_val_0_1_reg_723;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg2_fsm_4;
    sc_signal< bool > ap_sig_bdd_230;
    sc_signal< sc_lv<8> > p_val_1_1_fu_460_p3;
    sc_signal< sc_lv<8> > p_val_1_1_reg_728;
    sc_signal< sc_lv<8> > p_val_0_2_fu_499_p3;
    sc_signal< sc_lv<8> > p_val_0_2_reg_733;
    sc_signal< sc_lv<1> > sel_tmp2_fu_505_p2;
    sc_signal< sc_lv<1> > sel_tmp2_reg_738;
    sc_signal< sc_lv<8> > p_val_1_2_fu_510_p3;
    sc_signal< sc_lv<8> > p_val_1_2_reg_744;
    sc_signal< sc_lv<8> > tmp_6_fu_521_p3;
    sc_signal< sc_lv<8> > tmp_6_reg_749;
    sc_signal< sc_lv<11> > row_reg_258;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_5;
    sc_signal< bool > ap_sig_bdd_257;
    sc_signal< sc_lv<11> > col_phi_fu_273_p4;
    sc_signal< sc_lv<12> > row_cast_fu_289_p1;
    sc_signal< sc_lv<12> > col_cast_fu_304_p1;
    sc_signal< sc_lv<10> > tmp_3_fu_319_p4;
    sc_signal< sc_lv<1> > ult1_fu_347_p2;
    sc_signal< sc_lv<1> > ult3_fu_371_p2;
    sc_signal< sc_lv<1> > rev_fu_401_p2;
    sc_signal< sc_lv<1> > c_0_not_fu_406_p2;
    sc_signal< sc_lv<1> > brmerge1_fu_417_p2;
    sc_signal< sc_lv<1> > brmerge_fu_411_p2;
    sc_signal< sc_lv<8> > buffer_val_0_load_scl_val_0_fu_421_p3;
    sc_signal< sc_lv<1> > rev2_fu_434_p2;
    sc_signal< sc_lv<1> > c_0_not_1_fu_439_p2;
    sc_signal< sc_lv<1> > brmerge1_1_fu_450_p2;
    sc_signal< sc_lv<1> > brmerge_1_fu_444_p2;
    sc_signal< sc_lv<8> > buffer_val_1_load_scl_val_1_fu_454_p3;
    sc_signal< sc_lv<1> > rev4_fu_467_p2;
    sc_signal< sc_lv<1> > c_0_not_2_fu_472_p2;
    sc_signal< sc_lv<1> > rev5_fu_483_p2;
    sc_signal< sc_lv<1> > brmerge1_2_fu_488_p2;
    sc_signal< sc_lv<1> > brmerge_2_fu_477_p2;
    sc_signal< sc_lv<8> > buffer_val_2_load_p_val_2_fu_493_p3;
    sc_signal< sc_lv<8> > sel_tmp9_fu_516_p3;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_st1_fsm_0;
    static const sc_lv<6> ap_ST_st2_fsm_1;
    static const sc_lv<6> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<6> ap_ST_pp0_stg1_fsm_3;
    static const sc_lv<6> ap_ST_pp0_stg2_fsm_4;
    static const sc_lv<6> ap_ST_st7_fsm_5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_104();
    void thread_ap_sig_bdd_134();
    void thread_ap_sig_bdd_145();
    void thread_ap_sig_bdd_159();
    void thread_ap_sig_bdd_180();
    void thread_ap_sig_bdd_190();
    void thread_ap_sig_bdd_230();
    void thread_ap_sig_bdd_25();
    void thread_ap_sig_bdd_257();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_pp0_stg1_fsm_3();
    void thread_ap_sig_cseq_ST_pp0_stg2_fsm_4();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st7_fsm_5();
    void thread_brmerge1_1_fu_450_p2();
    void thread_brmerge1_2_fu_488_p2();
    void thread_brmerge1_fu_417_p2();
    void thread_brmerge_1_fu_444_p2();
    void thread_brmerge_2_fu_477_p2();
    void thread_brmerge_fu_411_p2();
    void thread_buffer_val_0_addr_1_gep_fu_167_p3();
    void thread_buffer_val_0_addr_2_gep_fu_207_p3();
    void thread_buffer_val_0_addr_gep_fu_159_p3();
    void thread_buffer_val_0_address0();
    void thread_buffer_val_0_address1();
    void thread_buffer_val_0_ce0();
    void thread_buffer_val_0_ce1();
    void thread_buffer_val_0_d0();
    void thread_buffer_val_0_d1();
    void thread_buffer_val_0_load_scl_val_0_fu_421_p3();
    void thread_buffer_val_0_we0();
    void thread_buffer_val_0_we1();
    void thread_buffer_val_1_addr_1_gep_fu_183_p3();
    void thread_buffer_val_1_addr_2_gep_fu_215_p3();
    void thread_buffer_val_1_addr_gep_fu_175_p3();
    void thread_buffer_val_1_address0();
    void thread_buffer_val_1_address1();
    void thread_buffer_val_1_ce0();
    void thread_buffer_val_1_ce1();
    void thread_buffer_val_1_d0();
    void thread_buffer_val_1_d1();
    void thread_buffer_val_1_load_scl_val_1_fu_454_p3();
    void thread_buffer_val_1_we0();
    void thread_buffer_val_1_we1();
    void thread_buffer_val_2_addr_1_gep_fu_199_p3();
    void thread_buffer_val_2_addr_2_gep_fu_223_p3();
    void thread_buffer_val_2_addr_gep_fu_191_p3();
    void thread_buffer_val_2_address0();
    void thread_buffer_val_2_address1();
    void thread_buffer_val_2_ce0();
    void thread_buffer_val_2_ce1();
    void thread_buffer_val_2_d0();
    void thread_buffer_val_2_d1();
    void thread_buffer_val_2_load_p_val_2_fu_493_p3();
    void thread_buffer_val_2_we0();
    void thread_buffer_val_2_we1();
    void thread_c_0_not_1_fu_439_p2();
    void thread_c_0_not_2_fu_472_p2();
    void thread_c_0_not_fu_406_p2();
    void thread_c_1_fu_359_p2();
    void thread_c_2_fu_383_p2();
    void thread_c_fu_335_p2();
    void thread_col_1_fu_313_p2();
    void thread_col_cast_fu_304_p1();
    void thread_col_phi_fu_273_p4();
    void thread_exitcond1_fu_308_p2();
    void thread_exitcond2_fu_293_p2();
    void thread_icmp_fu_329_p2();
    void thread_img_0_data_stream_0_V_read();
    void thread_img_0_data_stream_1_V_read();
    void thread_img_0_data_stream_2_V_read();
    void thread_img_1_data_stream_0_V_din();
    void thread_img_1_data_stream_0_V_write();
    void thread_img_1_data_stream_1_V_din();
    void thread_img_1_data_stream_1_V_write();
    void thread_img_1_data_stream_2_V_din();
    void thread_img_1_data_stream_2_V_write();
    void thread_p_val_0_1_fu_427_p3();
    void thread_p_val_0_2_fu_499_p3();
    void thread_p_val_1_1_fu_460_p3();
    void thread_p_val_1_2_fu_510_p3();
    void thread_rev1_fu_353_p2();
    void thread_rev2_fu_434_p2();
    void thread_rev3_fu_377_p2();
    void thread_rev4_fu_467_p2();
    void thread_rev5_fu_483_p2();
    void thread_rev_fu_401_p2();
    void thread_row_1_fu_298_p2();
    void thread_row_cast_fu_289_p1();
    void thread_sel_tmp2_fu_505_p2();
    void thread_sel_tmp9_fu_516_p3();
    void thread_tmp_2_fu_285_p1();
    void thread_tmp_3_fu_319_p4();
    void thread_tmp_6_fu_521_p3();
    void thread_tmp_fu_281_p1();
    void thread_ult1_fu_347_p2();
    void thread_ult2_fu_365_p2();
    void thread_ult3_fu_371_p2();
    void thread_ult4_fu_389_p2();
    void thread_ult5_fu_395_p2();
    void thread_ult_fu_341_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif