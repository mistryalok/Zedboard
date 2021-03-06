// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================


#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;




   #define AUTOTB_TVOUT_counter  "../tv/cdatafile/c.axi_stream_counter.autotvout_counter.dat"
   #define AUTOTB_TVIN_counter  "../tv/cdatafile/c.axi_stream_counter.autotvin_counter.dat"
   #define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.axi_stream_counter.autotvout_ap_return.dat"
   #define INTER_TCL  "../tv/cdatafile/ref.tcl"

   #define AUTOTB_TVOUT_PC_counter  "../tv/rtldatafile/rtl.axi_stream_counter.autotvout_counter.dat"
   #define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.axi_stream_counter.autotvout_ap_return.dat"

class INTER_TCL_FILE {
    public:
//functions
        INTER_TCL_FILE(const char* name) {
            mName = name;
            counter_depth = 0;
            ap_return_depth = 0;
            trans_num =0;
        }
        ~INTER_TCL_FILE() {
            mFile.open(mName);
            if (!mFile.good() ) {
                cout<<"Failed to open file ref.tcl."<<endl;
                exit (1);
            }
            string total_list = get_depth_list();
            mFile<<"set depth_list {\n";
            mFile<<total_list; 
            mFile<<"}\n";
            mFile<<"set trans_num "<<trans_num<<endl;
            mFile.close();
        }
        string get_depth_list () {
            stringstream total_list;
            total_list<<"   {counter "<< counter_depth << "}\n";
            total_list<<"   {ap_return "<< ap_return_depth << "}\n";
            return total_list.str();
        }
        void set_num (int num , int* class_num) {
            (*class_num) = (*class_num) > num ? (*class_num) : num;
        }
    public:
//variables
        int counter_depth;
        int ap_return_depth;
        int trans_num;
    private:
        ofstream mFile;
        const char* mName;
};

#define axi_stream_counter AESL_ORIG_DUT_axi_stream_counter
extern int axi_stream_counter ( int* counter);
#undef axi_stream_counter
int axi_stream_counter ( int* counter) {

    fstream wrapc_switch_file_token;

    wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");

    int AESL_i;

    if (wrapc_switch_file_token.good()) {

        static unsigned AESL_transaction_pc;

        string AESL_token;

        string AESL_num;

        static AESL_FILE_HANDLER aesl_fh;

        int AESL_return;

        aesl_fh.read(AUTOTB_TVOUT_PC_counter, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_counter, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_counter, AESL_token); //data

            sc_bv<32> *counter_pc_buffer = new sc_bv<32>[1];

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'counter', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'counter', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    counter_pc_buffer[i] = AESL_token.c_str();

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_counter, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_counter)) {

                   exit(1);

                }

            }

            if (i > 0) {

                sc_lv<32> *counter_lv0_0_0_1 = new sc_lv<32>[1];

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 0; i_0 <= 0 ; i_0+= 1) {

                    if(&(counter[0]) != 0) {

                       counter_lv0_0_0_1[0 + AESL_i].range(31, 0) = sc_bv<32>(counter_pc_buffer[0 + AESL_i].range(31, 0));

                    }

                    AESL_i++;

                }

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 0; i_0 <= 0 ; i_0+= 1) {

                    if(&(counter[0]) != 0) {

                       counter[i_0] = (counter_lv0_0_0_1[0 + AESL_i]).to_uint64();

                    }

                    AESL_i++;

                }

                }

            delete [] counter_pc_buffer;

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); //data

            sc_bv<32> ap_return_pc_buffer;

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    ap_return_pc_buffer = AESL_token.c_str();

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return)) {

                   exit(1);

                }

            }

            if (i > 0) {

                sc_lv<32> return_lv0_0_1_0;

                AESL_i = 0; //subscript for rtl array

                if(&(AESL_return) != 0) {

                   return_lv0_0_1_0.range(31, 0) = sc_bv<32>(ap_return_pc_buffer.range(31, 0));

                }

                AESL_i++;

                AESL_i = 0; //subscript for rtl array

                if(&(AESL_return) != 0) {

                   AESL_return = (return_lv0_0_1_0).to_uint64();

                }

                AESL_i++;

                }

        }

        AESL_transaction_pc ++ ;

        return AESL_return;

    } else {

        static unsigned AESL_transaction;

        static AESL_FILE_HANDLER aesl_fh;

        char* tvout_counter = new char[50];

        char* tvin_counter = new char[50];

        aesl_fh.touch(AUTOTB_TVIN_counter);

        char* tvout_ap_return = new char[50];

        static INTER_TCL_FILE tcl_file(INTER_TCL);


        int leading_zero;

        sprintf(tvin_counter, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_counter, tvin_counter);

        sc_bv<32> *counter_tvin_wrapc_buffer = new sc_bv<32>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= 0 ; i_0+= 1) {

        sc_lv<32> counter_tmp_mem; 

            if(&(counter[0]) != 0) {

            counter_tmp_mem = counter[i_0];

               counter_tvin_wrapc_buffer[0 + AESL_i].range(31, 0) = counter_tmp_mem.range(31, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvin_counter, "%s\n", (counter_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_counter, tvin_counter);

        }

        tcl_file.set_num(1,&tcl_file.counter_depth);

        sprintf(tvin_counter, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_counter, tvin_counter);

        delete [] counter_tvin_wrapc_buffer;

        int AESL_return = AESL_ORIG_DUT_axi_stream_counter(counter);

        sprintf(tvout_counter, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_counter, tvout_counter);

        sc_bv<32> *counter_tvout_wrapc_buffer = new sc_bv<32>[1];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= 0 ; i_0+= 1) {

        sc_lv<32> counter_tmp_mem; 

            if(&(counter[0]) != 0) {

            counter_tmp_mem = counter[i_0];

               counter_tvout_wrapc_buffer[0 + AESL_i].range(31, 0) = counter_tmp_mem.range(31, 0 ) ;

            }

            AESL_i++;

        }

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvout_counter, "%s\n", (counter_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_counter, tvout_counter);

        }

        tcl_file.set_num(1,&tcl_file.counter_depth);

        sprintf(tvout_counter, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_counter, tvout_counter);

        delete [] counter_tvout_wrapc_buffer;

        sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

        sc_bv<32> ap_return_tvout_wrapc_buffer;

        AESL_i = 0; //subscript for rtl array

        sc_lv<32> return_tmp_mem; 

        if(&(AESL_return) != 0) {

        return_tmp_mem = AESL_return;

           ap_return_tvout_wrapc_buffer.range(31, 0) = return_tmp_mem.range(31, 0 ) ;

        }

        AESL_i++;

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

        }

        tcl_file.set_num(1,&tcl_file.ap_return_depth);

        sprintf(tvout_ap_return, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

        delete [] tvout_counter;

        delete [] tvin_counter;

        delete [] tvout_ap_return;

        AESL_transaction++;

        tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

        return AESL_return;

    }
}


