// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#include "axi_stream_counter_range.h"
#include "AESL_axi_s_count_range.h"
#include "AESL_axi_s_counter.h"
#include "SysCFileHandler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

#define AUTOTB_DUT      axi_stream_counter_range
#define AUTOTB_DUT_INST AESL_inst_axi_stream_counter_range
#define AUTOTB_TOP      apatb_axi_stream_counter_range_top
#define AUTOTB_LAT_RESULT_FILE "axi_stream_counter_range.result.lat.rb"
#define AUTOTB_PER_RESULT_TRANS_FILE "axi_stream_counter_range.performance.result.transaction.xml"
#define AUTOTB_TOP_INST AESL_inst_apatb_axi_stream_counter_range_top
#define AUTOTB_TRANSACTION_NUM  100
#define AUTOTB_TVIN     "axi_stream_counter_range.autotvin.dat"
#define AUTOTB_TVOUT    "axi_stream_counter_range.autotvout.dat"
#define AUTOTB_HDL_TVIN "axi_stream_counter_range.hdltvin.dat"
#define AUTOTB_HDL_TVOUT "axi_stream_counter_range.hdltvout.dat"
#define LENGTH_count_range 1
#define LENGTH_counter 1
#define LENGTH_ap_return 1

#define REF_TCL_FILE "../tv/cdatafile/ref.tcl"
#define AUTOTB_TVIN_count_range  "../tv/cdatafile/c.axi_stream_counter_range.autotvin_count_range.dat"
#define AUTOTB_TVIN_counter  "../tv/cdatafile/c.axi_stream_counter_range.autotvin_counter.dat"
#define AUTOTB_TVIN_count_range_out_wrapc  "../tv/rtldatafile/rtl.axi_stream_counter_range.autotvin_count_range.dat"
#define AUTOTB_TVIN_counter_out_wrapc  "../tv/rtldatafile/rtl.axi_stream_counter_range.autotvin_counter.dat"
#define AUTOTB_TVOUT_counter  "../tv/cdatafile/c.axi_stream_counter_range.autotvout_counter.dat"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.axi_stream_counter_range.autotvout_ap_return.dat"
#define AUTOTB_TVOUT_counter_out_wrapc  "../tv/rtldatafile/rtl.axi_stream_counter_range.autotvout_counter.dat"
#define AUTOTB_TVOUT_ap_return_out_wrapc  "../tv/rtldatafile/rtl.axi_stream_counter_range.autotvout_ap_return.dat"


SC_MODULE(AUTOTB_TOP)
{
#if defined(AESL_APATB_ALDEC)
    sc_in< sc_logic > AESL_clock;
    sc_signal< bool > AESL_clock_bool;
#endif
#if !defined(AESL_APATB_ALDEC)
    sc_in_clk AESL_clock;
#endif
    sc_signal< sc_logic > AESL_reset;
    sc_signal< sc_logic > AESL_start;
    sc_signal< sc_logic > AESL_ce;
    sc_signal< sc_logic > AESL_idle;
    sc_signal< sc_logic > AESL_done;
    sc_signal< sc_logic > AESL_ready;
    sc_signal< sc_logic > AESL_continue;
    sc_signal< sc_logic > AESL_transaction_ready;
    sc_signal< sc_logic > AESL_interface_done;
    sc_signal< sc_logic > AESL_transaction_ready_count_range;
    sc_signal< sc_logic > AESL_transaction_done_count_range;
    sc_signal< sc_logic > AESL_transaction_ready_counter;
    sc_signal< sc_logic > AESL_transaction_done_counter;
    sc_signal< sc_logic > AESL_ready_delay;
    sc_signal< sc_logic > AESL_done_delay;
    sc_signal< sc_logic > AESL_done_delay2;
    sc_signal< sc_logic > AESL_initial_ready;

    sc_signal< sc_lv<32> > count_range_TDATA;
    sc_signal< sc_logic > count_range_TVALID;
    sc_signal< sc_logic > count_range_TREADY;
    sc_signal< sc_lv<32> > counter_TDATA;
    sc_signal< sc_logic > counter_TVALID;
    sc_signal< sc_logic > counter_TREADY;
    sc_signal< sc_lv<32> > ap_return;
    sc_signal< sc_lv<32> > AESL_BUFF_ap_return;
    int ap_return_counter;
    sc_signal<sc_logic >  count_range_TDATA_debug_reg;
    sc_signal<sc_logic >  counter_TDATA_debug_reg;

    AUTOTB_DUT * AUTOTB_DUT_INST;



      AESL_axi_s_count_range * AESL_inst_count_range;
      AESL_axi_s_counter * AESL_inst_counter;
AESL_FILE_HANDLER AESL_fh;
    ifstream AESL_mTvIn;
    ifstream AESL_mTvOut;
    ofstream AESL_mHdlTvIn;
    ofstream AESL_mHdlTvOut;
    int AESL_mErrNo;
    int AESL_mTransNo;
    ofstream AESL_mErrLog;
    ofstream AESL_mParamLog;

    int AESL_mLatCnter;
    int AESL_mLatCnterInIdx;
    int* AESL_mLatCnterIn;
    int* AESL_mLatCnterOut;
    int* AESL_lat_array;
    int* AESL_thr_array;
    int AESL_mLatCnterOutIdx;
    int AESL_done_cnt;
    int AESL_ready_cnt;

    bool AESL_mFinishTvOut_counter;
    bool AESL_mFinishTvOut_ap_return;


    void AESL_proc_tv_in();
    void AESL_proc_transaction_ready();
    void AESL_proc_interface_done();
    void AESL_proc_transaction_ready_count_range();
    void AESL_proc_transaction_done_count_range();
    void AESL_proc_transaction_ready_counter();
    void AESL_proc_transaction_done_counter();
    void AESL_proc_ready_delay();
    void AESL_proc_done_delay();
    void AESL_proc_initial_ready();
    void AESL_proc_ready_cnt();
    void AESL_proc_tv_out();
    void AESL_proc_mlatcnterin();
    void AESL_proc_mlatcnterout();
    void AESL_proc_calculate_performance();
    void AESL_proc_tv_in_count_range();
    void AESL_proc_tv_in_counter();
    void AESL_proc_tv_out_counter();
    void AESL_proc_tv_out_ap_return();
    void AESL_proc_cnter();
    bool AESL_proc_split_tv();
    void AESL_proc_buffer_output();

#if defined(AESL_APATB_ALDEC)
    void AESL_proc_clock_bool() {
        if (AESL_clock.read() == SC_LOGIC_1)
            AESL_clock_bool.write(true);
        else
            AESL_clock_bool.write(false);
    }
#endif



    ~AUTOTB_TOP()
    {
        if (AESL_mErrNo != 0) {
            AESL_mErrLog << "AESL_mErrNo = " << AESL_mErrNo << endl;
        }
        AESL_mErrLog.close();
        AESL_mParamLog.close();
        AESL_mTvIn.close();
        AESL_mTvOut.close();
        AESL_mHdlTvIn.close();
        AESL_mHdlTvOut.close();
        delete AESL_mLatCnterIn;
        delete AESL_mLatCnterOut;
        delete AESL_lat_array;
        delete AESL_thr_array;
        delete AUTOTB_DUT_INST;
        delete AESL_inst_count_range;
        delete AESL_inst_counter;
    }

    SC_CTOR(AUTOTB_TOP)
    {
        AESL_mErrNo = 0;
        AESL_mTransNo = AUTOTB_TRANSACTION_NUM;
        AESL_mErrLog.open("err.log");
        AESL_mParamLog.open("param.log");
        AESL_mLatCnterIn    = new int[AUTOTB_TRANSACTION_NUM + 1];
        AESL_mLatCnterOut   = new int[AUTOTB_TRANSACTION_NUM + 1];
        AESL_lat_array      = new int[AUTOTB_TRANSACTION_NUM + 1];
        AESL_thr_array      = new int[AUTOTB_TRANSACTION_NUM + 1];


        AESL_mLatCnter = 0;
        AESL_mLatCnterInIdx = 0;
        AESL_mLatCnterOutIdx = 0;
        AESL_done_cnt = 0;

        ap_return_counter = 0;
        AESL_mFinishTvOut_counter = false;
        AESL_mFinishTvOut_ap_return = false;

        AESL_mHdlTvIn.open(AUTOTB_HDL_TVIN);
        AESL_mHdlTvOut.open(AUTOTB_HDL_TVOUT);

        if (!AESL_mHdlTvIn.good()
            || !AESL_mHdlTvOut.good()
        ) {
            AESL_mErrNo = 1;
            sc_stop();
            return;
        }
    
        AUTOTB_DUT_INST = new AUTOTB_DUT("AUTOTB_DUT_INST");
        AUTOTB_DUT_INST->ap_clk( AESL_clock );
        AUTOTB_DUT_INST->ap_rst_n( AESL_reset );
        AUTOTB_DUT_INST->ap_start( AESL_start );
        AUTOTB_DUT_INST->ap_done( AESL_done );
        AUTOTB_DUT_INST->ap_idle( AESL_idle );
        AUTOTB_DUT_INST->ap_ready( AESL_ready );
        AUTOTB_DUT_INST->count_range_TDATA( count_range_TDATA );
        AUTOTB_DUT_INST->count_range_TVALID( count_range_TVALID );
        AUTOTB_DUT_INST->count_range_TREADY( count_range_TREADY );
        AUTOTB_DUT_INST->counter_TDATA( counter_TDATA );
        AUTOTB_DUT_INST->counter_TVALID( counter_TVALID );
        AUTOTB_DUT_INST->counter_TREADY( counter_TREADY );
        AUTOTB_DUT_INST->ap_return( ap_return );

        AESL_inst_count_range = new AESL_axi_s_count_range("AESL_inst_count_range");
#if defined(AESL_APATB_ALDEC)
        AESL_inst_count_range->clk(AESL_clock_bool);
#endif
#if !defined(AESL_APATB_ALDEC)
        AESL_inst_count_range->clk(AESL_clock);
#endif
        AESL_inst_count_range->reset(AESL_reset);
        AESL_inst_count_range->TRAN_count_range_TDATA(count_range_TDATA);
        AESL_inst_count_range->TRAN_count_range_TVALID(count_range_TVALID);
        AESL_inst_count_range->TRAN_count_range_TREADY(count_range_TREADY);
        AESL_inst_count_range->count_range_TDATA_debug(count_range_TDATA_debug_reg);
        AESL_inst_count_range->ready(AESL_transaction_ready);
        AESL_inst_count_range->done(AESL_done_delay);

        AESL_inst_counter = new AESL_axi_s_counter("AESL_inst_counter");
#if defined(AESL_APATB_ALDEC)
        AESL_inst_counter->clk(AESL_clock_bool);
#endif
#if !defined(AESL_APATB_ALDEC)
        AESL_inst_counter->clk(AESL_clock);
#endif
        AESL_inst_counter->reset(AESL_reset);
        AESL_inst_counter->TRAN_counter_TDATA(counter_TDATA);
        AESL_inst_counter->TRAN_counter_TVALID(counter_TVALID);
        AESL_inst_counter->TRAN_counter_TREADY(counter_TREADY);
        AESL_inst_counter->counter_TDATA_debug(counter_TDATA_debug_reg);
        AESL_inst_counter->ready(AESL_transaction_ready);
        AESL_inst_counter->done(AESL_done_delay);

        SC_METHOD(AESL_proc_transaction_ready_count_range);
        sensitive << AESL_transaction_ready;


        SC_METHOD(AESL_proc_transaction_ready_counter);
        sensitive << AESL_transaction_ready;

        SC_METHOD(AESL_proc_transaction_done_counter);
        sensitive << AESL_done_delay;

        SC_METHOD(AESL_proc_ready_delay);
        sensitive << AESL_clock.pos() << AESL_reset;

        SC_METHOD(AESL_proc_done_delay);
        sensitive << AESL_clock.pos() << AESL_reset;

        SC_THREAD(AESL_proc_interface_done);
        sensitive << AESL_clock.pos();

        SC_METHOD(AESL_proc_transaction_ready);
        sensitive << AESL_initial_ready << AESL_ready_delay;

        SC_THREAD(AESL_proc_initial_ready);
        sensitive << AESL_clock.pos();

        SC_METHOD(AESL_proc_ready_cnt);
        sensitive << AESL_transaction_ready;

        SC_THREAD(AESL_proc_tv_in);
        sensitive << AESL_clock.pos();

        SC_THREAD(AESL_proc_tv_out);
        sensitive << AESL_clock.pos();

        SC_METHOD(AESL_proc_mlatcnterin);
        sensitive << AESL_clock.pos() << AESL_reset;

        SC_METHOD(AESL_proc_mlatcnterout);
        sensitive << AESL_clock.pos() << AESL_reset;

        SC_THREAD(AESL_proc_calculate_performance);
        sensitive << AESL_clock.pos();

        SC_THREAD(AESL_proc_tv_in_count_range);
         sensitive << AESL_clock.pos();


        SC_THREAD(AESL_proc_tv_in_counter);
         sensitive << AESL_clock.pos();


        SC_THREAD(AESL_proc_tv_out_counter);
         sensitive << AESL_clock.pos();


        SC_THREAD(AESL_proc_tv_out_ap_return);
         sensitive << AESL_clock.pos();


        SC_METHOD(AESL_proc_cnter);
        sensitive << AESL_clock.pos();

        SC_METHOD(AESL_proc_buffer_output);
        sensitive << AESL_clock.pos();

#if defined(AESL_APATB_ALDEC)
        SC_METHOD(AESL_proc_clock_bool);
        sensitive << AESL_clock;
#endif

    }

};


void AUTOTB_TOP::AESL_proc_buffer_output()
{
    if (0) {
        AESL_BUFF_ap_return.write(sc_lv<32>());
    }
    else if (AESL_done.read() == SC_LOGIC_1) {
        AESL_BUFF_ap_return.write(ap_return.read());
        ap_return_counter ++;
    }
}


void AUTOTB_TOP::AESL_proc_cnter()
{
    AESL_mLatCnter ++;
}


void AUTOTB_TOP::AESL_proc_tv_in()
{
    int wait_i;
    AESL_start.write(SC_LOGIC_0);
    AESL_ce.write(SC_LOGIC_1);
    AESL_continue.write(SC_LOGIC_1);
    AESL_reset.write(SC_LOGIC_0);
    wait();
    wait(4);
    AESL_reset.write(SC_LOGIC_1);

    wait();
    wait(10, SC_PS);
    AESL_start.write(SC_LOGIC_1);
    while (AESL_done_cnt < AUTOTB_TRANSACTION_NUM + 1) {
        wait();
    }
    AESL_start.write(SC_LOGIC_0);

}


void AUTOTB_TOP::AESL_proc_tv_out()
{
    wait();
    wait(4);

    while (1) {

        while (AESL_start.read() != SC_LOGIC_1)  wait();
        wait();

        unsigned AESL_latency = 0;
        bool AESL_timeout = false;
        if (true
            && AESL_mFinishTvOut_counter
            && AESL_mFinishTvOut_ap_return
        ) {
            break;
        }

    }

    wait(10, SC_PS);
    sc_stop();
}


void AUTOTB_TOP::AESL_proc_mlatcnterin()
{
    if(AESL_reset.read() == SC_LOGIC_0) 
    {
        AESL_mLatCnterInIdx = 0;
    }
    else {
        if (AESL_start.read() == SC_LOGIC_1 && AESL_mLatCnterInIdx == 0) {
            AESL_mLatCnterIn[AESL_mLatCnterInIdx++] = AESL_mLatCnter;
        }
        if (AESL_ready.read() == SC_LOGIC_1 && AESL_mLatCnterInIdx < AUTOTB_TRANSACTION_NUM + 1 ) {
            AESL_mLatCnterIn[AESL_mLatCnterInIdx++] = AESL_mLatCnter;
        }
    }
}

void AUTOTB_TOP::AESL_proc_mlatcnterout()
{
    if(AESL_reset.read() == SC_LOGIC_0) 
    {
        AESL_mLatCnterOutIdx = 0;
        AESL_mLatCnterOut[AESL_mLatCnterOutIdx] = AESL_mLatCnter + 1;
        AESL_done_cnt = 0;
    }
    else if (AESL_done.read() == SC_LOGIC_1 && AESL_mLatCnterOutIdx < AUTOTB_TRANSACTION_NUM + 1 ) {
        AESL_mLatCnterOut[AESL_mLatCnterOutIdx++] = AESL_mLatCnter;
        AESL_done_cnt ++;
    }
}

void AUTOTB_TOP::AESL_proc_calculate_performance()
{
    wait();
    wait(4);

    while (1) {

        wait();

        bool AESL_timeout = false;
        if (true
            && AESL_mFinishTvOut_counter
            && AESL_mFinishTvOut_ap_return
        ) {
            break;
        }

    }
    wait (1 , SC_PS);
    //////calculate latency/throught
    int AESL_tmp_latthistime;
    int AESL_tmp_lattotal = 0;
    int AESL_tmp_latmax = 0;
    int AESL_tmp_latmin = 0x7fffffff;
    int AESL_tmp_lataver;
    int AESL_tmp_thrthistime;
    int AESL_tmp_thrtotal = 0;
    int AESL_tmp_thrmax = 0;
    int AESL_tmp_thrmin = 0x7fffffff;
    int AESL_tmp_thraver;

    if (AESL_mLatCnterInIdx == 1 || AESL_mLatCnterInIdx == 0 ) {
        AESL_tmp_latmax  = 0;
        AESL_tmp_latmin  = 0;
        AESL_tmp_lataver = 0;
        AESL_tmp_thrmax  = 0;
        AESL_tmp_thrmin  = 0;
        AESL_tmp_thraver = 0;
        AESL_lat_array[0] = 0;
        AESL_thr_array[0] = 0;
    }
    else if (AESL_mLatCnterOutIdx == 1 || AESL_mLatCnterOutIdx == 0 ) {
        AESL_tmp_latmax  = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
        AESL_tmp_latmin  = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
        AESL_tmp_lataver = AESL_mLatCnterOut[0] - AESL_mLatCnterIn[0];
        AESL_tmp_thrmax  = AESL_mLatCnterIn[1] - AESL_mLatCnterIn[0] + 1;
        AESL_tmp_thrmin  = AESL_mLatCnterIn[1] - AESL_mLatCnterIn[0] + 1;
        AESL_tmp_thraver = AESL_mLatCnterIn[1] - AESL_mLatCnterIn[0] + 1;
        AESL_lat_array[0] = AESL_tmp_lataver;
        AESL_thr_array[0] = AESL_tmp_thraver;
    }
    else {
//LATENCY
        for (unsigned AESL_tmp_iii = 0; AESL_tmp_iii < AESL_mLatCnterOutIdx; AESL_tmp_iii++) {
            AESL_tmp_latthistime = AESL_mLatCnterOut[AESL_tmp_iii] - AESL_mLatCnterIn[AESL_tmp_iii];
            if ( AESL_tmp_iii > 0) {
                AESL_tmp_latthistime = (AESL_tmp_latthistime - 1 < 0) ? 0 : (AESL_tmp_latthistime - 1);
            }
            AESL_tmp_lattotal += AESL_tmp_latthistime;
            AESL_lat_array[AESL_tmp_iii]  = AESL_tmp_latthistime;
            if (AESL_tmp_latthistime > AESL_tmp_latmax) AESL_tmp_latmax = AESL_tmp_latthistime;
            if (AESL_tmp_latthistime < AESL_tmp_latmin) AESL_tmp_latmin = AESL_tmp_latthistime;
        }
//II
        for (unsigned AESL_tmp_iii = 0; AESL_tmp_iii < ((AESL_mLatCnterInIdx > 0 ) ? AESL_mLatCnterInIdx - 1 : 0); AESL_tmp_iii++) {
            AESL_tmp_thrthistime = AESL_mLatCnterIn[AESL_tmp_iii + 1] - AESL_mLatCnterIn[AESL_tmp_iii];
            if ( AESL_tmp_iii == 0) {
                AESL_tmp_thrthistime = AESL_tmp_thrthistime + 1;
            }
            AESL_tmp_thrtotal += AESL_tmp_thrthistime;
            AESL_thr_array[AESL_tmp_iii]  = AESL_tmp_thrthistime;
            if (AESL_tmp_thrthistime > AESL_tmp_thrmax) AESL_tmp_thrmax = AESL_tmp_thrthistime;
            if (AESL_tmp_thrthistime < AESL_tmp_thrmin) AESL_tmp_thrmin = AESL_tmp_thrthistime;
        }
        AESL_thr_array[AESL_mLatCnterInIdx - 1]  = 0;
        AESL_tmp_lataver = AESL_tmp_lattotal / (AESL_mLatCnterOutIdx);
        AESL_tmp_thraver = AESL_tmp_thrtotal / (AESL_mLatCnterInIdx - 1);
    }

    ofstream AESL_tmp_result_file(AUTOTB_LAT_RESULT_FILE);
    AESL_tmp_result_file << "$MAX_LATENCY = \"" << AESL_tmp_latmax  << "\"\n";
    AESL_tmp_result_file << "$MIN_LATENCY = \"" << AESL_tmp_latmin  << "\"\n";
    AESL_tmp_result_file << "$AVER_LATENCY = \"" << AESL_tmp_lataver  << "\"\n";
    AESL_tmp_result_file << "$MAX_THROUGHPUT = \"" << AESL_tmp_thrmax << "\"\n";
    AESL_tmp_result_file << "$MIN_THROUGHPUT = \"" << AESL_tmp_thrmin << "\"\n";
    AESL_tmp_result_file << "$AVER_THROUGHPUT = \"" << AESL_tmp_thraver << "\"\n";
    AESL_tmp_result_file.close();
    ofstream AESL_tmp_result_trans_file(AUTOTB_PER_RESULT_TRANS_FILE);
    char s[100] = "";
    sprintf (s,"%20s%16s%16s\n","","latency","interval");
    AESL_tmp_result_trans_file << s ;
    for (int i = 0; i < AESL_mLatCnterOutIdx; i++) {
        sprintf (s,"transaction%8d:%16d%16d\n",i ,AESL_lat_array[i],AESL_thr_array[i]);
        AESL_tmp_result_trans_file << s ;
    }
    AESL_tmp_result_trans_file.close();


}
void AUTOTB_TOP::AESL_proc_ready_cnt()
{
    if(AESL_reset.read() == SC_LOGIC_0) 
    {
        AESL_ready_cnt = 0;
    } else if (AESL_transaction_ready == 1 && AESL_ready_cnt <= AUTOTB_TRANSACTION_NUM) {
        AESL_ready_cnt ++;
    }
}
void AUTOTB_TOP::AESL_proc_initial_ready() {
    wait ();
    AESL_initial_ready = SC_LOGIC_0;
    while(AESL_reset.read() == SC_LOGIC_0)
    {
        wait ();
        wait (10, SC_PS);
    }
    wait ();
    AESL_initial_ready = SC_LOGIC_1;

    wait ();
    AESL_initial_ready = SC_LOGIC_0;
    while (1) wait();
}

void AUTOTB_TOP::AESL_proc_ready_delay() {
    if(AESL_reset.read() == SC_LOGIC_0) 
    {
       AESL_ready_delay = SC_LOGIC_0;
    } else {
       AESL_ready_delay = AESL_ready;
    }
}

void AUTOTB_TOP::AESL_proc_done_delay() {
    if(AESL_reset.read() == SC_LOGIC_0) 
    {
       AESL_done_delay.write(SC_LOGIC_0);
       AESL_done_delay2.write(SC_LOGIC_0);
    } else {
       AESL_done_delay.write(AESL_done.read());
       AESL_done_delay2.write(AESL_done_delay.read());
    }
}

void AUTOTB_TOP::AESL_proc_transaction_ready() {
    AESL_transaction_ready = AESL_initial_ready | AESL_ready_delay;
}

void AUTOTB_TOP::AESL_proc_interface_done() {
    wait();
    AESL_interface_done = SC_LOGIC_0;
    while(AESL_reset.read() == SC_LOGIC_0)
    {
        wait();
        wait(10, SC_PS);
    }
    while (1) {
        wait (1, SC_PS);
        if (AESL_transaction_ready == 1 && AESL_ready_cnt > 1 && AESL_ready_cnt <= AUTOTB_TRANSACTION_NUM)
            AESL_interface_done = SC_LOGIC_1;
        else if(AESL_done_delay == 1 && AESL_done_cnt == AUTOTB_TRANSACTION_NUM)
            AESL_interface_done = SC_LOGIC_1;
        else
            AESL_interface_done = SC_LOGIC_0;
        wait();
    }
}

void AUTOTB_TOP::AESL_proc_transaction_ready_count_range () {
    AESL_transaction_ready_count_range = AESL_transaction_ready;
}


void AUTOTB_TOP::AESL_proc_transaction_ready_counter () {
    AESL_transaction_ready_counter = AESL_transaction_ready;
}

void AUTOTB_TOP::AESL_proc_transaction_done_counter () {
    AESL_transaction_done_counter = AESL_done_delay;
}

//==================== count_range ======================
void AUTOTB_TOP::AESL_proc_tv_in_count_range()
{
    count_range_TDATA_debug_reg.write(SC_LOGIC_0);
    wait();
    wait(20, SC_PS);
    while (AESL_transaction_ready_count_range.read() != SC_LOGIC_1) {
      wait();
      wait(20, SC_PS);
   }

    string AESL_transIdx;
    string AESL_token;
    AESL_fh.read(AUTOTB_TVIN_count_range, AESL_token);
    while (AESL_token != "[[[/runtime]]]") {
        if (AESL_token != "[[transaction]]") {
          cerr << "illegal tv format of AUTOTB_TVIN_count_range , exit!\n";
            AESL_mErrNo++;
            sc_stop();
            return;
        }
        AESL_fh.read(AUTOTB_TVIN_count_range, AESL_transIdx);
        AESL_fh.read(AUTOTB_TVIN_count_range, AESL_token);
        unsigned AESL_i = 0;
        AESL_inst_count_range->count_range_TDATA_mStorage.clear();
        while (AESL_token != "[[/transaction]]") {
            sc_lv<32> AESL_tempval = AESL_token.c_str();
            AESL_inst_count_range->count_range_TDATA_mStorage.push_back(AESL_tempval);
            AESL_i++;
            AESL_fh.read(AUTOTB_TVIN_count_range, AESL_token);
        }
        if (AESL_i >= 0) {
            AESL_inst_count_range->count_range_TDATA_debug_in_ptr.write(AESL_i);
            AESL_inst_count_range->count_range_TDATA_debug_out_ptr.write(0);
            AESL_inst_count_range->count_range_TDATA_debug_nEF_hint.write(SC_LOGIC_0);
        }
        AESL_fh.read(AUTOTB_TVIN_count_range, AESL_token);
        wait(10, SC_PS);
        count_range_TDATA_debug_reg.write(SC_LOGIC_1);
        wait(10, SC_PS);
        count_range_TDATA_debug_reg.write(SC_LOGIC_0);
        wait();
        wait(20, SC_PS);
 
        while (AESL_transaction_ready_count_range.read()==SC_LOGIC_0) {
            wait();
            wait(20, SC_PS);
        }
    }
    AESL_inst_count_range->count_range_TDATA_debug_in_ptr.write(0);
    AESL_inst_count_range->count_range_TDATA_debug_nEF_hint.write(SC_LOGIC_1);
    count_range_TDATA_debug_reg.write(SC_LOGIC_1);
    while (1) wait();
}

//==================== counter ======================
void AUTOTB_TOP::AESL_proc_tv_in_counter()
{
    wait();
    wait(20, SC_PS);
    while (AESL_transaction_ready_counter.read() != SC_LOGIC_1) {
      wait();
      wait(20, SC_PS);
   }

    string AESL_transIdx;
    string AESL_token;
    AESL_fh.read(AUTOTB_TVIN_counter, AESL_token);
    while (AESL_token != "[[[/runtime]]]") {
        if (AESL_token != "[[transaction]]") {
          cerr << "illegal tv format of AUTOTB_TVIN_counter , exit!\n";
            AESL_mErrNo++;
            sc_stop();
            return;
        }
        AESL_fh.read(AUTOTB_TVIN_counter, AESL_transIdx);
        AESL_fh.read(AUTOTB_TVIN_counter, AESL_token);
        unsigned AESL_i = 0;
        AESL_inst_counter->counter_TDATA_mStorage.clear();
        while (AESL_token != "[[/transaction]]") {
            sc_lv<32> AESL_tempval = AESL_token.c_str();
            AESL_inst_counter->counter_TDATA_mStorage.push_back(AESL_tempval);
            AESL_i++;
            AESL_fh.read(AUTOTB_TVIN_counter, AESL_token);
        }
         if (AESL_i == 0) {
            AESL_inst_counter->counter_TDATA_debug_out_ptr.write(1 );
         }
         else {
            AESL_inst_counter->counter_TDATA_debug_out_ptr.write(AESL_i);
         }
        AESL_inst_counter->counter_TDATA_debug_in_ptr.write(0);
        AESL_inst_counter->counter_TDATA_debug_nEF_hint.write(SC_LOGIC_1);
        AESL_fh.read(AUTOTB_TVIN_counter, AESL_token);
 
        while (AESL_transaction_ready_counter.read()==SC_LOGIC_0) {
            wait();
            wait(20, SC_PS);
        }
    }
    while (1) wait();
}

void AUTOTB_TOP::AESL_proc_tv_out_ap_return()
{
    wait();

    unsigned AESL_transIdx = 0;
    unsigned AESL_i;
    stringstream AESL_str;

    while (AESL_transIdx < AUTOTB_TRANSACTION_NUM) {
        wait();

        unsigned AESL_latency = 0;
        bool AESL_timeout = false;
        while (AESL_done.read() != SC_LOGIC_1) {
            AESL_latency++;
            wait();
        }


        AESL_str.str("");
        AESL_str <<"[[transaction]]" ;
        AESL_str << " " << AESL_transIdx << endl;
        AESL_fh.write(AUTOTB_TVOUT_ap_return_out_wrapc, AESL_str.str());
        AESL_transIdx ++;
        sc_lv<32> AESL_expected;
        if (!AESL_timeout) {
            if (1) {
                char AESL_szName[1024];
                sprintf(AESL_szName, "ap_return");;
                unsigned AESL_wlen =  strlen(AESL_szName);
                string AESL_sphd =  string(AESL_wlen, ' ');
                string argValStr = "X";
                int flag_ap_return_is_01 = 0 ;
                int tmp_num;
                sc_lv<32> tmp_ap_return = ap_return.read(); 
                for (tmp_num = 0 ; tmp_num < 32 ; tmp_num++) {
                    if (tmp_ap_return[tmp_num].is_01()) {
                        flag_ap_return_is_01 = 1;
                        break;
                    }
                }
                if(flag_ap_return_is_01 == 1) {
                    for (tmp_num = 0 ; tmp_num < 32 ; tmp_num++) {
                        if (!tmp_ap_return[tmp_num].is_01()) {
                            tmp_ap_return[tmp_num] = 0;
                        }
                    }
                    argValStr = tmp_ap_return.to_string(SC_HEX);
                }
                if (argValStr == "X") {
                    AESL_str.str("");
                    AESL_str << ap_return.read() << endl;
                    AESL_fh.write(AUTOTB_TVOUT_ap_return_out_wrapc, AESL_str.str());
                } else {
                    AESL_str.str("");
                    AESL_str << argValStr << endl;
                    AESL_fh.write(AUTOTB_TVOUT_ap_return_out_wrapc, AESL_str.str());
                }
            }
            else if (AESL_BUFF_ap_return.read().is_01()) {
                char AESL_szName[1024];
                sprintf(AESL_szName, "ap_return");;
                unsigned AESL_wlen =  strlen(AESL_szName);
                string AESL_sphd =  string(AESL_wlen, ' ');
                string argValStr = "X";
                int flag_AESL_BUFF_ap_return_is_01 = 0 ;
                int tmp_num;
                sc_lv<32> tmp_AESL_BUFF_ap_return = AESL_BUFF_ap_return.read(); 
                for (tmp_num = 0 ; tmp_num < 32 ; tmp_num++) {
                    if (tmp_AESL_BUFF_ap_return[tmp_num].is_01()) {
                        flag_AESL_BUFF_ap_return_is_01 = 1;
                        break;
                    }
                }
                if(flag_AESL_BUFF_ap_return_is_01 == 1) {
                    for (tmp_num = 0 ; tmp_num < 32 ; tmp_num++) {
                        if (!tmp_AESL_BUFF_ap_return[tmp_num].is_01()) {
                            tmp_AESL_BUFF_ap_return[tmp_num] = 0;
                        }
                    }
                    argValStr = tmp_AESL_BUFF_ap_return.to_string(SC_HEX);
                }
                if (argValStr == "X") {
                    AESL_str.str("");
                    AESL_str << AESL_BUFF_ap_return.read() << endl;
                    AESL_fh.write(AUTOTB_TVOUT_ap_return_out_wrapc, AESL_str.str());
                } else {
                    AESL_str.str("");
                    AESL_str << argValStr << endl;
                    AESL_fh.write(AUTOTB_TVOUT_ap_return_out_wrapc, AESL_str.str());
                }
            }
        }

            AESL_str.str("");
            AESL_str << "[[/transaction]]" << endl;
            AESL_fh.write(AUTOTB_TVOUT_ap_return_out_wrapc, AESL_str.str());
    }


    AESL_mFinishTvOut_ap_return = true;

    while (1) wait();
}


//==================== counter ======================
void AUTOTB_TOP::AESL_proc_tv_out_counter()
{
    unsigned AESL_transIdx = 0;
    unsigned AESL_i;
    bool AESL_ignore = 0;
    stringstream AESL_str;
    counter_TDATA_debug_reg.write(SC_LOGIC_0);
    wait();


    while (AESL_transIdx < AUTOTB_TRANSACTION_NUM) {
        AESL_str.str("");
        AESL_str <<"[[transaction]]" ;
        AESL_str << " " << AESL_transIdx << endl;
        AESL_fh.write(AUTOTB_TVOUT_counter_out_wrapc, AESL_str.str());
        counter_TDATA_debug_reg.write(SC_LOGIC_1);
        wait(10, SC_PS);
        counter_TDATA_debug_reg.write(SC_LOGIC_0);
        wait();
        wait(10, SC_PS);

        bool AESL_timeout = false;
        while (AESL_transaction_done_counter.read() != SC_LOGIC_1) {
            wait();
            wait(10, SC_PS);
        }
        if (AESL_inst_counter->counter_TDATA_empty_n.read() == SC_LOGIC_0) {
        cerr << "Output axi_s model counter_TDATA is empty. counter_TDATA of DUT doesn't ouput. Comparison is ignored." << endl;
        }
        int counter_TDATA_size = LENGTH_counter ;
        counter_TDATA_size = (AESL_inst_counter->counter_TDATA_mStorage.size() <= counter_TDATA_size) ? AESL_inst_counter->counter_TDATA_mStorage.size() : counter_TDATA_size;
        unsigned AESL_i = 0;
        unsigned counter_TDATA_depth_counter_tmp = 0;
        while (counter_TDATA_depth_counter_tmp < counter_TDATA_size) {
                if (AESL_i < 1) {
                    char AESL_szName[1024];
                    sprintf(AESL_szName,  "counter[%d]",AESL_i);;
                    unsigned AESL_wlen =  strlen(AESL_szName);
                    string AESL_sphd =  string(AESL_wlen, ' ');
                    string argValStr = "X";
                    if (AESL_inst_counter->counter_TDATA_mStorage[AESL_i].is_01())
                        argValStr = AESL_inst_counter->counter_TDATA_mStorage[AESL_i].to_string(SC_HEX);
                    if (argValStr == "X") {
                        AESL_str.str("");
                        AESL_str << AESL_inst_counter->counter_TDATA_mStorage[AESL_i] << endl;
                        AESL_fh.write(AUTOTB_TVOUT_counter_out_wrapc, AESL_str.str());
                    } else {
                        AESL_str.str("");
                        AESL_str << argValStr << endl;
                        AESL_fh.write(AUTOTB_TVOUT_counter_out_wrapc, AESL_str.str());
                    }
                    AESL_i++;
                }
                else {
                    AESL_mErrNo++;
                    cerr << "\t\taxi_s out of bound!\n";
                }
            counter_TDATA_depth_counter_tmp++;
        }

        AESL_inst_counter->counter_TDATA_mStorage.clear();
        AESL_str.str("");
        AESL_str << "[[/transaction]]" << endl;
        AESL_fh.write(AUTOTB_TVOUT_counter_out_wrapc, AESL_str.str());
        AESL_transIdx ++;
    }

    wait(10, SC_PS);
    counter_TDATA_debug_reg.write(SC_LOGIC_1);
    wait(10, SC_PS);
    counter_TDATA_debug_reg.write(SC_LOGIC_0);

    AESL_mFinishTvOut_counter = true;

    while (1) wait();
}


#if defined(AESL_APATB_EXPORT)
#endif

#if !defined(AESL_APATB_EXPORT)
int sc_main(int ap_argc, char* ap_argv[])
{
    sc_clock clk("clk", 10.000000,SC_NS,0.5,0,SC_NS,false);
    AUTOTB_TOP AUTOTB_TOP_INST("top");

    AUTOTB_TOP_INST.AESL_clock(clk); 

    sc_report_handler::set_actions( SC_ID_LOGIC_X_TO_BOOL_, SC_LOG);
    sc_report_handler::set_actions( SC_ID_VECTOR_CONTAINS_LOGIC_VALUE_, SC_LOG);
    sc_report_handler::set_actions( SC_ID_MORE_THAN_ONE_SIGNAL_DRIVER_, SC_DISPLAY | SC_ABORT);

    sc_report_handler::set_actions("/IEEE_Std_1666/deprecated", SC_DO_NOTHING);
    try {
        sc_start();
    } catch (const sc_report& ex) {
        AUTOTB_TOP_INST.AESL_mErrNo++;
        cout << "\n" << ex.what() << endl;
	  } catch (...) {
        AUTOTB_TOP_INST.AESL_mErrNo++;
	      cout << "\nSystemC unknown internal error.\n";
    }

    return ((AUTOTB_TOP_INST.AESL_mErrNo != 0)? 1: 0);
}
#endif


#ifdef AESL_APATB_EXPORT
SC_MODULE_EXPORT(apatb_axi_stream_counter_range_top);
#endif

