// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "axi_stream_counter_range.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic axi_stream_counter_range::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic axi_stream_counter_range::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> axi_stream_counter_range::ap_ST_st1_fsm_0 = "1";
const sc_lv<2> axi_stream_counter_range::ap_ST_st2_fsm_1 = "10";
const sc_lv<32> axi_stream_counter_range::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> axi_stream_counter_range::ap_const_lv1_1 = "1";
const sc_lv<32> axi_stream_counter_range::ap_const_lv32_1 = "1";
const sc_lv<1> axi_stream_counter_range::ap_const_lv1_0 = "0";
const sc_lv<31> axi_stream_counter_range::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<31> axi_stream_counter_range::ap_const_lv31_1 = "1";

axi_stream_counter_range::axi_stream_counter_range(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( ap_sig_ioackin_counter_TREADY );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( ap_sig_ioackin_counter_TREADY );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( ap_sig_ioackin_counter_TREADY );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sig_bdd_20);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_39);
    sensitive << ( ap_start );
    sensitive << ( count_range_TVALID );

    SC_METHOD(thread_ap_sig_bdd_49);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_66);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_20 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_49 );

    SC_METHOD(thread_ap_sig_ioackin_counter_TREADY);
    sensitive << ( counter_TREADY );
    sensitive << ( ap_reg_ioackin_counter_TREADY );

    SC_METHOD(thread_count_range_TREADY);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( ap_sig_bdd_39 );

    SC_METHOD(thread_counterValue_1_fu_61_p2);
    sensitive << ( counterValue_reg_39 );

    SC_METHOD(thread_counterValue_cast_fu_51_p1);
    sensitive << ( counterValue_reg_39 );

    SC_METHOD(thread_counter_TDATA);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( counterValue_cast_fu_51_p1 );

    SC_METHOD(thread_counter_TVALID);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( ap_reg_ioackin_counter_TREADY );

    SC_METHOD(thread_tmp_fu_56_p2);
    sensitive << ( count_range_read_reg_67 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( ap_sig_ioackin_counter_TREADY );
    sensitive << ( counterValue_cast_fu_51_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_39 );
    sensitive << ( tmp_fu_56_p2 );
    sensitive << ( ap_sig_ioackin_counter_TREADY );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "01";
    ap_reg_ioackin_counter_TREADY = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "axi_stream_counter_range_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, count_range_TDATA, "(port)count_range_TDATA");
    sc_trace(mVcdFile, count_range_TVALID, "(port)count_range_TVALID");
    sc_trace(mVcdFile, count_range_TREADY, "(port)count_range_TREADY");
    sc_trace(mVcdFile, counter_TDATA, "(port)counter_TDATA");
    sc_trace(mVcdFile, counter_TVALID, "(port)counter_TVALID");
    sc_trace(mVcdFile, counter_TREADY, "(port)counter_TREADY");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_20, "ap_sig_bdd_20");
    sc_trace(mVcdFile, count_range_read_reg_67, "count_range_read_reg_67");
    sc_trace(mVcdFile, ap_sig_bdd_39, "ap_sig_bdd_39");
    sc_trace(mVcdFile, counterValue_1_fu_61_p2, "counterValue_1_fu_61_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_49, "ap_sig_bdd_49");
    sc_trace(mVcdFile, tmp_fu_56_p2, "tmp_fu_56_p2");
    sc_trace(mVcdFile, ap_sig_ioackin_counter_TREADY, "ap_sig_ioackin_counter_TREADY");
    sc_trace(mVcdFile, counterValue_reg_39, "counterValue_reg_39");
    sc_trace(mVcdFile, counterValue_cast_fu_51_p1, "counterValue_cast_fu_51_p1");
    sc_trace(mVcdFile, ap_reg_ioackin_counter_TREADY, "ap_reg_ioackin_counter_TREADY");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_sig_bdd_66, "ap_sig_bdd_66");
#endif

    }
    mHdltvinHandle.open("axi_stream_counter_range.hdltvin.dat");
    mHdltvoutHandle.open("axi_stream_counter_range.hdltvout.dat");
}

axi_stream_counter_range::~axi_stream_counter_range() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void axi_stream_counter_range::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_reg_ioackin_counter_TREADY = ap_const_logic_0;
    } else {
        if (ap_sig_bdd_66.read()) {
            if (!(!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_counter_TREADY.read()))) {
                ap_reg_ioackin_counter_TREADY = ap_const_logic_0;
            } else if (esl_seteq<1,1,1>(ap_const_logic_1, counter_TREADY.read())) {
                ap_reg_ioackin_counter_TREADY = ap_const_logic_1;
            }
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && 
         !(!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_counter_TREADY.read())))) {
        counterValue_reg_39 = counterValue_1_fu_61_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !ap_sig_bdd_39.read())) {
        counterValue_reg_39 = ap_const_lv31_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !ap_sig_bdd_39.read())) {
        count_range_read_reg_67 = count_range_TDATA.read();
    }
}

void axi_stream_counter_range::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && 
         !(!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_counter_TREADY.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && 
         !(!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_counter_TREADY.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_ap_return() {
    ap_return = ap_const_lv32_0;
}

void axi_stream_counter_range::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void axi_stream_counter_range::thread_ap_sig_bdd_20() {
    ap_sig_bdd_20 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void axi_stream_counter_range::thread_ap_sig_bdd_39() {
    ap_sig_bdd_39 = (esl_seteq<1,1,1>(count_range_TVALID.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0));
}

void axi_stream_counter_range::thread_ap_sig_bdd_49() {
    ap_sig_bdd_49 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void axi_stream_counter_range::thread_ap_sig_bdd_66() {
    ap_sig_bdd_66 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && !esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0));
}

void axi_stream_counter_range::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_20.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_49.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_ap_sig_ioackin_counter_TREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_counter_TREADY.read())) {
        ap_sig_ioackin_counter_TREADY = counter_TREADY.read();
    } else {
        ap_sig_ioackin_counter_TREADY = ap_const_logic_1;
    }
}

void axi_stream_counter_range::thread_count_range_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !ap_sig_bdd_39.read())) {
        count_range_TREADY = ap_const_logic_1;
    } else {
        count_range_TREADY = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_counterValue_1_fu_61_p2() {
    counterValue_1_fu_61_p2 = (!counterValue_reg_39.read().is_01() || !ap_const_lv31_1.is_01())? sc_lv<31>(): (sc_biguint<31>(counterValue_reg_39.read()) + sc_biguint<31>(ap_const_lv31_1));
}

void axi_stream_counter_range::thread_counterValue_cast_fu_51_p1() {
    counterValue_cast_fu_51_p1 = esl_zext<32,31>(counterValue_reg_39.read());
}

void axi_stream_counter_range::thread_counter_TDATA() {
    counter_TDATA = counterValue_cast_fu_51_p1.read();
}

void axi_stream_counter_range::thread_counter_TVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_counter_TREADY.read()))) {
        counter_TVALID = ap_const_logic_1;
    } else {
        counter_TVALID = ap_const_logic_0;
    }
}

void axi_stream_counter_range::thread_tmp_fu_56_p2() {
    tmp_fu_56_p2 = (!counterValue_cast_fu_51_p1.read().is_01() || !count_range_read_reg_67.read().is_01())? sc_lv<1>(): (sc_bigint<32>(counterValue_cast_fu_51_p1.read()) < sc_bigint<32>(count_range_read_reg_67.read()));
}

void axi_stream_counter_range::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_bdd_39.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && !(!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_counter_TREADY.read())))) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else if ((!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && !(!esl_seteq<1,1,1>(tmp_fu_56_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_counter_TREADY.read())))) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void axi_stream_counter_range::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"count_range_TDATA\" :  \"" << count_range_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"count_range_TVALID\" :  \"" << count_range_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"count_range_TREADY\" :  \"" << count_range_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"counter_TDATA\" :  \"" << counter_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"counter_TVALID\" :  \"" << counter_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"counter_TREADY\" :  \"" << counter_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

