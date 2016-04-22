// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "adder.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic adder::ap_const_logic_1 = sc_dt::Log_1;
const int adder::C_DATA_WIDTH = "100000";
const sc_logic adder::ap_const_logic_0 = sc_dt::Log_0;

adder::adder(sc_module_name name) : sc_module(name), mVcdFile(0) {
    adder_AXI_CTRL_s_axi_U = new adder_AXI_CTRL_s_axi<C_S_AXI_AXI_CTRL_ADDR_WIDTH,C_S_AXI_AXI_CTRL_DATA_WIDTH>("adder_AXI_CTRL_s_axi_U");
    adder_AXI_CTRL_s_axi_U->AWVALID(s_axi_AXI_CTRL_AWVALID);
    adder_AXI_CTRL_s_axi_U->AWREADY(s_axi_AXI_CTRL_AWREADY);
    adder_AXI_CTRL_s_axi_U->AWADDR(s_axi_AXI_CTRL_AWADDR);
    adder_AXI_CTRL_s_axi_U->WVALID(s_axi_AXI_CTRL_WVALID);
    adder_AXI_CTRL_s_axi_U->WREADY(s_axi_AXI_CTRL_WREADY);
    adder_AXI_CTRL_s_axi_U->WDATA(s_axi_AXI_CTRL_WDATA);
    adder_AXI_CTRL_s_axi_U->WSTRB(s_axi_AXI_CTRL_WSTRB);
    adder_AXI_CTRL_s_axi_U->ARVALID(s_axi_AXI_CTRL_ARVALID);
    adder_AXI_CTRL_s_axi_U->ARREADY(s_axi_AXI_CTRL_ARREADY);
    adder_AXI_CTRL_s_axi_U->ARADDR(s_axi_AXI_CTRL_ARADDR);
    adder_AXI_CTRL_s_axi_U->RVALID(s_axi_AXI_CTRL_RVALID);
    adder_AXI_CTRL_s_axi_U->RREADY(s_axi_AXI_CTRL_RREADY);
    adder_AXI_CTRL_s_axi_U->RDATA(s_axi_AXI_CTRL_RDATA);
    adder_AXI_CTRL_s_axi_U->RRESP(s_axi_AXI_CTRL_RRESP);
    adder_AXI_CTRL_s_axi_U->BVALID(s_axi_AXI_CTRL_BVALID);
    adder_AXI_CTRL_s_axi_U->BREADY(s_axi_AXI_CTRL_BREADY);
    adder_AXI_CTRL_s_axi_U->BRESP(s_axi_AXI_CTRL_BRESP);
    adder_AXI_CTRL_s_axi_U->ACLK(ap_clk);
    adder_AXI_CTRL_s_axi_U->ARESET(ap_rst_n_inv);
    adder_AXI_CTRL_s_axi_U->ACLK_EN(adder_AXI_CTRL_s_axi_U_ap_dummy_ce);
    adder_AXI_CTRL_s_axi_U->ap_start(ap_start);
    adder_AXI_CTRL_s_axi_U->interrupt(interrupt);
    adder_AXI_CTRL_s_axi_U->ap_ready(ap_ready);
    adder_AXI_CTRL_s_axi_U->ap_done(ap_done);
    adder_AXI_CTRL_s_axi_U->ap_idle(ap_idle);
    adder_AXI_CTRL_s_axi_U->a(a);
    adder_AXI_CTRL_s_axi_U->b(b);
    adder_AXI_CTRL_s_axi_U->c(c);
    adder_AXI_CTRL_s_axi_U->c_ap_vld(c_ap_vld);

    SC_METHOD(thread_adder_AXI_CTRL_s_axi_U_ap_dummy_ce);

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_c);
    sensitive << ( ap_start );
    sensitive << ( a );
    sensitive << ( b );

    SC_METHOD(thread_c_ap_vld);
    sensitive << ( ap_start );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "adder_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, s_axi_AXI_CTRL_AWVALID, "(port)s_axi_AXI_CTRL_AWVALID");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_AWREADY, "(port)s_axi_AXI_CTRL_AWREADY");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_AWADDR, "(port)s_axi_AXI_CTRL_AWADDR");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_WVALID, "(port)s_axi_AXI_CTRL_WVALID");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_WREADY, "(port)s_axi_AXI_CTRL_WREADY");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_WDATA, "(port)s_axi_AXI_CTRL_WDATA");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_WSTRB, "(port)s_axi_AXI_CTRL_WSTRB");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_ARVALID, "(port)s_axi_AXI_CTRL_ARVALID");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_ARREADY, "(port)s_axi_AXI_CTRL_ARREADY");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_ARADDR, "(port)s_axi_AXI_CTRL_ARADDR");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_RVALID, "(port)s_axi_AXI_CTRL_RVALID");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_RREADY, "(port)s_axi_AXI_CTRL_RREADY");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_RDATA, "(port)s_axi_AXI_CTRL_RDATA");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_RRESP, "(port)s_axi_AXI_CTRL_RRESP");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_BVALID, "(port)s_axi_AXI_CTRL_BVALID");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_BREADY, "(port)s_axi_AXI_CTRL_BREADY");
    sc_trace(mVcdFile, s_axi_AXI_CTRL_BRESP, "(port)s_axi_AXI_CTRL_BRESP");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, a, "a");
    sc_trace(mVcdFile, b, "b");
    sc_trace(mVcdFile, c, "c");
    sc_trace(mVcdFile, c_ap_vld, "c_ap_vld");
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, adder_AXI_CTRL_s_axi_U_ap_dummy_ce, "adder_AXI_CTRL_s_axi_U_ap_dummy_ce");
#endif

    }
    mHdltvinHandle.open("adder.hdltvin.dat");
    mHdltvoutHandle.open("adder.hdltvout.dat");
}

adder::~adder() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete adder_AXI_CTRL_s_axi_U;
}

void adder::thread_adder_AXI_CTRL_s_axi_U_ap_dummy_ce() {
    adder_AXI_CTRL_s_axi_U_ap_dummy_ce = ap_const_logic_1;
}

void adder::thread_ap_done() {
    ap_done = ap_start.read();
}

void adder::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void adder::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void adder::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void adder::thread_c() {
    c = (!b.read().is_01() || !a.read().is_01())? sc_lv<32>(): (sc_biguint<32>(b.read()) + sc_biguint<32>(a.read()));
}

void adder::thread_c_ap_vld() {
    if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
        c_ap_vld = ap_const_logic_1;
    } else {
        c_ap_vld = ap_const_logic_0;
    }
}

void adder::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"s_axi_AXI_CTRL_AWVALID\" :  \"" << s_axi_AXI_CTRL_AWVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"s_axi_AXI_CTRL_AWREADY\" :  \"" << s_axi_AXI_CTRL_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_AWADDR\" :  \"" << s_axi_AXI_CTRL_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_WVALID\" :  \"" << s_axi_AXI_CTRL_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_WREADY\" :  \"" << s_axi_AXI_CTRL_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_WDATA\" :  \"" << s_axi_AXI_CTRL_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_WSTRB\" :  \"" << s_axi_AXI_CTRL_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_ARVALID\" :  \"" << s_axi_AXI_CTRL_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_ARREADY\" :  \"" << s_axi_AXI_CTRL_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_ARADDR\" :  \"" << s_axi_AXI_CTRL_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_RVALID\" :  \"" << s_axi_AXI_CTRL_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_RREADY\" :  \"" << s_axi_AXI_CTRL_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_RDATA\" :  \"" << s_axi_AXI_CTRL_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_RRESP\" :  \"" << s_axi_AXI_CTRL_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_BVALID\" :  \"" << s_axi_AXI_CTRL_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXI_CTRL_BREADY\" :  \"" << s_axi_AXI_CTRL_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXI_CTRL_BRESP\" :  \"" << s_axi_AXI_CTRL_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

