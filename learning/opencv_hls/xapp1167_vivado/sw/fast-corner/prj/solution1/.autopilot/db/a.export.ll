; ModuleID = '/home/alok/githum/Zedboard/Learning/opencv_hls/xapp1167_vivado/sw/fast-corner/prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1805 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1807 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str1808 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str1813 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1814 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1818 = private unnamed_addr constant [13 x i8] c"hls_label_18\00", align 1
@p_str1821 = private unnamed_addr constant [24 x i8] c"_src.rows == _mask.rows\00", align 1
@p_str1822 = private unnamed_addr constant [79 x i8] c"/opt/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot/hls/hls_video_fast.h\00", align 1
@p_PRETTY_FUNCTION_ZN3hls9Pa = private unnamed_addr constant [250 x i8] c"void hls::PaintMask(Mat<ROWS, COLS, SRC_T> &, Mat<ROWS, COLS, MASK_T> &, Mat<ROWS, COLS, SRC_T> &, Scalar<((((SRC_T) & ((512 - 1) << 4)) >> 4) + 1), typename Type<((SRC_T) & ((1 << 4) - 1))>::name>) [SRC_T = 32, MASK_T = 0, ROWS = 1080, COLS = 1920]\00", align 1
@p_str1823 = private unnamed_addr constant [23 x i8] c"_src.rows == _dst.rows\00", align 1
@p_str1824 = private unnamed_addr constant [24 x i8] c"_src.cols == _mask.cols\00", align 1
@p_str1825 = private unnamed_addr constant [23 x i8] c"_src.cols == _dst.cols\00", align 1
@p_str1828 = private unnamed_addr constant [13 x i8] c"hls_label_20\00", align 1
@p_str1831 = private unnamed_addr constant [82 x i8] c"/opt/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot/hls/hls_video_imgproc.h\00", align 1
@p_PRETTY_FUNCTION_ZN3hls10f = private unnamed_addr constant [408 x i8] c"static void hls::filter_opr<hls::dilate_kernel, hls::BORDER_REPLICATE>::filter(Mat<IMG_HEIGHT, IMG_WIDTH, SRC_T> &, Mat<IMG_HEIGHT, IMG_WIDTH, DST_T> &, Window<K_HEIGHT, K_WIDTH, KN_T> &, Point_<POINT_T>, int, int) [OPR_KERNEL = hls::dilate_kernel, BORDERMODE = hls::BORDER_REPLICATE, SRC_T = 0, DST_T = 0, KN_T = unsigned char, POINT_T = int, IMG_HEIGHT = 1080, IMG_WIDTH = 1920, K_HEIGHT = 3, K_WIDTH = 3]\00", align 1
@p_str1835 = private unnamed_addr constant [12 x i8] c"channelloop\00", align 1
@p_str1836 = private unnamed_addr constant [79 x i8] c"(x < IMG_WIDTH) && ((BORDERMODE::value == BORDER_CONSTANT::value) || (x >= 0))\00", align 1
@p_str1837 = private unnamed_addr constant [40 x i8] c"t < 0 || (locy >= 0 && locy < K_HEIGHT)\00", align 1
@p_str1838 = private unnamed_addr constant [49 x i8] c"row >= 0 && row < ROWS && col >= 0 && col < COLS\00", align 1
@p_str1839 = private unnamed_addr constant [78 x i8] c"/opt/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot/hls/hls_video_mem.h\00", align 1
@p_PRETTY_FUNCTION_ZN3hls10L = private unnamed_addr constant [98 x i8] c"T &hls::LineBuffer<3, 3, unsigned char>::getval(int, int) [ROWS = 3, COLS = 3, T = unsigned char]\00", align 1
@p_str1844 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1845 = private unnamed_addr constant [173 x i8] c"\22Source and destination images must have same sizes\22 && ((src).rows == (dst1).rows && (src).cols == (dst1).cols) && ((src).rows == (dst2).rows && (src).cols == (dst2).cols)\00", align 1
@p_str1846 = private unnamed_addr constant [81 x i8] c"/opt/Xilinx/Vivado_HLS/2014.4/common/technology/autopilot/hls/hls_video_arithm.h\00", align 1
@p_PRETTY_FUNCTION_ZN3hls9Du = private unnamed_addr constant [149 x i8] c"void hls::Duplicate(Mat<ROWS, COLS, SRC_T> &, Mat<ROWS, COLS, DST_T> &, Mat<ROWS, COLS, DST_T> &) [ROWS = 1080, COLS = 1920, SRC_T = 32, DST_T = 32]\00", align 1
@p_str1849 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1850 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [13 x i8] c"image_filter\00"
@p_str1 = internal constant [59 x i8] c"hls::LineBuffer<6, 1920, ap_uint<8> >::LineBuffer.1.region\00"
@p_str2 = internal constant [59 x i8] c"hls::LineBuffer<2, 1927, ap_int<16> >::LineBuffer.1.region\00"
@p_str4 = internal constant [61 x i8] c"hls::LineBuffer<3, 1920, unsigned char>::LineBuffer.1.region\00"
@p_str15 = internal constant [58 x i8] c"hls::LineBuffer<3, 3, unsigned char>::LineBuffer.1.region\00"
@p_str29 = internal constant [58 x i8] c"hls::LineBuffer<3, 1, unsigned char>::LineBuffer.1.region\00"
@str106 = internal constant [22 x i8] c"_src.data_stream[0].V\00"
@str107 = internal constant [1 x i8] zeroinitializer
@str108 = internal constant [8 x i8] c"ap_fifo\00"
@str109 = internal constant [1 x i8] zeroinitializer
@str110 = internal constant [22 x i8] c"_src.data_stream[1].V\00"
@str111 = internal constant [1 x i8] zeroinitializer
@str112 = internal constant [8 x i8] c"ap_fifo\00"
@str113 = internal constant [1 x i8] zeroinitializer
@str114 = internal constant [22 x i8] c"_src.data_stream[2].V\00"
@str115 = internal constant [1 x i8] zeroinitializer
@str116 = internal constant [8 x i8] c"ap_fifo\00"
@str117 = internal constant [1 x i8] zeroinitializer
@str118 = internal constant [22 x i8] c"_dst.data_stream[0].V\00"
@str119 = internal constant [1 x i8] zeroinitializer
@str120 = internal constant [8 x i8] c"ap_fifo\00"
@str121 = internal constant [1 x i8] zeroinitializer
@str122 = internal constant [22 x i8] c"_dst.data_stream[1].V\00"
@str123 = internal constant [1 x i8] zeroinitializer
@str124 = internal constant [8 x i8] c"ap_fifo\00"
@str125 = internal constant [1 x i8] zeroinitializer
@str126 = internal constant [22 x i8] c"_dst.data_stream[2].V\00"
@str127 = internal constant [1 x i8] zeroinitializer
@str128 = internal constant [8 x i8] c"ap_fifo\00"
@str129 = internal constant [1 x i8] zeroinitializer
@str130 = internal constant [22 x i8] c"src0.data_stream[0].V\00"
@str131 = internal constant [1 x i8] zeroinitializer
@str132 = internal constant [8 x i8] c"ap_fifo\00"
@str133 = internal constant [1 x i8] zeroinitializer
@str134 = internal constant [22 x i8] c"src0.data_stream[1].V\00"
@str135 = internal constant [1 x i8] zeroinitializer
@str136 = internal constant [8 x i8] c"ap_fifo\00"
@str137 = internal constant [1 x i8] zeroinitializer
@str138 = internal constant [22 x i8] c"src0.data_stream[2].V\00"
@str139 = internal constant [1 x i8] zeroinitializer
@str140 = internal constant [8 x i8] c"ap_fifo\00"
@str141 = internal constant [1 x i8] zeroinitializer
@str142 = internal constant [22 x i8] c"src1.data_stream[0].V\00"
@str143 = internal constant [1 x i8] zeroinitializer
@str144 = internal constant [8 x i8] c"ap_fifo\00"
@str145 = internal constant [1 x i8] zeroinitializer
@str146 = internal constant [22 x i8] c"src1.data_stream[1].V\00"
@str147 = internal constant [1 x i8] zeroinitializer
@str148 = internal constant [8 x i8] c"ap_fifo\00"
@str149 = internal constant [1 x i8] zeroinitializer
@str150 = internal constant [22 x i8] c"src1.data_stream[2].V\00"
@str151 = internal constant [1 x i8] zeroinitializer
@str152 = internal constant [8 x i8] c"ap_fifo\00"
@str153 = internal constant [1 x i8] zeroinitializer
@str154 = internal constant [22 x i8] c"mask.data_stream[0].V\00"
@str155 = internal constant [1 x i8] zeroinitializer
@str156 = internal constant [8 x i8] c"ap_fifo\00"
@str157 = internal constant [1 x i8] zeroinitializer
@str158 = internal constant [23 x i8] c"dmask.data_stream[0].V\00"
@str159 = internal constant [1 x i8] zeroinitializer
@str160 = internal constant [8 x i8] c"ap_fifo\00"
@str161 = internal constant [1 x i8] zeroinitializer
@str162 = internal constant [22 x i8] c"gray.data_stream[0].V\00"
@str163 = internal constant [1 x i8] zeroinitializer
@str164 = internal constant [8 x i8] c"ap_fifo\00"
@str165 = internal constant [1 x i8] zeroinitializer

define void @image_filter(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, i32 %rows, i32 %cols) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %INPUT_STREAM_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %INPUT_STREAM_V_keep_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %INPUT_STREAM_V_strb_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_user_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_last_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_id_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %INPUT_STREAM_V_dest_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %OUTPUT_STREAM_V_data_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %OUTPUT_STREAM_V_keep_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %OUTPUT_STREAM_V_strb_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_user_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_last_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_id_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %OUTPUT_STREAM_V_dest_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %rows), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %cols), !map !69
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @str) nounwind
  %cols_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_stable.i32(i32 %rows)
  %p_src_data_stream_0_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str106, i32 1, [1 x i8]* @str107, [1 x i8]* @str107, i32 1, i32 1, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str109, [1 x i8]* @str109, [8 x i8]* @str108)
  %p_src_data_stream_1_V = alloca i8, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str110, i32 1, [1 x i8]* @str111, [1 x i8]* @str111, i32 1, i32 1, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @str112, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str113, [1 x i8]* @str113, [8 x i8]* @str112)
  %p_src_data_stream_2_V = alloca i8, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str114, i32 1, [1 x i8]* @str115, [1 x i8]* @str115, i32 1, i32 1, i8* %p_src_data_stream_2_V, i8* %p_src_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_2_V, [8 x i8]* @str116, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str117, [1 x i8]* @str117, [8 x i8]* @str116)
  %p_dst_data_stream_0_V = alloca i8, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str118, i32 1, [1 x i8]* @str119, [1 x i8]* @str119, i32 1, i32 1, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_0_V, [8 x i8]* @str120, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str121, [1 x i8]* @str121, [8 x i8]* @str120)
  %p_dst_data_stream_1_V = alloca i8, align 1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str122, i32 1, [1 x i8]* @str123, [1 x i8]* @str123, i32 1, i32 1, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_1_V, [8 x i8]* @str124, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str125, [1 x i8]* @str125, [8 x i8]* @str124)
  %p_dst_data_stream_2_V = alloca i8, align 1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str126, i32 1, [1 x i8]* @str127, [1 x i8]* @str127, i32 1, i32 1, i8* %p_dst_data_stream_2_V, i8* %p_dst_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_2_V, [8 x i8]* @str128, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str129, [1 x i8]* @str129, [8 x i8]* @str128)
  %src0_data_stream_0_V = alloca i8, align 1
  %empty_15 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str130, i32 1, [1 x i8]* @str131, [1 x i8]* @str131, i32 1, i32 1, i8* %src0_data_stream_0_V, i8* %src0_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_0_V, [8 x i8]* @str132, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str133, [1 x i8]* @str133, [8 x i8]* @str132)
  %src0_data_stream_1_V = alloca i8, align 1
  %empty_16 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str134, i32 1, [1 x i8]* @str135, [1 x i8]* @str135, i32 1, i32 1, i8* %src0_data_stream_1_V, i8* %src0_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_1_V, [8 x i8]* @str136, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str137, [1 x i8]* @str137, [8 x i8]* @str136)
  %src0_data_stream_2_V = alloca i8, align 1
  %empty_17 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str138, i32 1, [1 x i8]* @str139, [1 x i8]* @str139, i32 1, i32 1, i8* %src0_data_stream_2_V, i8* %src0_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_2_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str141, [1 x i8]* @str141, [8 x i8]* @str140)
  %src1_data_stream_0_V = alloca i8, align 1
  %empty_18 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str142, i32 1, [1 x i8]* @str143, [1 x i8]* @str143, i32 20000, i32 20000, i8* %src1_data_stream_0_V, i8* %src1_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src1_data_stream_0_V, [8 x i8]* @str144, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str145, [1 x i8]* @str145, [8 x i8]* @str144)
  %src1_data_stream_1_V = alloca i8, align 1
  %empty_19 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str146, i32 1, [1 x i8]* @str147, [1 x i8]* @str147, i32 20000, i32 20000, i8* %src1_data_stream_1_V, i8* %src1_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src1_data_stream_1_V, [8 x i8]* @str148, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str149, [1 x i8]* @str149, [8 x i8]* @str148)
  %src1_data_stream_2_V = alloca i8, align 1
  %empty_20 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str150, i32 1, [1 x i8]* @str151, [1 x i8]* @str151, i32 20000, i32 20000, i8* %src1_data_stream_2_V, i8* %src1_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src1_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str153, [1 x i8]* @str153, [8 x i8]* @str152)
  %mask_data_stream_0_V = alloca i8, align 1
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str154, i32 1, [1 x i8]* @str155, [1 x i8]* @str155, i32 1, i32 1, i8* %mask_data_stream_0_V, i8* %mask_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %mask_data_stream_0_V, [8 x i8]* @str156, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str157, [1 x i8]* @str157, [8 x i8]* @str156)
  %dmask_data_stream_0_V = alloca i8, align 1
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str158, i32 1, [1 x i8]* @str159, [1 x i8]* @str159, i32 1, i32 1, i8* %dmask_data_stream_0_V, i8* %dmask_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dmask_data_stream_0_V, [8 x i8]* @str160, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str161, [1 x i8]* @str161, [8 x i8]* @str160)
  %gray_data_stream_0_V = alloca i8, align 1
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @str162, i32 1, [1 x i8]* @str163, [1 x i8]* @str163, i32 1, i32 1, i8* %gray_data_stream_0_V, i8* %gray_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %gray_data_stream_0_V, [8 x i8]* @str164, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str165, [1 x i8]* @str165, [8 x i8]* @str164)
  call void (...)* @_ssdm_op_SpecInterface(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecInterface(i32 %rows, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %cols, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  %call_ret = call fastcc { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } @image_filter_Block__proc(i32 %rows_read, i32 %cols_read)
  %p_src_cols_V_2_loc_channel1 = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 9
  %p_src_cols_V_2_loc_channel = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 8
  %p_src_rows_V_2_loc_channel1 = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 7
  %p_src_rows_V_2_loc_channel = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 6
  %p_dst_cols_V_channel = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 5
  %p_dst_cols_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 4
  %p_dst_rows_V_channel = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 3
  %p_dst_rows_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 2
  %p_src_cols_V_channel = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 1
  %p_src_rows_V_channel = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 0
  %p_src_rows_V_channel1 = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 10
  %p_src_cols_V_channel1 = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret, 11
  call fastcc void @image_filter_AXIvideo2Mat(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i12 %p_src_rows_V_channel, i12 %p_src_cols_V_channel, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V)
  %call_ret1 = call fastcc { i12, i12, i12, i12, i12, i12, i12, i12 } @image_filter_Block_Mat.exit1220_proc1(i12 %p_src_rows_V_2_loc_channel, i12 %p_src_cols_V_2_loc_channel, i12 %p_src_rows_V_channel1, i12 %p_src_cols_V_channel1, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %src0_data_stream_0_V, i8* %src0_data_stream_1_V, i8* %src0_data_stream_2_V, i8* %src1_data_stream_0_V, i8* %src1_data_stream_1_V, i8* %src1_data_stream_2_V)
  %src0_rows_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 0
  %src0_cols_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 1
  %src1_rows_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 2
  %src1_cols_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 3
  %mask_rows_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 4
  %mask_cols_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 5
  %dmask_rows_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 6
  %dmask_cols_V = extractvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %call_ret1, 7
  %call_ret2 = call fastcc { i12, i12 } @image_filter_Block_Mat.exit1222_proc1(i12 %p_src_rows_V_2_loc_channel1, i12 %p_src_cols_V_2_loc_channel1, i12 %src0_rows_V, i12 %src0_cols_V, i8* %src0_data_stream_0_V, i8* %src0_data_stream_1_V, i8* %src0_data_stream_2_V, i8* %gray_data_stream_0_V)
  %gray_rows_V = extractvalue { i12, i12 } %call_ret2, 0
  %gray_cols_V = extractvalue { i12, i12 } %call_ret2, 1
  call fastcc void @image_filter_FAST_t_opr(i12 %gray_rows_V, i12 %gray_cols_V, i8* %gray_data_stream_0_V, i8* %mask_data_stream_0_V)
  call fastcc void @"image_filter_Dilate<0, 0, 1080, 1920>"(i12 %mask_rows_V, i12 %mask_cols_V, i8* %mask_data_stream_0_V, i8* %dmask_data_stream_0_V)
  call fastcc void @"image_filter_PaintMask<32, 0, 1080, 1920>"(i12 %src1_rows_V, i12 %src1_cols_V, i8* %src1_data_stream_0_V, i8* %src1_data_stream_1_V, i8* %src1_data_stream_2_V, i12 %dmask_rows_V, i12 %dmask_cols_V, i8* %dmask_data_stream_0_V, i12 %p_dst_rows_V, i12 %p_dst_cols_V, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V)
  call fastcc void @image_filter_Mat2AXIvideo(i12 %p_dst_rows_V_channel, i12 %p_dst_cols_V_channel, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V)
  ret void
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define internal fastcc i32 @"image_filter_reg<int>"(i32 %in_r) nounwind uwtable readnone {
  %in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in_r) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [8 x i8]* @p_str1844, i32 1, i32 1, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  ret i32 %in_read
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i8
  ret i8 %empty_24
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_25 = zext i8 %3 to i16
  %empty_26 = shl i16 %empty, 8
  %empty_27 = or i16 %empty_26, %empty_25
  %empty_28 = zext i8 %1 to i24
  %empty_29 = zext i16 %empty_27 to i24
  %empty_30 = shl i24 %empty_28, 16
  %empty_31 = or i24 %empty_30, %empty_29
  %empty_32 = zext i8 %0 to i32
  %empty_33 = zext i24 %empty_31 to i32
  %empty_34 = shl i32 %empty_32, 24
  %empty_35 = or i32 %empty_34, %empty_33
  ret i32 %empty_35
}

define internal fastcc void @"image_filter_Duplicate<1080, 1920, 32, 32>"(i12 %src_rows_V_read, i12 %src_cols_V_read, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V, i12 %dst1_rows_V_read, i12 %dst1_cols_V_read, i8* %dst1_data_stream_0_V, i8* %dst1_data_stream_1_V, i8* %dst1_data_stream_2_V, i12 %dst2_rows_V_read, i12 %dst2_cols_V_read, i8* %dst2_data_stream_0_V, i8* %dst2_data_stream_1_V, i8* %dst2_data_stream_2_V) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst2_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str153, [1 x i8]* @str153, [8 x i8]* @str152)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst2_data_stream_1_V, [8 x i8]* @str148, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str149, [1 x i8]* @str149, [8 x i8]* @str148)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst2_data_stream_0_V, [8 x i8]* @str144, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str145, [1 x i8]* @str145, [8 x i8]* @str144)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_2_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str141, [1 x i8]* @str141, [8 x i8]* @str140)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_1_V, [8 x i8]* @str136, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str137, [1 x i8]* @str137, [8 x i8]* @str136)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dst1_data_stream_0_V, [8 x i8]* @str132, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str133, [1 x i8]* @str133, [8 x i8]* @str132)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_2_V, [8 x i8]* @str116, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str117, [1 x i8]* @str117, [8 x i8]* @str116)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_1_V, [8 x i8]* @str112, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str113, [1 x i8]* @str113, [8 x i8]* @str112)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src_data_stream_0_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str109, [1 x i8]* @str109, [8 x i8]* @str108)
  %dst2_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %dst2_cols_V_read)
  %dst2_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %dst2_rows_V_read)
  %dst1_cols_V_read4 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %dst1_cols_V_read)
  %dst1_rows_V_read3 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %dst1_rows_V_read)
  %src_cols_V_read2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %src_cols_V_read)
  %src_rows_V_read1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %src_rows_V_read)
  br label %.preheader

.preheader:                                       ; preds = %0, %3
  %p_s = phi i11 [ %i_V, %3 ], [ 0, %0 ]
  %p_cast = zext i11 %p_s to i12
  %exitcond3 = icmp eq i12 %p_cast, %dst2_rows_V_read_1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_s, 1
  br i1 %exitcond3, label %4, label %1

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit", %1
  %p_3 = phi i11 [ 0, %1 ], [ %j_V, %"operator>>.exit" ]
  %p_3_cast = zext i11 %p_3 to i12
  %exitcond = icmp eq i12 %p_3_cast, %dst2_cols_V_read_1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_3, 1
  br i1 %exitcond, label %3, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_4 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_0_V)
  %tmp_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %src_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_3)
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_0_V, i8 %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_1_V, i8 %tmp_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst1_data_stream_2_V, i8 %tmp)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_5)
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst2_data_stream_0_V, i8 %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst2_data_stream_1_V, i8 %tmp_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %dst2_data_stream_2_V, i8 %tmp)
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_s)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_2)
  br label %2

; <label>:3                                       ; preds = %2
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_1)
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @image_filter_CvtColor(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %p_dst_data_stream_V) {
ap_fixed_base.exit27.i.i:
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @str164, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str165, [1 x i8]* @str165, [8 x i8]* @str164)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_2_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str141, [1 x i8]* @str141, [8 x i8]* @str140)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @str136, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str137, [1 x i8]* @str137, [8 x i8]* @str136)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @str132, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str133, [1 x i8]* @str133, [8 x i8]* @str132)
  %p_src_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  br label %.preheader

.preheader:                                       ; preds = %ap_fixed_base.exit27.i.i, %2
  %i = phi i11 [ %i_1, %2 ], [ 0, %ap_fixed_base.exit27.i.i ]
  %i_cast = zext i11 %i to i12
  %exitcond2 = icmp eq i12 %i_cast, %p_src_rows_V_read_1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_1 = add i11 %i, 1
  br i1 %exitcond2, label %3, label %0

; <label>:0                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  br label %1

; <label>:1                                       ; preds = %"operator>>.exit_ifconv", %0
  %j = phi i11 [ 0, %0 ], [ %j_1, %"operator>>.exit_ifconv" ]
  %j_cast = zext i11 %j to i12
  %exitcond = icmp eq i12 %j_cast, %p_src_cols_V_read_1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_1 = add i11 %j, 1
  br i1 %exitcond, label %2, label %"operator>>.exit_ifconv"

"operator>>.exit_ifconv":                         ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_10 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_0_V)
  %tmp_11 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_1_V)
  %tmp_12 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_2)
  %OP2_V_i_cast = zext i8 %tmp_10 to i30
  %r_V = mul i30 %OP2_V_i_cast, 1912602
  %OP2_V_1_i = zext i8 %tmp_11 to i32
  %r_V_3_i = mul i32 %OP2_V_1_i, 9848225
  %OP2_V_2_i_cast = zext i8 %tmp_12 to i31
  %r_V_4_i = mul i31 %OP2_V_2_i_cast, 5016387
  %tmp1_i_cast = zext i30 %r_V to i31
  %p_Val2_1 = add i31 %r_V_4_i, %tmp1_i_cast
  %tmp_i_cast = zext i31 %p_Val2_1 to i32
  %r_V_1 = add i32 %r_V_3_i, %tmp_i_cast
  %p_Val2_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %r_V_1, i32 24, i32 31)
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %r_V_1, i32 23)
  %tmp_3_i_i_i = zext i1 %tmp to i8
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %r_V_1, i32 31)
  %p_Val2_4 = add i8 %p_Val2_3, %tmp_3_i_i_i
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_Val2_4, i32 7)
  %p_Result_2_i_i_i_not = xor i1 %tmp_7, true
  %not_carry = or i1 %tmp_8, %p_Result_2_i_i_i_not
  %p_Val2_s = select i1 %not_carry, i8 %p_Val2_4, i8 -1
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_V, i8 %p_Val2_s)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_3)
  %empty_41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_1)
  br label %1

; <label>:2                                       ; preds = %1
  %empty_42 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_s)
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @image_filter_AXIvideo2Mat(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str116, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str117, [1 x i8]* @str117, [8 x i8]* @str116)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str112, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str113, [1 x i8]* @str113, [8 x i8]* @str112)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str109, [1 x i8]* @str109, [8 x i8]* @str108)
  %img_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  br label %0

; <label>:0                                       ; preds = %0, %.critedge
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1849) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1849)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 4
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1849, i32 %tmp)
  br i1 %tmp_user_V, label %.preheader150.preheader, label %0

.preheader150.preheader:                          ; preds = %0
  %sof_1 = alloca i1, align 1
  store i1 true, i1* %sof_1, align 1
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.preheader, %6
  %axi_last_V1 = phi i1 [ %axi_last_V_3, %6 ], [ %tmp_last_V, %.preheader150.preheader ]
  %axi_data_V1 = phi i32 [ %axi_data_V_3, %6 ], [ %tmp_data_V, %.preheader150.preheader ]
  %p_s = phi i12 [ %i_V, %6 ], [ 0, %.preheader150.preheader ]
  %exitcond1 = icmp eq i12 %p_s, %img_rows_V_read_1
  %i_V = add i12 %p_s, 1
  br i1 %exitcond1, label %7, label %1

; <label>:1                                       ; preds = %.preheader150
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1806) nounwind
  br label %2

; <label>:2                                       ; preds = %._crit_edge, %1
  %eol_1 = phi i1 [ %axi_last_V1, %1 ], [ %axi_last_V_2, %._crit_edge ]
  %axi_data_V_1 = phi i32 [ %axi_data_V1, %1 ], [ %p_Val2_s, %._crit_edge ]
  %p_1 = phi i12 [ 0, %1 ], [ %j_V, %._crit_edge ]
  %eol = phi i1 [ false, %1 ], [ %eol_2, %._crit_edge ]
  %exitcond2 = icmp eq i12 %p_1, %img_cols_V_read_1
  %j_V = add i12 %p_1, 1
  br i1 %exitcond2, label %.preheader, label %3

; <label>:3                                       ; preds = %2
  %sof_1_load = load i1* %sof_1, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %brmerge = or i1 %sof_1_load, %eol
  %not_sof_2 = xor i1 %sof_1_load, true
  %axi_last_V_1_mux = or i1 %eol_1, %not_sof_2
  br i1 %brmerge, label %._crit_edge, label %4

; <label>:4                                       ; preds = %3
  %empty_44 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_44, 0
  %tmp_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_44, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  %axi_last_V_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %eol_1, %3 ]
  %p_Val2_s = phi i32 [ %tmp_data_V_1, %4 ], [ %axi_data_V_1, %3 ]
  %eol_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %axi_last_V_1_mux, %3 ]
  %tmp_13 = trunc i32 %p_Val2_s to i8
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 8, i32 15)
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 16, i32 23)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp_13)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_14)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V, i8 %tmp_4)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_7)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_2)
  store i1 false, i1* %sof_1, align 1
  br label %2

.preheader:                                       ; preds = %2, %5
  %axi_last_V_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol_1, %2 ]
  %axi_data_V_3 = phi i32 [ %tmp_data_V_2, %5 ], [ %axi_data_V_1, %2 ]
  %eol_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol, %2 ]
  br i1 %eol_3, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1850) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1850)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_47 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_47, 0
  %tmp_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_47, 4
  %empty_48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1850, i32 %tmp_3)
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_1)
  br label %.preheader150

; <label>:7                                       ; preds = %.preheader150
  ret void
}

define internal fastcc void @image_filter_FAST_t_opr(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_V, i8* %p_mask_data_stream_V) {
arrayctor.loop.preheader:
  %win_val_6_V_5 = alloca i8, align 1
  %core_win_val_0_V_0 = alloca i16, align 2
  %core_win_val_0_V_1 = alloca i16, align 2
  %win_val_6_V_4 = alloca i8, align 1
  %core_win_val_1_V_0 = alloca i16, align 2
  %core_win_val_1_V_1 = alloca i16, align 2
  %win_val_6_V_3 = alloca i8, align 1
  %core_win_val_2_V_0 = alloca i16, align 2
  %core_win_val_2_V_1 = alloca i16, align 2
  %win_val_0_V_2_3 = alloca i8, align 1
  %win_val_0_V_2 = alloca i8, align 1
  %win_val_0_V_3 = alloca i8, align 1
  %win_val_0_V_4 = alloca i8, align 1
  %win_val_0_V_5 = alloca i8, align 1
  %win_val_1_V_1_3 = alloca i8, align 1
  %win_val_1_V_1 = alloca i8, align 1
  %win_val_1_V_2 = alloca i8, align 1
  %win_val_1_V_3 = alloca i8, align 1
  %win_val_1_V_4 = alloca i8, align 1
  %win_val_1_V_5 = alloca i8, align 1
  %win_val_2_V_0_3 = alloca i8, align 1
  %win_val_2_V_0 = alloca i8, align 1
  %win_val_2_V_1 = alloca i8, align 1
  %win_val_2_V_2 = alloca i8, align 1
  %win_val_2_V_3 = alloca i8, align 1
  %win_val_2_V_4 = alloca i8, align 1
  %win_val_2_V_5 = alloca i8, align 1
  %win_val_3_V_0_3 = alloca i8, align 1
  %win_val_3_V_0 = alloca i8, align 1
  %win_val_3_V_1 = alloca i8, align 1
  %win_val_3_V_2 = alloca i8, align 1
  %win_val_3_V_3 = alloca i8, align 1
  %win_val_3_V_4 = alloca i8, align 1
  %win_val_3_V_5 = alloca i8, align 1
  %win_val_4_V_0_3 = alloca i8, align 1
  %win_val_4_V_0 = alloca i8, align 1
  %win_val_4_V_1 = alloca i8, align 1
  %win_val_4_V_2 = alloca i8, align 1
  %win_val_4_V_3 = alloca i8, align 1
  %win_val_4_V_4 = alloca i8, align 1
  %win_val_4_V_5 = alloca i8, align 1
  %win_val_5_V_1_3 = alloca i8, align 1
  %win_val_5_V_1 = alloca i8, align 1
  %win_val_5_V_2 = alloca i8, align 1
  %win_val_5_V_3 = alloca i8, align 1
  %win_val_5_V_4 = alloca i8, align 1
  %win_val_5_V_5 = alloca i8, align 1
  %win_val_6_V_2_3 = alloca i8, align 1
  %win_val_6_V_2 = alloca i8, align 1
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @str164, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str165, [1 x i8]* @str165, [8 x i8]* @str164)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_mask_data_stream_V, [8 x i8]* @str156, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str157, [1 x i8]* @str157, [8 x i8]* @str156)
  %p_src_cols_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  %k_buf_val_0_V = alloca [1920 x i8], align 1
  %k_buf_val_1_V = alloca [1920 x i8], align 1
  %k_buf_val_2_V = alloca [1920 x i8], align 1
  %k_buf_val_3_V = alloca [1920 x i8], align 1
  %k_buf_val_4_V = alloca [1920 x i8], align 1
  %k_buf_val_5_V = alloca [1920 x i8], align 1
  %core_buf_val_0_V = alloca [1927 x i8], align 1
  %core_buf_val_1_V = alloca [1927 x i8], align 1
  %rbegin_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str1) nounwind
  %rend_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str1, i32 %rbegin_i) nounwind
  %rbegin_i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str2) nounwind
  %rend_i333 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str2, i32 %rbegin_i1) nounwind
  %tmp = trunc i12 %p_src_rows_V_read_2 to i11
  %tmp_15 = trunc i12 %p_src_cols_V_read_2 to i11
  %tmp_s = add i11 %tmp_15, 4
  %tmp_5 = add i11 %tmp, 4
  br label %0

; <label>:0                                       ; preds = %5, %arrayctor.loop.preheader
  %p_s = phi i11 [ 0, %arrayctor.loop.preheader ], [ %i_V, %5 ]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 1084, i64 0)
  %exitcond1 = icmp eq i11 %p_s, %tmp_5
  %i_V = add i11 %p_s, 1
  br i1 %exitcond1, label %6, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  %tmp_7 = icmp ult i11 %p_s, %tmp
  %tmp_8 = icmp ugt i11 %p_s, 5
  %tmp_9 = icmp ugt i11 %p_s, 6
  %tmp_16 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %p_s, i32 2, i32 10)
  %icmp = icmp eq i9 %tmp_16, 0
  br label %2

; <label>:2                                       ; preds = %._crit_edge327, %1
  %p_2 = phi i11 [ 0, %1 ], [ %j_V, %._crit_edge327 ]
  %core_win_val_0_V_1_3 = load i16* %core_win_val_0_V_1, align 2
  %core_win_val_1_V_1_3 = load i16* %core_win_val_1_V_1, align 2
  %core_win_val_2_V_1_3 = load i16* %core_win_val_2_V_1, align 2
  %win_val_0_V_2_1 = load i8* %win_val_0_V_2, align 1
  %win_val_0_V_3_3 = load i8* %win_val_0_V_3, align 1
  %win_val_0_V_4_3 = load i8* %win_val_0_V_4, align 1
  %win_val_0_V_5_3 = load i8* %win_val_0_V_5, align 1
  %win_val_1_V_1_1 = load i8* %win_val_1_V_1, align 1
  %win_val_1_V_2_3 = load i8* %win_val_1_V_2, align 1
  %win_val_1_V_3_3 = load i8* %win_val_1_V_3, align 1
  %win_val_1_V_4_3 = load i8* %win_val_1_V_4, align 1
  %win_val_1_V_5_3 = load i8* %win_val_1_V_5, align 1
  %win_val_2_V_0_1 = load i8* %win_val_2_V_0, align 1
  %win_val_2_V_1_3 = load i8* %win_val_2_V_1, align 1
  %win_val_2_V_2_3 = load i8* %win_val_2_V_2, align 1
  %win_val_2_V_3_3 = load i8* %win_val_2_V_3, align 1
  %win_val_2_V_4_3 = load i8* %win_val_2_V_4, align 1
  %win_val_2_V_5_3 = load i8* %win_val_2_V_5, align 1
  %win_val_3_V_0_1 = load i8* %win_val_3_V_0, align 1
  %win_val_3_V_1_3 = load i8* %win_val_3_V_1, align 1
  %win_val_3_V_2_3 = load i8* %win_val_3_V_2, align 1
  %win_val_3_V_3_3 = load i8* %win_val_3_V_3, align 1
  %win_val_3_V_4_3 = load i8* %win_val_3_V_4, align 1
  %win_val_3_V_5_3 = load i8* %win_val_3_V_5, align 1
  %win_val_4_V_0_1 = load i8* %win_val_4_V_0, align 1
  %win_val_4_V_1_3 = load i8* %win_val_4_V_1, align 1
  %win_val_4_V_2_3 = load i8* %win_val_4_V_2, align 1
  %win_val_4_V_3_3 = load i8* %win_val_4_V_3, align 1
  %win_val_4_V_4_3 = load i8* %win_val_4_V_4, align 1
  %win_val_4_V_5_3 = load i8* %win_val_4_V_5, align 1
  %win_val_5_V_1_1 = load i8* %win_val_5_V_1, align 1
  %win_val_5_V_2_3 = load i8* %win_val_5_V_2, align 1
  %win_val_5_V_3_3 = load i8* %win_val_5_V_3, align 1
  %win_val_5_V_4_3 = load i8* %win_val_5_V_4, align 1
  %win_val_5_V_5_3 = load i8* %win_val_5_V_5, align 1
  %win_val_6_V_2_1 = load i8* %win_val_6_V_2, align 1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 1924, i64 0)
  %exitcond = icmp eq i11 %p_2, %tmp_s
  %j_V = add i11 %p_2, 1
  br i1 %exitcond, label %5, label %3

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_11 = icmp ult i11 %p_2, %tmp_15
  %or_cond = and i1 %tmp_7, %tmp_11
  br i1 %or_cond, label %.preheader319.preheader.0, label %.preheader.preheader.0

.preheader319.preheader.0:                        ; preds = %3
  %win_val_6_V_4_1 = load i8* %win_val_6_V_5, align 1
  %win_val_6_V_3_1 = load i8* %win_val_6_V_4, align 1
  %win_val_6_V_2_2 = load i8* %win_val_6_V_3, align 1
  %tmp_12 = zext i11 %p_2 to i64
  %k_buf_val_0_V_addr = getelementptr [1920 x i8]* %k_buf_val_0_V, i64 0, i64 %tmp_12
  %win_val_0_V_6 = load i8* %k_buf_val_0_V_addr, align 1
  %k_buf_val_1_V_addr = getelementptr [1920 x i8]* %k_buf_val_1_V, i64 0, i64 %tmp_12
  %win_val_1_V_6 = load i8* %k_buf_val_1_V_addr, align 1
  store i8 %win_val_1_V_6, i8* %k_buf_val_0_V_addr, align 1
  %k_buf_val_2_V_addr = getelementptr [1920 x i8]* %k_buf_val_2_V, i64 0, i64 %tmp_12
  %win_val_2_V_6 = load i8* %k_buf_val_2_V_addr, align 1
  store i8 %win_val_2_V_6, i8* %k_buf_val_1_V_addr, align 1
  %k_buf_val_3_V_addr = getelementptr [1920 x i8]* %k_buf_val_3_V, i64 0, i64 %tmp_12
  %win_val_3_V_6 = load i8* %k_buf_val_3_V_addr, align 1
  store i8 %win_val_3_V_6, i8* %k_buf_val_2_V_addr, align 1
  %k_buf_val_4_V_addr = getelementptr [1920 x i8]* %k_buf_val_4_V, i64 0, i64 %tmp_12
  %win_val_4_V_6 = load i8* %k_buf_val_4_V_addr, align 1
  store i8 %win_val_4_V_6, i8* %k_buf_val_3_V_addr, align 1
  %k_buf_val_5_V_addr = getelementptr [1920 x i8]* %k_buf_val_5_V, i64 0, i64 %tmp_12
  %win_val_5_V_6 = load i8* %k_buf_val_5_V_addr, align 1
  store i8 %win_val_5_V_6, i8* %k_buf_val_4_V_addr, align 1
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_99 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_13)
  store i8 %tmp_99, i8* %k_buf_val_5_V_addr, align 1
  store i8 %win_val_6_V_2_2, i8* %win_val_6_V_2, align 1
  store i8 %win_val_6_V_2_1, i8* %win_val_6_V_2_3, align 1
  store i8 %win_val_5_V_6, i8* %win_val_5_V_5, align 1
  store i8 %win_val_5_V_5_3, i8* %win_val_5_V_4, align 1
  store i8 %win_val_5_V_4_3, i8* %win_val_5_V_3, align 1
  store i8 %win_val_5_V_3_3, i8* %win_val_5_V_2, align 1
  store i8 %win_val_5_V_2_3, i8* %win_val_5_V_1, align 1
  store i8 %win_val_5_V_1_1, i8* %win_val_5_V_1_3, align 1
  store i8 %win_val_4_V_6, i8* %win_val_4_V_5, align 1
  store i8 %win_val_4_V_5_3, i8* %win_val_4_V_4, align 1
  store i8 %win_val_4_V_4_3, i8* %win_val_4_V_3, align 1
  store i8 %win_val_4_V_3_3, i8* %win_val_4_V_2, align 1
  store i8 %win_val_4_V_2_3, i8* %win_val_4_V_1, align 1
  store i8 %win_val_4_V_1_3, i8* %win_val_4_V_0, align 1
  store i8 %win_val_4_V_0_1, i8* %win_val_4_V_0_3, align 1
  store i8 %win_val_3_V_6, i8* %win_val_3_V_5, align 1
  store i8 %win_val_3_V_5_3, i8* %win_val_3_V_4, align 1
  store i8 %win_val_3_V_4_3, i8* %win_val_3_V_3, align 1
  store i8 %win_val_3_V_3_3, i8* %win_val_3_V_2, align 1
  store i8 %win_val_3_V_2_3, i8* %win_val_3_V_1, align 1
  store i8 %win_val_3_V_1_3, i8* %win_val_3_V_0, align 1
  store i8 %win_val_3_V_0_1, i8* %win_val_3_V_0_3, align 1
  store i8 %win_val_2_V_6, i8* %win_val_2_V_5, align 1
  store i8 %win_val_2_V_5_3, i8* %win_val_2_V_4, align 1
  store i8 %win_val_2_V_4_3, i8* %win_val_2_V_3, align 1
  store i8 %win_val_2_V_3_3, i8* %win_val_2_V_2, align 1
  store i8 %win_val_2_V_2_3, i8* %win_val_2_V_1, align 1
  store i8 %win_val_2_V_1_3, i8* %win_val_2_V_0, align 1
  store i8 %win_val_2_V_0_1, i8* %win_val_2_V_0_3, align 1
  store i8 %win_val_1_V_6, i8* %win_val_1_V_5, align 1
  store i8 %win_val_1_V_5_3, i8* %win_val_1_V_4, align 1
  store i8 %win_val_1_V_4_3, i8* %win_val_1_V_3, align 1
  store i8 %win_val_1_V_3_3, i8* %win_val_1_V_2, align 1
  store i8 %win_val_1_V_2_3, i8* %win_val_1_V_1, align 1
  store i8 %win_val_1_V_1_1, i8* %win_val_1_V_1_3, align 1
  store i8 %win_val_0_V_6, i8* %win_val_0_V_5, align 1
  store i8 %win_val_0_V_5_3, i8* %win_val_0_V_4, align 1
  store i8 %win_val_0_V_4_3, i8* %win_val_0_V_3, align 1
  store i8 %win_val_0_V_3_3, i8* %win_val_0_V_2, align 1
  store i8 %win_val_0_V_2_1, i8* %win_val_0_V_2_3, align 1
  store i8 %win_val_6_V_3_1, i8* %win_val_6_V_3, align 1
  store i8 %win_val_6_V_4_1, i8* %win_val_6_V_4, align 1
  store i8 %tmp_99, i8* %win_val_6_V_5, align 1
  br label %.preheader.preheader.0

.preheader.preheader.0:                           ; preds = %.preheader319.preheader.0, %3
  %tmp_14 = zext i11 %p_2 to i64
  %core_buf_val_0_V_addr = getelementptr [1927 x i8]* %core_buf_val_0_V, i64 0, i64 %tmp_14
  %core_buf_val_0_V_load = load i8* %core_buf_val_0_V_addr, align 1
  %core_win_val_0_V_2 = zext i8 %core_buf_val_0_V_load to i16
  %core_buf_val_1_V_addr = getelementptr [1927 x i8]* %core_buf_val_1_V, i64 0, i64 %tmp_14
  %core_buf_val_1_V_load = load i8* %core_buf_val_1_V_addr, align 1
  %core_win_val_1_V_2 = zext i8 %core_buf_val_1_V_load to i16
  store i8 %core_buf_val_1_V_load, i8* %core_buf_val_0_V_addr, align 1
  %tmp_17 = icmp ugt i11 %p_2, 5
  %or_cond1 = and i1 %tmp_8, %tmp_17
  br i1 %or_cond1, label %_ifconv, label %._crit_edge321_ifconv

_ifconv:                                          ; preds = %.preheader.preheader.0
  %win_val_6_V_3_load = load i8* %win_val_6_V_3, align 1
  %win_val_0_V_2_3_load = load i8* %win_val_0_V_2_3, align 1
  %win_val_0_V_2_load = load i8* %win_val_0_V_2, align 1
  %win_val_0_V_3_load = load i8* %win_val_0_V_3, align 1
  %win_val_1_V_1_3_load = load i8* %win_val_1_V_1_3, align 1
  %win_val_1_V_4_load = load i8* %win_val_1_V_4, align 1
  %win_val_2_V_0_3_load = load i8* %win_val_2_V_0_3, align 1
  %win_val_2_V_5_load = load i8* %win_val_2_V_5, align 1
  %win_val_3_V_0_3_load = load i8* %win_val_3_V_0_3, align 1
  %win_val_3_V_2_load = load i8* %win_val_3_V_2, align 1
  %win_val_3_V_5_load = load i8* %win_val_3_V_5, align 1
  %win_val_4_V_0_3_load = load i8* %win_val_4_V_0_3, align 1
  %win_val_4_V_5_load = load i8* %win_val_4_V_5, align 1
  %win_val_5_V_1_3_load = load i8* %win_val_5_V_1_3, align 1
  %win_val_5_V_4_load = load i8* %win_val_5_V_4, align 1
  %win_val_6_V_2_3_load = load i8* %win_val_6_V_2_3, align 1
  %win_val_6_V_2_load = load i8* %win_val_6_V_2, align 1
  %lhs_V = zext i8 %win_val_3_V_2_load to i9
  %rhs_V = zext i8 %win_val_0_V_2_load to i9
  %r_V = sub i9 %lhs_V, %rhs_V
  %flag_d_assign = sext i9 %r_V to i32
  %rhs_V_1 = zext i8 %win_val_6_V_2_load to i9
  %r_V_1 = sub i9 %lhs_V, %rhs_V_1
  %flag_d_assign_8 = sext i9 %r_V_1 to i32
  %tmp_18 = icmp sgt i9 %r_V, 20
  %tmp_19 = icmp slt i9 %r_V, -20
  %phitmp1 = select i1 %tmp_18, i2 1, i2 -2
  %tmp_20 = or i1 %tmp_18, %tmp_19
  %flag_val_V_assign_load_1_s = select i1 %tmp_20, i2 %phitmp1, i2 0
  %tmp_21 = icmp sgt i9 %r_V_1, 20
  %tmp_22 = icmp slt i9 %r_V_1, -20
  %phitmp3 = select i1 %tmp_21, i2 1, i2 -2
  %tmp_23 = or i1 %tmp_21, %tmp_22
  %flag_val_V_assign_load_2_s = select i1 %tmp_23, i2 %phitmp3, i2 0
  %rhs_V_s = zext i8 %win_val_0_V_3_load to i9
  %r_V_s = sub i9 %lhs_V, %rhs_V_s
  %flag_d_assign_1 = sext i9 %r_V_s to i32
  %rhs_V_1_1 = zext i8 %win_val_6_V_2_3_load to i9
  %r_V_1_1 = sub i9 %lhs_V, %rhs_V_1_1
  %flag_d_assign_9 = sext i9 %r_V_1_1 to i32
  %tmp_176_1 = icmp sgt i9 %r_V_s, 20
  %tmp_177_1 = icmp slt i9 %r_V_s, -20
  %phitmp_1 = select i1 %tmp_176_1, i2 1, i2 -2
  %tmp_24 = or i1 %tmp_176_1, %tmp_177_1
  %flag_val_V_assign_load_1_1 = select i1 %tmp_24, i2 %phitmp_1, i2 0
  %tmp_182_1 = icmp sgt i9 %r_V_1_1, 20
  %tmp_184_1 = icmp slt i9 %r_V_1_1, -20
  %phitmp1_1 = select i1 %tmp_182_1, i2 1, i2 -2
  %tmp_25 = or i1 %tmp_182_1, %tmp_184_1
  %flag_val_V_assign_load_1_9 = select i1 %tmp_25, i2 %phitmp1_1, i2 0
  %rhs_V_2 = zext i8 %win_val_1_V_4_load to i9
  %r_V_2 = sub i9 %lhs_V, %rhs_V_2
  %flag_d_assign_2 = sext i9 %r_V_2 to i32
  %rhs_V_1_2 = zext i8 %win_val_5_V_1_3_load to i9
  %r_V_1_2 = sub i9 %lhs_V, %rhs_V_1_2
  %flag_d_assign_s = sext i9 %r_V_1_2 to i32
  %tmp_176_2 = icmp sgt i9 %r_V_2, 20
  %tmp_177_2 = icmp slt i9 %r_V_2, -20
  %phitmp_2 = select i1 %tmp_176_2, i2 1, i2 -2
  %tmp_27 = or i1 %tmp_176_2, %tmp_177_2
  %flag_val_V_assign_load_1_2 = select i1 %tmp_27, i2 %phitmp_2, i2 0
  %tmp_182_2 = icmp sgt i9 %r_V_1_2, 20
  %tmp_184_2 = icmp slt i9 %r_V_1_2, -20
  %phitmp1_2 = select i1 %tmp_182_2, i2 1, i2 -2
  %tmp_28 = or i1 %tmp_182_2, %tmp_184_2
  %flag_val_V_assign_load_1_3 = select i1 %tmp_28, i2 %phitmp1_2, i2 0
  %rhs_V_3 = zext i8 %win_val_2_V_5_load to i9
  %r_V_3 = sub i9 %lhs_V, %rhs_V_3
  %flag_d_assign_3 = sext i9 %r_V_3 to i32
  %rhs_V_1_3 = zext i8 %win_val_4_V_0_3_load to i9
  %r_V_1_3 = sub i9 %lhs_V, %rhs_V_1_3
  %flag_d_assign_10 = sext i9 %r_V_1_3 to i32
  %tmp_176_3 = icmp sgt i9 %r_V_3, 20
  %tmp_177_3 = icmp slt i9 %r_V_3, -20
  %phitmp_3 = select i1 %tmp_176_3, i2 1, i2 -2
  %tmp_29 = or i1 %tmp_176_3, %tmp_177_3
  %flag_val_V_assign_load_1_4 = select i1 %tmp_29, i2 %phitmp_3, i2 0
  %tmp_182_3 = icmp sgt i9 %r_V_1_3, 20
  %tmp_184_3 = icmp slt i9 %r_V_1_3, -20
  %phitmp1_3 = select i1 %tmp_182_3, i2 1, i2 -2
  %tmp_30 = or i1 %tmp_182_3, %tmp_184_3
  %flag_val_V_assign_load_1_5 = select i1 %tmp_30, i2 %phitmp1_3, i2 0
  %rhs_V_4 = zext i8 %win_val_3_V_5_load to i9
  %r_V_4 = sub i9 %lhs_V, %rhs_V_4
  %flag_d_assign_4 = sext i9 %r_V_4 to i32
  %rhs_V_1_4 = zext i8 %win_val_3_V_0_3_load to i9
  %r_V_1_4 = sub i9 %lhs_V, %rhs_V_1_4
  %flag_d_assign_11 = sext i9 %r_V_1_4 to i32
  %tmp_176_4 = icmp sgt i9 %r_V_4, 20
  %tmp_177_4 = icmp slt i9 %r_V_4, -20
  %phitmp_4 = select i1 %tmp_176_4, i2 1, i2 -2
  %tmp_31 = or i1 %tmp_176_4, %tmp_177_4
  %flag_val_V_assign_load_1_6 = select i1 %tmp_31, i2 %phitmp_4, i2 0
  %tmp_182_4 = icmp sgt i9 %r_V_1_4, 20
  %tmp_184_4 = icmp slt i9 %r_V_1_4, -20
  %phitmp1_4 = select i1 %tmp_182_4, i2 1, i2 -2
  %tmp_32 = or i1 %tmp_182_4, %tmp_184_4
  %flag_val_V_assign_load_1_7 = select i1 %tmp_32, i2 %phitmp1_4, i2 0
  %rhs_V_5 = zext i8 %win_val_4_V_5_load to i9
  %r_V_5 = sub i9 %lhs_V, %rhs_V_5
  %flag_d_assign_5 = sext i9 %r_V_5 to i32
  %rhs_V_1_5 = zext i8 %win_val_2_V_0_3_load to i9
  %r_V_1_5 = sub i9 %lhs_V, %rhs_V_1_5
  %flag_d_assign_12 = sext i9 %r_V_1_5 to i32
  %tmp_176_5 = icmp sgt i9 %r_V_5, 20
  %tmp_177_5 = icmp slt i9 %r_V_5, -20
  %phitmp_5 = select i1 %tmp_176_5, i2 1, i2 -2
  %tmp_33 = or i1 %tmp_176_5, %tmp_177_5
  %flag_val_V_assign_load_1_8 = select i1 %tmp_33, i2 %phitmp_5, i2 0
  %tmp_182_5 = icmp sgt i9 %r_V_1_5, 20
  %tmp_184_5 = icmp slt i9 %r_V_1_5, -20
  %phitmp1_5 = select i1 %tmp_182_5, i2 1, i2 -2
  %tmp_34 = or i1 %tmp_182_5, %tmp_184_5
  %flag_val_V_assign_load_1_10 = select i1 %tmp_34, i2 %phitmp1_5, i2 0
  %rhs_V_6 = zext i8 %win_val_5_V_4_load to i9
  %r_V_6 = sub i9 %lhs_V, %rhs_V_6
  %flag_d_assign_6 = sext i9 %r_V_6 to i32
  %rhs_V_1_6 = zext i8 %win_val_1_V_1_3_load to i9
  %r_V_1_6 = sub i9 %lhs_V, %rhs_V_1_6
  %flag_d_assign_13 = sext i9 %r_V_1_6 to i32
  %tmp_176_6 = icmp sgt i9 %r_V_6, 20
  %tmp_177_6 = icmp slt i9 %r_V_6, -20
  %phitmp_6 = select i1 %tmp_176_6, i2 1, i2 -2
  %tmp_35 = or i1 %tmp_176_6, %tmp_177_6
  %flag_val_V_assign_load_1_11 = select i1 %tmp_35, i2 %phitmp_6, i2 0
  %tmp_182_6 = icmp sgt i9 %r_V_1_6, 20
  %tmp_184_6 = icmp slt i9 %r_V_1_6, -20
  %phitmp1_6 = select i1 %tmp_182_6, i2 1, i2 -2
  %tmp_36 = or i1 %tmp_182_6, %tmp_184_6
  %flag_val_V_assign_load_1_12 = select i1 %tmp_36, i2 %phitmp1_6, i2 0
  %rhs_V_7 = zext i8 %win_val_6_V_3_load to i9
  %r_V_7 = sub i9 %lhs_V, %rhs_V_7
  %flag_d_assign_7 = sext i9 %r_V_7 to i32
  %rhs_V_1_7 = zext i8 %win_val_0_V_2_3_load to i9
  %r_V_1_7 = sub i9 %lhs_V, %rhs_V_1_7
  %flag_d_assign_14 = sext i9 %r_V_1_7 to i32
  %tmp_176_7 = icmp sgt i9 %r_V_7, 20
  %tmp_177_7 = icmp slt i9 %r_V_7, -20
  %phitmp_7 = select i1 %tmp_176_7, i2 1, i2 -2
  %tmp_37 = or i1 %tmp_176_7, %tmp_177_7
  %flag_val_V_assign_load_1_13 = select i1 %tmp_37, i2 %phitmp_7, i2 0
  %tmp_182_7 = icmp sgt i9 %r_V_1_7, 20
  %tmp_184_7 = icmp slt i9 %r_V_1_7, -20
  %phitmp1_7 = select i1 %tmp_182_7, i2 1, i2 -2
  %tmp_38 = or i1 %tmp_182_7, %tmp_184_7
  %flag_val_V_assign_load_1_14 = select i1 %tmp_38, i2 %phitmp1_7, i2 0
  %tmp_181_0_not = icmp ne i2 %flag_val_V_assign_load_1_s, %flag_val_V_assign_load_1_1
  %tmp_39 = icmp eq i2 %flag_val_V_assign_load_1_s, 0
  %or_cond5 = or i1 %tmp_39, %tmp_181_0_not
  %tmp_181_1_not = icmp ne i2 %flag_val_V_assign_load_1_1, %flag_val_V_assign_load_1_2
  %tmp_183_1 = icmp eq i2 %flag_val_V_assign_load_1_1, 0
  %or_cond6 = or i1 %tmp_183_1, %tmp_181_1_not
  %tmp_181_2_not = icmp ne i2 %flag_val_V_assign_load_1_2, %flag_val_V_assign_load_1_4
  %tmp_183_2 = icmp eq i2 %flag_val_V_assign_load_1_2, 0
  %or_cond7 = or i1 %tmp_183_2, %tmp_181_2_not
  %tmp_181_3_not = icmp ne i2 %flag_val_V_assign_load_1_4, %flag_val_V_assign_load_1_6
  %tmp_183_3 = icmp eq i2 %flag_val_V_assign_load_1_4, 0
  %or_cond8 = or i1 %tmp_183_3, %tmp_181_3_not
  %tmp_181_4_not = icmp ne i2 %flag_val_V_assign_load_1_6, %flag_val_V_assign_load_1_8
  %tmp_183_4 = icmp eq i2 %flag_val_V_assign_load_1_6, 0
  %or_cond9 = or i1 %tmp_183_4, %tmp_181_4_not
  %tmp_181_5_not = icmp ne i2 %flag_val_V_assign_load_1_8, %flag_val_V_assign_load_1_11
  %tmp_183_5 = icmp eq i2 %flag_val_V_assign_load_1_8, 0
  %or_cond2 = or i1 %tmp_183_5, %tmp_181_5_not
  %tmp_181_6_not = icmp ne i2 %flag_val_V_assign_load_1_11, %flag_val_V_assign_load_1_13
  %tmp_183_6 = icmp eq i2 %flag_val_V_assign_load_1_11, 0
  %or_cond3 = or i1 %tmp_183_6, %tmp_181_6_not
  %count_1_i_0_op_op87_op = select i1 %or_cond5, i4 -8, i4 -7
  %phitmp43_op_op_cast_cast_cast = select i1 %or_cond7, i4 6, i4 7
  %tmp_40 = or i1 %or_cond7, %or_cond6
  %count_1_i_2_op_op = select i1 %tmp_40, i4 %phitmp43_op_op_cast_cast_cast, i4 %count_1_i_0_op_op87_op
  %phitmp42_op_cast_cast_cast = select i1 %or_cond9, i4 4, i4 5
  %tmp_41 = or i1 %or_cond9, %or_cond8
  %count_1_i_4_op = select i1 %tmp_41, i4 %phitmp42_op_cast_cast_cast, i4 %count_1_i_2_op_op
  %phitmp3_cast_cast_cast = select i1 %or_cond3, i4 2, i4 3
  %tmp_42 = or i1 %or_cond3, %or_cond2
  %count_1_i_6 = select i1 %tmp_42, i4 %phitmp3_cast_cast_cast, i4 %count_1_i_4_op
  %tmp_181_7_not = icmp ne i2 %flag_val_V_assign_load_1_13, %flag_val_V_assign_load_2_s
  %tmp_183_7 = icmp eq i2 %flag_val_V_assign_load_2_s, 0
  %or_cond10 = or i1 %tmp_183_7, %tmp_181_7_not
  %tmp_185_7 = icmp ugt i4 %count_1_i_6, -8
  %not_or_cond = xor i1 %or_cond10, true
  %iscorner_2_i_7 = and i1 %tmp_185_7, %not_or_cond
  %count_1_i_7 = select i1 %or_cond10, i4 1, i4 %count_1_i_6
  %tmp_181_8 = icmp ne i2 %flag_val_V_assign_load_2_s, %flag_val_V_assign_load_1_9
  %or_cond11 = or i1 %tmp_181_8, %tmp_183_7
  %count_8 = add i4 %count_1_i_7, 1
  %tmp_185_8 = icmp ugt i4 %count_8, -8
  %phitmp4 = add i4 %count_1_i_7, 2
  %not_or_cond1 = xor i1 %or_cond11, true
  %p_iscorner_0_i_8 = and i1 %tmp_185_8, %not_or_cond1
  %count_1_i_8 = select i1 %or_cond11, i4 2, i4 %phitmp4
  %tmp_181_9 = icmp ne i2 %flag_val_V_assign_load_1_9, %flag_val_V_assign_load_1_3
  %tmp_183_9 = icmp eq i2 %flag_val_V_assign_load_1_9, 0
  %or_cond12 = or i1 %tmp_181_9, %tmp_183_9
  %tmp_185_9 = icmp ugt i4 %count_1_i_8, -8
  %not_or_cond2_demorgan = or i1 %tmp_181_9, %tmp_183_9
  %not_or_cond2 = xor i1 %not_or_cond2_demorgan, true
  %p_iscorner_0_i_9 = and i1 %tmp_185_9, %not_or_cond2
  %count_1_i_9 = select i1 %or_cond12, i4 1, i4 %count_1_i_8
  %tmp_181_s = icmp ne i2 %flag_val_V_assign_load_1_3, %flag_val_V_assign_load_1_5
  %tmp_183_s = icmp eq i2 %flag_val_V_assign_load_1_3, 0
  %or_cond13 = or i1 %tmp_181_s, %tmp_183_s
  %count_s = add i4 %count_1_i_9, 1
  %tmp_185_s = icmp ugt i4 %count_s, -8
  %phitmp5 = add i4 %count_1_i_9, 2
  %not_or_cond3_demorgan = or i1 %tmp_181_s, %tmp_183_s
  %not_or_cond3 = xor i1 %not_or_cond3_demorgan, true
  %p_iscorner_0_i_s = and i1 %tmp_185_s, %not_or_cond3
  %count_1_i_s = select i1 %or_cond13, i4 2, i4 %phitmp5
  %tmp_181_1 = icmp ne i2 %flag_val_V_assign_load_1_5, %flag_val_V_assign_load_1_7
  %tmp_183_8 = icmp eq i2 %flag_val_V_assign_load_1_5, 0
  %or_cond14 = or i1 %tmp_181_1, %tmp_183_8
  %tmp_185_1 = icmp ugt i4 %count_1_i_s, -8
  %not_or_cond4_demorgan = or i1 %tmp_181_1, %tmp_183_8
  %not_or_cond4 = xor i1 %not_or_cond4_demorgan, true
  %p_iscorner_0_i_1 = and i1 %tmp_185_1, %not_or_cond4
  %count_1_i_1 = select i1 %or_cond14, i4 1, i4 %count_1_i_s
  %tmp_181_2 = icmp ne i2 %flag_val_V_assign_load_1_7, %flag_val_V_assign_load_1_10
  %tmp_183_10 = icmp eq i2 %flag_val_V_assign_load_1_7, 0
  %or_cond15 = or i1 %tmp_181_2, %tmp_183_10
  %count_1 = add i4 %count_1_i_1, 1
  %tmp_185_2 = icmp ugt i4 %count_1, -8
  %phitmp6 = add i4 %count_1_i_1, 2
  %not_or_cond12_demorgan = or i1 %tmp_181_2, %tmp_183_10
  %not_or_cond12 = xor i1 %not_or_cond12_demorgan, true
  %p_iscorner_0_i_2 = and i1 %tmp_185_2, %not_or_cond12
  %count_1_i_2 = select i1 %or_cond15, i4 2, i4 %phitmp6
  %tmp_181_3 = icmp ne i2 %flag_val_V_assign_load_1_10, %flag_val_V_assign_load_1_12
  %tmp_183_11 = icmp eq i2 %flag_val_V_assign_load_1_10, 0
  %or_cond16 = or i1 %tmp_181_3, %tmp_183_11
  %tmp_185_3 = icmp ugt i4 %count_1_i_2, -8
  %not_or_cond13_demorgan = or i1 %tmp_181_3, %tmp_183_11
  %not_or_cond13 = xor i1 %not_or_cond13_demorgan, true
  %p_iscorner_0_i_3 = and i1 %tmp_185_3, %not_or_cond13
  %count_1_i_3 = select i1 %or_cond16, i4 1, i4 %count_1_i_2
  %count_1_i_3_cast = zext i4 %count_1_i_3 to i5
  %tmp_181_4 = icmp ne i2 %flag_val_V_assign_load_1_12, %flag_val_V_assign_load_1_14
  %tmp_183_12 = icmp eq i2 %flag_val_V_assign_load_1_12, 0
  %or_cond17 = or i1 %tmp_181_4, %tmp_183_12
  %count_2 = add i5 %count_1_i_3_cast, 1
  %tmp_185_4 = icmp ugt i5 %count_2, 8
  %phitmp7 = add i5 %count_1_i_3_cast, 2
  %not_or_cond14_demorgan = or i1 %tmp_181_4, %tmp_183_12
  %not_or_cond14 = xor i1 %not_or_cond14_demorgan, true
  %p_iscorner_0_i_4 = and i1 %tmp_185_4, %not_or_cond14
  %count_1_i_4 = select i1 %or_cond17, i5 2, i5 %phitmp7
  %tmp_181_5 = icmp ne i2 %flag_val_V_assign_load_1_14, %flag_val_V_assign_load_1_s
  %or_cond18 = or i1 %tmp_181_5, %tmp_39
  %tmp_185_5 = icmp ugt i5 %count_1_i_4, 8
  %not_or_cond15 = xor i1 %or_cond18, true
  %p_iscorner_0_i_5 = and i1 %tmp_185_5, %not_or_cond15
  %count_1_i_5 = select i1 %or_cond18, i5 1, i5 %count_1_i_4
  %count_3 = add i5 %count_1_i_5, 1
  %tmp_185_6 = icmp ugt i5 %count_3, 8
  %phitmp8 = add i5 %count_1_i_5, 2
  %not_or_cond5 = xor i1 %or_cond5, true
  %p_iscorner_0_i_6 = and i1 %tmp_185_6, %not_or_cond5
  %count_1_i_10 = select i1 %or_cond5, i5 2, i5 %phitmp8
  %tmp_185_10 = icmp ugt i5 %count_1_i_10, 8
  %not_or_cond6_demorgan = or i1 %tmp_183_1, %tmp_181_1_not
  %not_or_cond6 = xor i1 %not_or_cond6_demorgan, true
  %p_iscorner_0_i_7 = and i1 %tmp_185_10, %not_or_cond6
  %count_1_i_11 = select i1 %or_cond6, i5 1, i5 %count_1_i_10
  %count_4 = add i5 %count_1_i_11, 1
  %tmp_185_11 = icmp ugt i5 %count_4, 8
  %phitmp9 = add i5 %count_1_i_11, 2
  %not_or_cond7_demorgan = or i1 %tmp_183_2, %tmp_181_2_not
  %not_or_cond7 = xor i1 %not_or_cond7_demorgan, true
  %p_iscorner_0_i_10 = and i1 %tmp_185_11, %not_or_cond7
  %count_1_i_12 = select i1 %or_cond7, i5 2, i5 %phitmp9
  %tmp_185_12 = icmp ugt i5 %count_1_i_12, 8
  %not_or_cond8_demorgan = or i1 %tmp_183_3, %tmp_181_3_not
  %not_or_cond8 = xor i1 %not_or_cond8_demorgan, true
  %p_iscorner_0_i_11 = and i1 %tmp_185_12, %not_or_cond8
  %count_1_i_13 = select i1 %or_cond8, i5 1, i5 %count_1_i_12
  %count_5 = add i5 %count_1_i_13, 1
  %tmp_185_13 = icmp ugt i5 %count_5, 8
  %phitmp10 = add i5 %count_1_i_13, 2
  %not_or_cond9_demorgan = or i1 %tmp_183_4, %tmp_181_4_not
  %not_or_cond9 = xor i1 %not_or_cond9_demorgan, true
  %p_iscorner_0_i_12 = and i1 %tmp_185_13, %not_or_cond9
  %count_1_i_14 = select i1 %or_cond9, i5 2, i5 %phitmp10
  %tmp_185_14 = icmp ugt i5 %count_1_i_14, 8
  %not_or_cond10_demorgan = or i1 %tmp_183_5, %tmp_181_5_not
  %not_or_cond10 = xor i1 %not_or_cond10_demorgan, true
  %p_iscorner_0_i_13 = and i1 %tmp_185_14, %not_or_cond10
  %count_1_i_15 = select i1 %or_cond2, i5 1, i5 %count_1_i_14
  %count_6 = add i5 %count_1_i_15, 1
  %tmp_185_15 = icmp ugt i5 %count_6, 8
  %phitmp = add i5 %count_1_i_15, 2
  %not_or_cond11_demorgan = or i1 %tmp_183_6, %tmp_181_6_not
  %not_or_cond11 = xor i1 %not_or_cond11_demorgan, true
  %p_iscorner_0_i_14 = and i1 %tmp_185_15, %not_or_cond11
  %tmp_185_16 = icmp ugt i5 %phitmp, 8
  %tmp2 = and i1 %not_or_cond11, %not_or_cond
  %p_iscorner_0_i_15 = and i1 %tmp2, %tmp_185_16
  %tmp5 = or i1 %iscorner_2_i_7, %p_iscorner_0_i_8
  %tmp6 = or i1 %p_iscorner_0_i_9, %p_iscorner_0_i_s
  %tmp4 = or i1 %tmp6, %tmp5
  %tmp8 = or i1 %p_iscorner_0_i_1, %p_iscorner_0_i_2
  %tmp9 = or i1 %p_iscorner_0_i_3, %p_iscorner_0_i_4
  %tmp7 = or i1 %tmp9, %tmp8
  %tmp3 = or i1 %tmp7, %tmp4
  %tmp12 = or i1 %p_iscorner_0_i_5, %p_iscorner_0_i_6
  %tmp13 = or i1 %p_iscorner_0_i_7, %p_iscorner_0_i_10
  %tmp11 = or i1 %tmp13, %tmp12
  %tmp15 = or i1 %p_iscorner_0_i_11, %p_iscorner_0_i_12
  %tmp17 = or i1 %p_iscorner_0_i_14, %p_iscorner_0_i_15
  %tmp16 = or i1 %tmp17, %p_iscorner_0_i_13
  %tmp14 = or i1 %tmp16, %tmp15
  %tmp10 = or i1 %tmp14, %tmp11
  %iscorner_2_i_s = or i1 %tmp10, %tmp3
  br i1 %iscorner_2_i_s, label %.preheader26.i.i.preheader, label %._crit_edge321_ifconv

.preheader26.i.i.preheader:                       ; preds = %_ifconv
  %tmp_188_1 = icmp slt i9 %r_V_s, %r_V_2
  %tmp_193_1 = select i1 %tmp_188_1, i9 %r_V_s, i9 %r_V_2
  %tmp_193_1_cast = sext i9 %tmp_193_1 to i32
  %flag_d_min2_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_1_cast) nounwind
  %tmp_195_1 = icmp sgt i9 %r_V_s, %r_V_2
  %tmp_203_1 = select i1 %tmp_195_1, i9 %r_V_s, i9 %r_V_2
  %tmp_203_1_cast = sext i9 %tmp_203_1 to i32
  %flag_d_max2_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_1_cast) nounwind
  %tmp_188_3 = icmp slt i9 %r_V_3, %r_V_4
  %tmp_193_3 = select i1 %tmp_188_3, i9 %r_V_3, i9 %r_V_4
  %tmp_193_3_cast = sext i9 %tmp_193_3 to i32
  %flag_d_min2_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_3_cast) nounwind
  %tmp_195_3 = icmp sgt i9 %r_V_3, %r_V_4
  %tmp_203_3 = select i1 %tmp_195_3, i9 %r_V_3, i9 %r_V_4
  %tmp_203_3_cast = sext i9 %tmp_203_3 to i32
  %flag_d_max2_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_3_cast) nounwind
  %tmp_188_5 = icmp slt i9 %r_V_5, %r_V_6
  %tmp_193_5 = select i1 %tmp_188_5, i9 %r_V_5, i9 %r_V_6
  %tmp_193_5_cast = sext i9 %tmp_193_5 to i32
  %flag_d_min2_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_5_cast) nounwind
  %tmp_195_5 = icmp sgt i9 %r_V_5, %r_V_6
  %tmp_203_5 = select i1 %tmp_195_5, i9 %r_V_5, i9 %r_V_6
  %tmp_203_5_cast = sext i9 %tmp_203_5 to i32
  %flag_d_max2_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_5_cast) nounwind
  %tmp_188_7 = icmp slt i9 %r_V_7, %r_V_1
  %tmp_193_7 = select i1 %tmp_188_7, i9 %r_V_7, i9 %r_V_1
  %tmp_193_7_cast = sext i9 %tmp_193_7 to i32
  %flag_d_min2_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_7_cast) nounwind
  %tmp_195_7 = icmp sgt i9 %r_V_7, %r_V_1
  %tmp_203_7 = select i1 %tmp_195_7, i9 %r_V_7, i9 %r_V_1
  %tmp_203_7_cast = sext i9 %tmp_203_7 to i32
  %flag_d_max2_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_7_cast) nounwind
  %tmp_188_9 = icmp slt i9 %r_V_1_1, %r_V_1_2
  %tmp_193_9 = select i1 %tmp_188_9, i9 %r_V_1_1, i9 %r_V_1_2
  %tmp_193_9_cast = sext i9 %tmp_193_9 to i32
  %flag_d_min2_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_9_cast) nounwind
  %tmp_195_9 = icmp sgt i9 %r_V_1_1, %r_V_1_2
  %tmp_203_9 = select i1 %tmp_195_9, i9 %r_V_1_1, i9 %r_V_1_2
  %tmp_203_9_cast = sext i9 %tmp_203_9 to i32
  %flag_d_max2_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_9_cast) nounwind
  %tmp_188_s = icmp slt i9 %r_V_1_3, %r_V_1_4
  %tmp_193_s = select i1 %tmp_188_s, i9 %r_V_1_3, i9 %r_V_1_4
  %tmp_193_cast = sext i9 %tmp_193_s to i32
  %flag_d_min2_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_cast) nounwind
  %tmp_195_s = icmp sgt i9 %r_V_1_3, %r_V_1_4
  %tmp_203_s = select i1 %tmp_195_s, i9 %r_V_1_3, i9 %r_V_1_4
  %tmp_203_cast = sext i9 %tmp_203_s to i32
  %flag_d_max2_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_cast) nounwind
  %tmp_188_2 = icmp slt i9 %r_V_1_5, %r_V_1_6
  %tmp_193_2 = select i1 %tmp_188_2, i9 %r_V_1_5, i9 %r_V_1_6
  %tmp_193_2_cast = sext i9 %tmp_193_2 to i32
  %flag_d_min2_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_2_cast) nounwind
  %tmp_195_2 = icmp sgt i9 %r_V_1_5, %r_V_1_6
  %tmp_203_2 = select i1 %tmp_195_2, i9 %r_V_1_5, i9 %r_V_1_6
  %tmp_203_2_cast = sext i9 %tmp_203_2 to i32
  %flag_d_max2_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_2_cast) nounwind
  %tmp_188_4 = icmp slt i9 %r_V_1_7, %r_V
  %tmp_193_4 = select i1 %tmp_188_4, i9 %r_V_1_7, i9 %r_V
  %tmp_193_4_cast = sext i9 %tmp_193_4 to i32
  %flag_d_min2_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_193_4_cast) nounwind
  %tmp_195_4 = icmp sgt i9 %r_V_1_7, %r_V
  %tmp_203_4 = select i1 %tmp_195_4, i9 %r_V_1_7, i9 %r_V
  %tmp_203_4_cast = sext i9 %tmp_203_4 to i32
  %flag_d_max2_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_203_4_cast) nounwind
  %tmp_192_1 = icmp slt i32 %flag_d_min2_1, %flag_d_min2_3
  %tmp_200_1 = select i1 %tmp_192_1, i32 %flag_d_min2_1, i32 %flag_d_min2_3
  %flag_d_min4_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_1) nounwind
  %tmp_202_1 = icmp sgt i32 %flag_d_max2_1, %flag_d_max2_3
  %tmp_213_1 = select i1 %tmp_202_1, i32 %flag_d_max2_1, i32 %flag_d_max2_3
  %flag_d_max4_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_1) nounwind
  %tmp_192_3 = icmp slt i32 %flag_d_min2_3, %flag_d_min2_5
  %tmp_200_3 = select i1 %tmp_192_3, i32 %flag_d_min2_3, i32 %flag_d_min2_5
  %flag_d_min4_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_3) nounwind
  %tmp_202_3 = icmp sgt i32 %flag_d_max2_3, %flag_d_max2_5
  %tmp_213_3 = select i1 %tmp_202_3, i32 %flag_d_max2_3, i32 %flag_d_max2_5
  %flag_d_max4_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_3) nounwind
  %tmp_192_5 = icmp slt i32 %flag_d_min2_5, %flag_d_min2_7
  %tmp_200_5 = select i1 %tmp_192_5, i32 %flag_d_min2_5, i32 %flag_d_min2_7
  %flag_d_min4_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_5) nounwind
  %tmp_202_5 = icmp sgt i32 %flag_d_max2_5, %flag_d_max2_7
  %tmp_213_5 = select i1 %tmp_202_5, i32 %flag_d_max2_5, i32 %flag_d_max2_7
  %flag_d_max4_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_5) nounwind
  %tmp_192_7 = icmp slt i32 %flag_d_min2_7, %flag_d_min2_9
  %tmp_200_7 = select i1 %tmp_192_7, i32 %flag_d_min2_7, i32 %flag_d_min2_9
  %flag_d_min4_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_7) nounwind
  %tmp_202_7 = icmp sgt i32 %flag_d_max2_7, %flag_d_max2_9
  %tmp_213_7 = select i1 %tmp_202_7, i32 %flag_d_max2_7, i32 %flag_d_max2_9
  %flag_d_max4_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_7) nounwind
  %tmp_192_9 = icmp slt i32 %flag_d_min2_9, %flag_d_min2_11
  %tmp_200_9 = select i1 %tmp_192_9, i32 %flag_d_min2_9, i32 %flag_d_min2_11
  %flag_d_min4_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_9) nounwind
  %tmp_202_9 = icmp sgt i32 %flag_d_max2_9, %flag_d_max2_11
  %tmp_213_9 = select i1 %tmp_202_9, i32 %flag_d_max2_9, i32 %flag_d_max2_11
  %flag_d_max4_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_9) nounwind
  %tmp_192_s = icmp slt i32 %flag_d_min2_11, %flag_d_min2_13
  %tmp_200_s = select i1 %tmp_192_s, i32 %flag_d_min2_11, i32 %flag_d_min2_13
  %flag_d_min4_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_s) nounwind
  %tmp_202_s = icmp sgt i32 %flag_d_max2_11, %flag_d_max2_13
  %tmp_213_s = select i1 %tmp_202_s, i32 %flag_d_max2_11, i32 %flag_d_max2_13
  %flag_d_max4_11 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_s) nounwind
  %tmp_192_2 = icmp slt i32 %flag_d_min2_13, %flag_d_min2_15
  %tmp_200_2 = select i1 %tmp_192_2, i32 %flag_d_min2_13, i32 %flag_d_min2_15
  %flag_d_min4_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_2) nounwind
  %tmp_202_2 = icmp sgt i32 %flag_d_max2_13, %flag_d_max2_15
  %tmp_213_2 = select i1 %tmp_202_2, i32 %flag_d_max2_13, i32 %flag_d_max2_15
  %flag_d_max4_13 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_2) nounwind
  %tmp_192_4 = icmp slt i32 %flag_d_min2_15, %flag_d_min2_1
  %tmp_200_4 = select i1 %tmp_192_4, i32 %flag_d_min2_15, i32 %flag_d_min2_1
  %flag_d_min4_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_200_4) nounwind
  %tmp_202_4 = icmp sgt i32 %flag_d_max2_15, %flag_d_max2_1
  %tmp_213_4 = select i1 %tmp_202_4, i32 %flag_d_max2_15, i32 %flag_d_max2_1
  %flag_d_max4_15 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_213_4) nounwind
  %tmp_199_1 = icmp slt i32 %flag_d_min4_1, %flag_d_min4_5
  %tmp_210_1 = select i1 %tmp_199_1, i32 %flag_d_min4_1, i32 %flag_d_min4_5
  %flag_d_min8_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_1) nounwind
  %tmp_212_1 = icmp sgt i32 %flag_d_max4_1, %flag_d_max4_5
  %tmp_225_1 = select i1 %tmp_212_1, i32 %flag_d_max4_1, i32 %flag_d_max4_5
  %flag_d_max8_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_1) nounwind
  %tmp_199_3 = icmp slt i32 %flag_d_min4_3, %flag_d_min4_7
  %tmp_210_3 = select i1 %tmp_199_3, i32 %flag_d_min4_3, i32 %flag_d_min4_7
  %flag_d_min8_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_3) nounwind
  %tmp_212_3 = icmp sgt i32 %flag_d_max4_3, %flag_d_max4_7
  %tmp_225_3 = select i1 %tmp_212_3, i32 %flag_d_max4_3, i32 %flag_d_max4_7
  %flag_d_max8_3 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_3) nounwind
  %tmp_199_5 = icmp slt i32 %flag_d_min4_5, %flag_d_min4_9
  %tmp_210_5 = select i1 %tmp_199_5, i32 %flag_d_min4_5, i32 %flag_d_min4_9
  %flag_d_min8_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_5) nounwind
  %tmp_212_5 = icmp sgt i32 %flag_d_max4_5, %flag_d_max4_9
  %tmp_225_5 = select i1 %tmp_212_5, i32 %flag_d_max4_5, i32 %flag_d_max4_9
  %flag_d_max8_5 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_5) nounwind
  %tmp_199_7 = icmp slt i32 %flag_d_min4_7, %flag_d_min4_11
  %tmp_210_7 = select i1 %tmp_199_7, i32 %flag_d_min4_7, i32 %flag_d_min4_11
  %flag_d_min8_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_7) nounwind
  %tmp_212_7 = icmp sgt i32 %flag_d_max4_7, %flag_d_max4_11
  %tmp_225_7 = select i1 %tmp_212_7, i32 %flag_d_max4_7, i32 %flag_d_max4_11
  %flag_d_max8_7 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_7) nounwind
  %tmp_199_9 = icmp slt i32 %flag_d_min4_9, %flag_d_min4_13
  %tmp_210_9 = select i1 %tmp_199_9, i32 %flag_d_min4_9, i32 %flag_d_min4_13
  %flag_d_min8_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_9) nounwind
  %tmp_212_9 = icmp sgt i32 %flag_d_max4_9, %flag_d_max4_13
  %tmp_225_9 = select i1 %tmp_212_9, i32 %flag_d_max4_9, i32 %flag_d_max4_13
  %flag_d_max8_9 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_9) nounwind
  %tmp_199_s = icmp slt i32 %flag_d_min4_11, %flag_d_min4_15
  %tmp_210_s = select i1 %tmp_199_s, i32 %flag_d_min4_11, i32 %flag_d_min4_15
  %tmp_211_s = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_s) nounwind
  %tmp_212_s = icmp sgt i32 %flag_d_max4_11, %flag_d_max4_15
  %tmp_225_s = select i1 %tmp_212_s, i32 %flag_d_max4_11, i32 %flag_d_max4_15
  %tmp_226_s = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_s) nounwind
  %tmp_199_2 = icmp slt i32 %flag_d_min4_13, %flag_d_min4_1
  %tmp_210_2 = select i1 %tmp_199_2, i32 %flag_d_min4_13, i32 %flag_d_min4_1
  %tmp_211_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_2) nounwind
  %tmp_212_2 = icmp sgt i32 %flag_d_max4_13, %flag_d_max4_1
  %tmp_225_2 = select i1 %tmp_212_2, i32 %flag_d_max4_13, i32 %flag_d_max4_1
  %tmp_226_1 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_2) nounwind
  %tmp_199_4 = icmp slt i32 %flag_d_min4_15, %flag_d_min4_3
  %tmp_210_4 = select i1 %tmp_199_4, i32 %flag_d_min4_15, i32 %flag_d_min4_3
  %tmp_211_2 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_210_4) nounwind
  %tmp_212_4 = icmp sgt i32 %flag_d_max4_15, %flag_d_max4_3
  %tmp_225_4 = select i1 %tmp_212_4, i32 %flag_d_max4_15, i32 %flag_d_max4_3
  %tmp_226_2 = call fastcc i32 @"image_filter_reg<int>"(i32 %tmp_225_4) nounwind
  %tmp_43 = icmp slt i32 %flag_d_min8_1, %flag_d_assign
  %a_0_flag_d_assign_load_5 = select i1 %tmp_43, i32 %flag_d_min8_1, i32 %flag_d_assign
  %tmp_44 = trunc i32 %a_0_flag_d_assign_load_5 to i8
  %tmp_45 = icmp slt i32 %a_0_flag_d_assign_load_5, 20
  %p_a_0_flag_d_assign_load_5 = select i1 %tmp_45, i8 20, i8 %tmp_44
  %p_a_0_flag_d_assign_load_5_cast = zext i8 %p_a_0_flag_d_assign_load_5 to i32
  %tmp_46 = icmp slt i32 %flag_d_min8_1, %flag_d_assign_9
  %tmp_47 = select i1 %tmp_46, i32 %flag_d_min8_1, i32 %flag_d_assign_9
  %tmp_48 = trunc i32 %tmp_47 to i8
  %tmp_49 = icmp sgt i32 %p_a_0_flag_d_assign_load_5_cast, %tmp_47
  %p_a_0_flag_d_assign_load_5_tmp_s = select i1 %tmp_49, i8 %p_a_0_flag_d_assign_load_5, i8 %tmp_48
  %p_a_0_flag_d_assign_load_5_tmp_1 = zext i8 %p_a_0_flag_d_assign_load_5_tmp_s to i32
  %tmp_209_1 = icmp slt i32 %flag_d_min8_3, %flag_d_assign_2
  %tmp_216_1 = select i1 %tmp_209_1, i32 %flag_d_min8_3, i32 %flag_d_assign_2
  %tmp_56 = trunc i32 %tmp_216_1 to i8
  %tmp_217_1 = icmp sgt i32 %p_a_0_flag_d_assign_load_5_tmp_1, %tmp_216_1
  %a0_s = select i1 %tmp_217_1, i8 %p_a_0_flag_d_assign_load_5_tmp_s, i8 %tmp_56
  %a0_cast = zext i8 %a0_s to i32
  %tmp_231_1 = icmp slt i32 %flag_d_min8_3, %flag_d_assign_10
  %tmp_232_1 = select i1 %tmp_231_1, i32 %flag_d_min8_3, i32 %flag_d_assign_10
  %tmp_57 = trunc i32 %tmp_232_1 to i8
  %tmp_233_1 = icmp sgt i32 %a0_cast, %tmp_232_1
  %a0_tmp_232_1 = select i1 %tmp_233_1, i8 %a0_s, i8 %tmp_57
  %a0_tmp_232_1_cast = zext i8 %a0_tmp_232_1 to i32
  %tmp_209_2 = icmp slt i32 %flag_d_min8_5, %flag_d_assign_4
  %tmp_216_2 = select i1 %tmp_209_2, i32 %flag_d_min8_5, i32 %flag_d_assign_4
  %tmp_58 = trunc i32 %tmp_216_2 to i8
  %tmp_217_2 = icmp sgt i32 %a0_tmp_232_1_cast, %tmp_216_2
  %a0_2 = select i1 %tmp_217_2, i8 %a0_tmp_232_1, i8 %tmp_58
  %a0_2_cast = zext i8 %a0_2 to i32
  %tmp_231_2 = icmp slt i32 %flag_d_min8_5, %flag_d_assign_12
  %tmp_232_2 = select i1 %tmp_231_2, i32 %flag_d_min8_5, i32 %flag_d_assign_12
  %tmp_59 = trunc i32 %tmp_232_2 to i8
  %tmp_233_2 = icmp sgt i32 %a0_2_cast, %tmp_232_2
  %a0_2_tmp_232_2 = select i1 %tmp_233_2, i8 %a0_2, i8 %tmp_59
  %a0_2_tmp_232_2_cast = zext i8 %a0_2_tmp_232_2 to i32
  %tmp_209_3 = icmp slt i32 %flag_d_min8_7, %flag_d_assign_6
  %tmp_216_3 = select i1 %tmp_209_3, i32 %flag_d_min8_7, i32 %flag_d_assign_6
  %tmp_60 = trunc i32 %tmp_216_3 to i8
  %tmp_217_3 = icmp sgt i32 %a0_2_tmp_232_2_cast, %tmp_216_3
  %a0_3 = select i1 %tmp_217_3, i8 %a0_2_tmp_232_2, i8 %tmp_60
  %a0_3_cast = zext i8 %a0_3 to i32
  %tmp_231_3 = icmp slt i32 %flag_d_min8_7, %flag_d_assign_14
  %tmp_232_3 = select i1 %tmp_231_3, i32 %flag_d_min8_7, i32 %flag_d_assign_14
  %tmp_61 = trunc i32 %tmp_232_3 to i8
  %tmp_233_3 = icmp sgt i32 %a0_3_cast, %tmp_232_3
  %a0_3_tmp_232_3 = select i1 %tmp_233_3, i8 %a0_3, i8 %tmp_61
  %a0_3_tmp_232_3_cast = zext i8 %a0_3_tmp_232_3 to i32
  %tmp_209_4 = icmp slt i32 %flag_d_min8_9, %flag_d_assign_8
  %tmp_216_4 = select i1 %tmp_209_4, i32 %flag_d_min8_9, i32 %flag_d_assign_8
  %tmp_62 = trunc i32 %tmp_216_4 to i8
  %tmp_217_4 = icmp sgt i32 %a0_3_tmp_232_3_cast, %tmp_216_4
  %a0_4 = select i1 %tmp_217_4, i8 %a0_3_tmp_232_3, i8 %tmp_62
  %a0_4_cast = zext i8 %a0_4 to i32
  %tmp_231_4 = icmp slt i32 %flag_d_min8_9, %flag_d_assign_1
  %tmp_232_4 = select i1 %tmp_231_4, i32 %flag_d_min8_9, i32 %flag_d_assign_1
  %tmp_63 = trunc i32 %tmp_232_4 to i8
  %tmp_233_4 = icmp sgt i32 %a0_4_cast, %tmp_232_4
  %a0_4_tmp_232_4 = select i1 %tmp_233_4, i8 %a0_4, i8 %tmp_63
  %a0_4_tmp_232_4_cast = zext i8 %a0_4_tmp_232_4 to i32
  %tmp_209_5 = icmp slt i32 %tmp_211_s, %flag_d_assign_s
  %tmp_216_5 = select i1 %tmp_209_5, i32 %tmp_211_s, i32 %flag_d_assign_s
  %tmp_64 = trunc i32 %tmp_216_5 to i8
  %tmp_217_5 = icmp sgt i32 %a0_4_tmp_232_4_cast, %tmp_216_5
  %a0_5 = select i1 %tmp_217_5, i8 %a0_4_tmp_232_4, i8 %tmp_64
  %a0_5_cast = zext i8 %a0_5 to i32
  %tmp_231_5 = icmp slt i32 %tmp_211_s, %flag_d_assign_3
  %tmp_232_5 = select i1 %tmp_231_5, i32 %tmp_211_s, i32 %flag_d_assign_3
  %tmp_65 = trunc i32 %tmp_232_5 to i8
  %tmp_233_5 = icmp sgt i32 %a0_5_cast, %tmp_232_5
  %a0_5_tmp_232_5 = select i1 %tmp_233_5, i8 %a0_5, i8 %tmp_65
  %a0_5_tmp_232_5_cast = zext i8 %a0_5_tmp_232_5 to i32
  %tmp_209_6 = icmp slt i32 %tmp_211_1, %flag_d_assign_11
  %tmp_216_6 = select i1 %tmp_209_6, i32 %tmp_211_1, i32 %flag_d_assign_11
  %tmp_66 = trunc i32 %tmp_216_6 to i8
  %tmp_217_6 = icmp sgt i32 %a0_5_tmp_232_5_cast, %tmp_216_6
  %a0_6 = select i1 %tmp_217_6, i8 %a0_5_tmp_232_5, i8 %tmp_66
  %a0_6_cast = zext i8 %a0_6 to i32
  %tmp_231_6 = icmp slt i32 %tmp_211_1, %flag_d_assign_5
  %tmp_232_6 = select i1 %tmp_231_6, i32 %tmp_211_1, i32 %flag_d_assign_5
  %tmp_75 = trunc i32 %tmp_232_6 to i8
  %tmp_233_6 = icmp sgt i32 %a0_6_cast, %tmp_232_6
  %a0_6_tmp_232_6 = select i1 %tmp_233_6, i8 %a0_6, i8 %tmp_75
  %a0_6_tmp_232_6_cast = zext i8 %a0_6_tmp_232_6 to i32
  %tmp_209_7 = icmp slt i32 %tmp_211_2, %flag_d_assign_13
  %tmp_216_7 = select i1 %tmp_209_7, i32 %tmp_211_2, i32 %flag_d_assign_13
  %tmp_77 = trunc i32 %tmp_216_7 to i8
  %tmp_217_7 = icmp sgt i32 %a0_6_tmp_232_6_cast, %tmp_216_7
  %a0_7 = select i1 %tmp_217_7, i8 %a0_6_tmp_232_6, i8 %tmp_77
  %a0_7_cast = zext i8 %a0_7 to i32
  %tmp_231_7 = icmp slt i32 %tmp_211_2, %flag_d_assign_7
  %tmp_232_7 = select i1 %tmp_231_7, i32 %tmp_211_2, i32 %flag_d_assign_7
  %tmp_78 = trunc i32 %tmp_232_7 to i8
  %tmp_233_7 = icmp sgt i32 %a0_7_cast, %tmp_232_7
  %a0_7_tmp_232_7 = select i1 %tmp_233_7, i8 %a0_7, i8 %tmp_78
  %tmp_67 = icmp sgt i32 %flag_d_max8_1, %flag_d_assign
  %tmp_68 = select i1 %tmp_67, i32 %flag_d_max8_1, i32 %flag_d_assign
  %tmp_80 = trunc i32 %tmp_68 to i9
  %tmp_69 = icmp sgt i32 %tmp_68, -20
  %b0 = select i1 %tmp_69, i9 -20, i9 %tmp_80
  %b0_cast = sext i9 %b0 to i32
  %tmp_70 = icmp sgt i32 %flag_d_max8_1, %flag_d_assign_9
  %tmp_71 = select i1 %tmp_70, i32 %flag_d_max8_1, i32 %flag_d_assign_9
  %tmp_81 = trunc i32 %tmp_71 to i9
  %tmp_72 = icmp slt i32 %b0_cast, %tmp_71
  %b0_tmp_s = select i1 %tmp_72, i9 %b0, i9 %tmp_81
  %b0_tmp_239_cast = sext i9 %b0_tmp_s to i32
  %tmp_221_1 = icmp sgt i32 %flag_d_max8_3, %flag_d_assign_2
  %tmp_227_1 = select i1 %tmp_221_1, i32 %flag_d_max8_3, i32 %flag_d_assign_2
  %tmp_82 = trunc i32 %tmp_227_1 to i9
  %tmp_228_1 = icmp slt i32 %b0_tmp_239_cast, %tmp_227_1
  %b0_s = select i1 %tmp_228_1, i9 %b0_tmp_s, i9 %tmp_82
  %b0_cast_50 = sext i9 %b0_s to i32
  %tmp_236_1 = icmp sgt i32 %flag_d_max8_3, %flag_d_assign_10
  %tmp_239_1 = select i1 %tmp_236_1, i32 %flag_d_max8_3, i32 %flag_d_assign_10
  %tmp_83 = trunc i32 %tmp_239_1 to i9
  %tmp_240_1 = icmp slt i32 %b0_cast_50, %tmp_239_1
  %b0_tmp_239_1 = select i1 %tmp_240_1, i9 %b0_s, i9 %tmp_83
  %b0_tmp_239_1_cast = sext i9 %b0_tmp_239_1 to i32
  %tmp_221_2 = icmp sgt i32 %flag_d_max8_5, %flag_d_assign_4
  %tmp_227_2 = select i1 %tmp_221_2, i32 %flag_d_max8_5, i32 %flag_d_assign_4
  %tmp_84 = trunc i32 %tmp_227_2 to i9
  %tmp_228_2 = icmp slt i32 %b0_tmp_239_1_cast, %tmp_227_2
  %b0_2 = select i1 %tmp_228_2, i9 %b0_tmp_239_1, i9 %tmp_84
  %b0_2_cast = sext i9 %b0_2 to i32
  %tmp_236_2 = icmp sgt i32 %flag_d_max8_5, %flag_d_assign_12
  %tmp_239_2 = select i1 %tmp_236_2, i32 %flag_d_max8_5, i32 %flag_d_assign_12
  %tmp_85 = trunc i32 %tmp_239_2 to i9
  %tmp_240_2 = icmp slt i32 %b0_2_cast, %tmp_239_2
  %b0_2_tmp_239_2 = select i1 %tmp_240_2, i9 %b0_2, i9 %tmp_85
  %b0_2_tmp_239_2_cast = sext i9 %b0_2_tmp_239_2 to i32
  %tmp_221_3 = icmp sgt i32 %flag_d_max8_7, %flag_d_assign_6
  %tmp_227_3 = select i1 %tmp_221_3, i32 %flag_d_max8_7, i32 %flag_d_assign_6
  %tmp_86 = trunc i32 %tmp_227_3 to i9
  %tmp_228_3 = icmp slt i32 %b0_2_tmp_239_2_cast, %tmp_227_3
  %b0_3 = select i1 %tmp_228_3, i9 %b0_2_tmp_239_2, i9 %tmp_86
  %b0_3_cast = sext i9 %b0_3 to i32
  %tmp_236_3 = icmp sgt i32 %flag_d_max8_7, %flag_d_assign_14
  %tmp_239_3 = select i1 %tmp_236_3, i32 %flag_d_max8_7, i32 %flag_d_assign_14
  %tmp_87 = trunc i32 %tmp_239_3 to i9
  %tmp_240_3 = icmp slt i32 %b0_3_cast, %tmp_239_3
  %b0_3_tmp_239_3 = select i1 %tmp_240_3, i9 %b0_3, i9 %tmp_87
  %b0_3_tmp_239_3_cast = sext i9 %b0_3_tmp_239_3 to i32
  %tmp_221_4 = icmp sgt i32 %flag_d_max8_9, %flag_d_assign_8
  %tmp_227_4 = select i1 %tmp_221_4, i32 %flag_d_max8_9, i32 %flag_d_assign_8
  %tmp_88 = trunc i32 %tmp_227_4 to i9
  %tmp_228_4 = icmp slt i32 %b0_3_tmp_239_3_cast, %tmp_227_4
  %b0_4 = select i1 %tmp_228_4, i9 %b0_3_tmp_239_3, i9 %tmp_88
  %b0_4_cast = sext i9 %b0_4 to i32
  %tmp_236_4 = icmp sgt i32 %flag_d_max8_9, %flag_d_assign_1
  %tmp_239_4 = select i1 %tmp_236_4, i32 %flag_d_max8_9, i32 %flag_d_assign_1
  %tmp_89 = trunc i32 %tmp_239_4 to i9
  %tmp_240_4 = icmp slt i32 %b0_4_cast, %tmp_239_4
  %b0_4_tmp_239_4 = select i1 %tmp_240_4, i9 %b0_4, i9 %tmp_89
  %b0_4_tmp_239_4_cast = sext i9 %b0_4_tmp_239_4 to i32
  %tmp_221_5 = icmp sgt i32 %tmp_226_s, %flag_d_assign_s
  %tmp_227_5 = select i1 %tmp_221_5, i32 %tmp_226_s, i32 %flag_d_assign_s
  %tmp_90 = trunc i32 %tmp_227_5 to i9
  %tmp_228_5 = icmp slt i32 %b0_4_tmp_239_4_cast, %tmp_227_5
  %b0_5 = select i1 %tmp_228_5, i9 %b0_4_tmp_239_4, i9 %tmp_90
  %b0_5_cast = sext i9 %b0_5 to i32
  %tmp_236_5 = icmp sgt i32 %tmp_226_s, %flag_d_assign_3
  %tmp_239_5 = select i1 %tmp_236_5, i32 %tmp_226_s, i32 %flag_d_assign_3
  %tmp_91 = trunc i32 %tmp_239_5 to i9
  %tmp_240_5 = icmp slt i32 %b0_5_cast, %tmp_239_5
  %b0_5_tmp_239_5 = select i1 %tmp_240_5, i9 %b0_5, i9 %tmp_91
  %b0_5_tmp_239_5_cast = sext i9 %b0_5_tmp_239_5 to i32
  %tmp_221_6 = icmp sgt i32 %tmp_226_1, %flag_d_assign_11
  %tmp_227_6 = select i1 %tmp_221_6, i32 %tmp_226_1, i32 %flag_d_assign_11
  %tmp_92 = trunc i32 %tmp_227_6 to i9
  %tmp_228_6 = icmp slt i32 %b0_5_tmp_239_5_cast, %tmp_227_6
  %b0_6 = select i1 %tmp_228_6, i9 %b0_5_tmp_239_5, i9 %tmp_92
  %b0_6_cast = sext i9 %b0_6 to i32
  %tmp_236_6 = icmp sgt i32 %tmp_226_1, %flag_d_assign_5
  %tmp_239_6 = select i1 %tmp_236_6, i32 %tmp_226_1, i32 %flag_d_assign_5
  %tmp_93 = trunc i32 %tmp_239_6 to i9
  %tmp_240_6 = icmp slt i32 %b0_6_cast, %tmp_239_6
  %b0_6_tmp_239_6 = select i1 %tmp_240_6, i9 %b0_6, i9 %tmp_93
  %b0_6_tmp_239_6_cast = sext i9 %b0_6_tmp_239_6 to i32
  %tmp_221_7 = icmp sgt i32 %tmp_226_2, %flag_d_assign_13
  %tmp_227_7 = select i1 %tmp_221_7, i32 %tmp_226_2, i32 %flag_d_assign_13
  %tmp_94 = trunc i32 %tmp_227_7 to i9
  %tmp_228_7 = icmp slt i32 %b0_6_tmp_239_6_cast, %tmp_227_7
  %b0_7 = select i1 %tmp_228_7, i9 %b0_6_tmp_239_6, i9 %tmp_94
  %b0_7_cast = sext i9 %b0_7 to i32
  %tmp_236_7 = icmp sgt i32 %tmp_226_2, %flag_d_assign_7
  %tmp_239_7 = select i1 %tmp_236_7, i32 %tmp_226_2, i32 %flag_d_assign_7
  %tmp_240_7 = icmp slt i32 %b0_7_cast, %tmp_239_7
  %tmp_95 = trunc i9 %b0_7 to i8
  %tmp_96 = trunc i32 %tmp_239_7 to i8
  %tmp_79 = select i1 %tmp_240_7, i8 %tmp_95, i8 %tmp_96
  %tmp_50 = sub i8 0, %tmp_79
  %tmp_51 = icmp ugt i8 %a0_7_tmp_232_7, %tmp_50
  %tmp_100_v = select i1 %tmp_51, i8 %a0_7_tmp_232_7, i8 %tmp_50
  %phitmp2 = add i8 %tmp_100_v, -1
  br label %._crit_edge321_ifconv

._crit_edge321_ifconv:                            ; preds = %.preheader26.i.i.preheader, %_ifconv, %.preheader.preheader.0
  %core_1 = phi i8 [ 0, %.preheader.preheader.0 ], [ %phitmp2, %.preheader26.i.i.preheader ], [ 0, %_ifconv ]
  %core_win_val_0_V_0_load = load i16* %core_win_val_0_V_0, align 2
  %core_win_val_1_V_0_load = load i16* %core_win_val_1_V_0, align 2
  %core_win_val_2_V_0_load = load i16* %core_win_val_2_V_0, align 2
  %core_win_val_2_V_2 = select i1 %or_cond, i8 %core_1, i8 0
  %core_win_val_2_V_1_2 = zext i8 %core_win_val_2_V_2 to i16
  store i8 %core_win_val_2_V_2, i8* %core_buf_val_1_V_addr, align 1
  %tmp_52 = icmp ne i16 %core_win_val_1_V_1_3, 0
  %tmp_53 = icmp ugt i11 %p_2, 6
  %tmp_73 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_0_V_0_load
  %tmp_242_1 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_0_V_1_3
  %tmp_242_2 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_0_V_2
  %tmp_74 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_2_V_0_load
  %tmp_245_1 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_2_V_1_3
  %tmp_245_2 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_2_V_1_2
  %tmp_54 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_1_V_0_load
  %tmp_55 = icmp sgt i16 %core_win_val_1_V_1_3, %core_win_val_1_V_2
  %tmp19 = and i1 %tmp_52, %tmp_9
  %tmp21 = and i1 %tmp_73, %tmp_242_1
  %tmp20 = and i1 %tmp21, %tmp_53
  %tmp18 = and i1 %tmp20, %tmp19
  %tmp24 = and i1 %tmp_74, %tmp_245_1
  %tmp23 = and i1 %tmp24, %tmp_242_2
  %tmp26 = and i1 %tmp_55, %tmp_54
  %tmp25 = and i1 %tmp26, %tmp_245_2
  %tmp22 = and i1 %tmp25, %tmp23
  %tmp_26 = and i1 %tmp22, %tmp18
  %tmp_98 = select i1 %tmp_26, i8 -1, i8 0
  %tmp_97 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %p_2, i32 2, i32 10)
  %icmp1 = icmp eq i9 %tmp_97, 0
  %or_cond4 = or i1 %icmp, %icmp1
  br i1 %or_cond4, label %._crit_edge327, label %4

; <label>:4                                       ; preds = %._crit_edge321_ifconv
  %tmp_76 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_mask_data_stream_V, i8 %tmp_98)
  %empty_51 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_76)
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %4, %._crit_edge321_ifconv
  %empty_52 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_10)
  store i16 %core_win_val_2_V_1_2, i16* %core_win_val_2_V_1, align 2
  store i16 %core_win_val_2_V_1_3, i16* %core_win_val_2_V_0, align 2
  store i16 %core_win_val_1_V_2, i16* %core_win_val_1_V_1, align 2
  store i16 %core_win_val_1_V_1_3, i16* %core_win_val_1_V_0, align 2
  store i16 %core_win_val_0_V_2, i16* %core_win_val_0_V_1, align 2
  store i16 %core_win_val_0_V_1_3, i16* %core_win_val_0_V_0, align 2
  br label %2

; <label>:5                                       ; preds = %2
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_6)
  br label %0

; <label>:6                                       ; preds = %0
  ret void
}

define internal fastcc void @"image_filter_Dilate<0, 0, 1080, 1920>"(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_V, i8* %p_dst_data_stream_V) {
._crit_edge.i.i:
  %src_kernel_win_0_val_0_1 = alloca i8, align 1
  %src_kernel_win_0_val_0_2 = alloca i8, align 1
  %col_buf_0_val_0_0_3 = alloca i8, align 1
  %src_kernel_win_0_val_2_1 = alloca i8, align 1
  %src_kernel_win_0_val_1_1 = alloca i8, align 1
  %src_kernel_win_0_val_1_2 = alloca i8, align 1
  %col_buf_0_val_0_0_5 = alloca i8, align 1
  %src_kernel_win_0_val_2_2 = alloca i8, align 1
  %col_buf_0_val_0_0_6 = alloca i8, align 1
  %right_border_buf_0_val_1_2_1 = alloca i8, align 1
  %right_border_buf_0_val_1_2_2 = alloca i8, align 1
  %right_border_buf_0_val_1_2_7 = alloca i8, align 1
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_V, [8 x i8]* @str160, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str161, [1 x i8]* @str161, [8 x i8]* @str160)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_V, [8 x i8]* @str156, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str157, [1 x i8]* @str157, [8 x i8]* @str156)
  %p_src_cols_V_read_3 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read_3 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  %k_buf_0_val_0 = alloca [1920 x i8], align 1
  %k_buf_0_val_1 = alloca [1920 x i8], align 1
  %k_buf_0_val_2 = alloca [1920 x i8], align 1
  %right_border_buf_0_val_0_0 = alloca i8, align 1
  %right_border_buf_0_val_0_1 = alloca i8, align 1
  %right_border_buf_0_val_0_2 = alloca i8, align 1
  %col_buf_0_val_0_0 = alloca i8, align 1
  %tmp = trunc i12 %p_src_rows_V_read_3 to i11
  %tmp_100 = trunc i12 %p_src_cols_V_read_3 to i11
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %rbegin_i_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([61 x i8]* @p_str4) nounwind
  %rend_i_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([61 x i8]* @p_str4, i32 %rbegin_i_i_i) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %rbegin_i243_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([58 x i8]* @p_str15) nounwind
  %rend_i244_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([58 x i8]* @p_str15, i32 %rbegin_i243_i_i) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %rbegin_i245_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([58 x i8]* @p_str29) nounwind
  %rend_i246_i_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([58 x i8]* @p_str29, i32 %rbegin_i245_i_i) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %heightloop = add i11 %tmp, 5
  %widthloop = add i11 %tmp_100, 2
  %tmp_14 = add i11 %tmp_100, -3
  %tmp_14_cast = zext i11 %tmp_14 to i12
  %tmp_101 = trunc i12 %p_src_cols_V_read_3 to i2
  %p_neg226_i_i_cast = xor i2 %tmp_101, -1
  %ref = add i11 %tmp, -1
  %ref_cast = zext i11 %ref to i12
  %tmp_2_i = add i11 %tmp_100, -1
  %tmp_102 = trunc i12 %p_src_rows_V_read_3 to i2
  %tmp_2_i1 = add i2 %tmp_102, -1
  br label %0

; <label>:0                                       ; preds = %5, %._crit_edge.i.i
  %p_012_0_i_i = phi i11 [ 0, %._crit_edge.i.i ], [ %i_V, %5 ]
  %tmp_15_cast_cast = zext i11 %p_012_0_i_i to i12
  %tmp_16 = icmp ult i11 %p_012_0_i_i, %heightloop
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 1085, i64 0)
  %i_V = add i11 %p_012_0_i_i, 1
  br i1 %tmp_16, label %1, label %"morp_opr<dilate_kernel, BORDER_REPLICATE, 0, 0, 1080, 1920>.exit"

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_44 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  %tmp_17 = icmp ugt i11 %p_012_0_i_i, 4
  %ImagLoc_y = add i12 %tmp_15_cast_cast, -4
  %tmp_23 = icmp slt i12 %ImagLoc_y, -1
  %tmp_103 = call i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12 %ImagLoc_y, i32 1, i32 11)
  %icmp = icmp sgt i11 %tmp_103, 0
  %tmp_25 = icmp slt i12 %ImagLoc_y, %ref_cast
  %or_cond = and i1 %icmp, %tmp_25
  %tmp_104 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_y, i32 11)
  %p_i_i = select i1 %tmp_25, i11 2, i11 %ref
  %tmp_105 = trunc i11 %p_i_i to i2
  %tmp_i5 = icmp slt i12 %ImagLoc_y, %p_src_rows_V_read_3
  %tmp_106 = trunc i12 %ImagLoc_y to i2
  %tmp_107 = trunc i11 %ref to i2
  %tmp_108 = select i1 %tmp_i5, i2 %tmp_106, i2 %tmp_107
  %locy = sub i2 %tmp_105, %tmp_108
  %sel_tmp8 = icmp eq i2 %tmp_105, %tmp_108
  %sel_tmp3 = icmp eq i2 %locy, 1
  %y_1 = add i12 %tmp_15_cast_cast, -5
  %tmp_109 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %y_1, i32 11)
  %rev = xor i1 %tmp_109, true
  %tmp_i1 = icmp slt i12 %y_1, %p_src_rows_V_read_3
  %or_cond_i1 = and i1 %tmp_i1, %rev
  %tmp_110 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %y_1, i32 11)
  %tmp_111 = trunc i12 %y_1 to i2
  %tmp_s = select i1 %tmp_110, i2 0, i2 %tmp_2_i1
  %tmp_80 = select i1 %or_cond_i1, i2 %tmp_111, i2 %tmp_s
  %tmp_112 = trunc i11 %p_i_i to i2
  %locy_1_t = sub i2 %tmp_112, %tmp_80
  %sel_tmp4 = icmp eq i2 %tmp_112, %tmp_80
  %sel_tmp7 = icmp eq i2 %locy_1_t, 1
  %y_1_1 = add i12 %tmp_15_cast_cast, -6
  %tmp_113 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %y_1_1, i32 11)
  %rev1 = xor i1 %tmp_113, true
  %tmp_i2 = icmp slt i12 %y_1_1, %p_src_rows_V_read_3
  %or_cond_i2 = and i1 %tmp_i2, %rev1
  %tmp_114 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %y_1_1, i32 11)
  %tmp_115 = trunc i12 %y_1_1 to i2
  %tmp_81 = select i1 %tmp_114, i2 0, i2 %tmp_2_i1
  %tmp_82 = select i1 %or_cond_i2, i2 %tmp_115, i2 %tmp_81
  %locy_2_t = sub i2 %tmp_112, %tmp_82
  %brmerge = or i1 %tmp_23, %or_cond
  br label %2

; <label>:2                                       ; preds = %._crit_edge238.i.i, %1
  %p_025_0_i_i = phi i11 [ 0, %1 ], [ %j_V, %._crit_edge238.i.i ]
  %src_kernel_win_0_val_0_1_6 = load i8* %src_kernel_win_0_val_0_1, align 1
  %src_kernel_win_0_val_2_1_9 = load i8* %src_kernel_win_0_val_2_1, align 1
  %src_kernel_win_0_val_1_1_6 = load i8* %src_kernel_win_0_val_1_1, align 1
  %tmp_18_cast = zext i11 %p_025_0_i_i to i12
  %tmp_19 = icmp ult i11 %p_025_0_i_i, %widthloop
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 1922, i64 0)
  %j_V = add i11 %p_025_0_i_i, 1
  br i1 %tmp_19, label %.critedge.i.i, label %5

.critedge.i.i:                                    ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_45 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_116 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %p_025_0_i_i, i32 1, i32 10)
  %icmp2 = icmp ne i10 %tmp_116, 0
  %or_cond219_i_i = and i1 %tmp_17, %icmp2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1835) nounwind
  %ImagLoc_x = add i12 %tmp_18_cast, -1
  %tmp_117 = trunc i12 %ImagLoc_x to i11
  %tmp_118 = trunc i12 %ImagLoc_x to i2
  %tmp_119 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  %rev2 = xor i1 %tmp_119, true
  %tmp_i = icmp slt i12 %ImagLoc_x, %p_src_cols_V_read_3
  %or_cond_i = and i1 %tmp_i, %rev2
  %tmp_120 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %ImagLoc_x, i32 11)
  %p_assign = select i1 %tmp_120, i11 0, i11 %tmp_2_i
  %p_assign_1_i = select i1 %or_cond_i, i11 %tmp_117, i11 %p_assign
  %tmp_121 = trunc i11 %p_assign_1_i to i2
  %tmp_69 = zext i11 %p_assign_1_i to i64
  %k_buf_0_val_0_addr = getelementptr [1920 x i8]* %k_buf_0_val_0, i64 0, i64 %tmp_69
  %right_border_buf_0_val_2_0 = load i8* %k_buf_0_val_0_addr, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0, align 1
  %k_buf_0_val_1_addr = getelementptr [1920 x i8]* %k_buf_0_val_1, i64 0, i64 %tmp_69
  %right_border_buf_0_val_1_0 = load i8* %k_buf_0_val_1_addr, align 1
  %k_buf_0_val_2_addr = getelementptr [1920 x i8]* %k_buf_0_val_2, i64 0, i64 %tmp_69
  %src_kernel_win_0_val_2_0 = load i8* %k_buf_0_val_2_addr, align 1
  br i1 %brmerge, label %._crit_edge.i3.i, label %._crit_edge228.i.i

._crit_edge.i3.i:                                 ; preds = %.critedge.i.i
  %tmp_26 = icmp ne i11 %p_025_0_i_i, 0
  %or_cond2 = and i1 %tmp_26, %tmp_i
  br i1 %or_cond2, label %3, label %._crit_edge231.i.i

; <label>:3                                       ; preds = %._crit_edge.i3.i
  %tmp_29 = icmp slt i12 %ImagLoc_x, %tmp_14_cast
  br i1 %tmp_29, label %._crit_edge234.i.i.1.critedge.critedge, label %"operator().exit283.i.i"

"operator().exit283.i.i":                         ; preds = %3
  %col_assign = add i2 %tmp_118, %p_neg226_i_i_cast
  switch i2 %col_assign, label %branch14 [
    i2 0, label %branch12
    i2 1, label %branch13
  ]

"operator().exit283.i.i250":                      ; preds = %branch14, %branch13, %branch12
  %right_border_buf_0_val_1_2_s = load i8* %right_border_buf_0_val_1_2_1, align 1
  %right_border_buf_0_val_1_2_1_54 = load i8* %right_border_buf_0_val_1_2_2, align 1
  %right_border_buf_0_val_1_2_2_55 = load i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_0, i8* %k_buf_0_val_2_addr, align 1
  %sel_tmp1 = icmp eq i2 %col_assign, 1
  %right_border_buf_0_val_1_2_3 = select i1 %sel_tmp1, i8 %right_border_buf_0_val_1_2_2_55, i8 %right_border_buf_0_val_1_0
  %sel_tmp5 = icmp eq i2 %col_assign, 0
  %right_border_buf_0_val_1_2_4 = select i1 %sel_tmp5, i8 %right_border_buf_0_val_1_2_2_55, i8 %right_border_buf_0_val_1_2_3
  %right_border_buf_0_val_1_2_5 = select i1 %sel_tmp1, i8 %right_border_buf_0_val_1_0, i8 %right_border_buf_0_val_1_2_1_54
  %right_border_buf_0_val_1_2_6 = select i1 %sel_tmp5, i8 %right_border_buf_0_val_1_2_1_54, i8 %right_border_buf_0_val_1_2_5
  %right_border_buf_0_val_1_2_8 = select i1 %sel_tmp5, i8 %right_border_buf_0_val_1_0, i8 %right_border_buf_0_val_1_2_s
  store i8 %right_border_buf_0_val_2_0, i8* %k_buf_0_val_1_addr, align 1
  switch i2 %col_assign, label %branch26 [
    i2 0, label %._crit_edge234.i.i.1.pre
    i2 1, label %branch25
  ]

._crit_edge234.i.i.1.critedge.critedge:           ; preds = %3
  store i8 %right_border_buf_0_val_1_0, i8* %k_buf_0_val_2_addr, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %k_buf_0_val_1_addr, align 1
  br label %._crit_edge234.i.i.1

._crit_edge234.i.i.1.pre:                         ; preds = %"operator().exit283.i.i250"
  store i8 %right_border_buf_0_val_1_2_4, i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_2_6, i8* %right_border_buf_0_val_1_2_2, align 1
  store i8 %right_border_buf_0_val_1_2_8, i8* %right_border_buf_0_val_1_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0_6, align 1
  br label %._crit_edge234.i.i.1

._crit_edge234.i.i.1:                             ; preds = %._crit_edge234.i.i.1.pre, %branch26, %branch25, %._crit_edge234.i.i.1.critedge.critedge
  %tmp_123 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_V)
  store i8 %tmp_123, i8* %k_buf_0_val_0_addr, align 1
  store i8 %right_border_buf_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

._crit_edge231.i.i:                               ; preds = %._crit_edge.i3.i
  br i1 %tmp_120, label %.loopexit222.i.i.pre, label %4

; <label>:4                                       ; preds = %._crit_edge231.i.i
  br i1 %tmp_i, label %.loopexit222.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %4
  %col_buf_0_val_0_0_3_load = load i8* %col_buf_0_val_0_0_3, align 1
  %col_buf_0_val_0_0_5_load = load i8* %col_buf_0_val_0_0_5, align 1
  %col_buf_0_val_0_0_6_load = load i8* %col_buf_0_val_0_0_6, align 1
  %right_border_buf_0_val_1_2_3_56 = load i8* %right_border_buf_0_val_1_2_1, align 1
  %right_border_buf_0_val_1_2_4_57 = load i8* %right_border_buf_0_val_1_2_2, align 1
  %right_border_buf_0_val_1_2_5_58 = load i8* %right_border_buf_0_val_1_2_7, align 1
  %col_assign_1 = add i2 %tmp_121, %p_neg226_i_i_cast
  %sel_tmp = icmp eq i2 %col_assign_1, 1
  %col_buf_0_val_0_0_2 = select i1 %sel_tmp, i8 %col_buf_0_val_0_0_5_load, i8 %col_buf_0_val_0_0_3_load
  %sel_tmp2 = icmp eq i2 %col_assign_1, 0
  %col_buf_0_val_0_0_9 = select i1 %sel_tmp2, i8 %col_buf_0_val_0_0_6_load, i8 %col_buf_0_val_0_0_2
  %right_border_buf_0_val_1_2 = select i1 %sel_tmp, i8 %right_border_buf_0_val_1_2_4_57, i8 %right_border_buf_0_val_1_2_5_58
  %right_border_buf_0_val_1_2_11 = select i1 %sel_tmp2, i8 %right_border_buf_0_val_1_2_3_56, i8 %right_border_buf_0_val_1_2
  switch i2 %col_assign_1, label %branch11 [
    i2 0, label %branch9
    i2 1, label %branch10
  ]

._crit_edge228.i.i:                               ; preds = %.critedge.i.i
  br i1 %tmp_104, label %.loopexit222.i.i, label %._crit_edge236.i.i.0

._crit_edge236.i.i.0:                             ; preds = %._crit_edge228.i.i
  %sel_tmp9 = select i1 %sel_tmp8, i8 %right_border_buf_0_val_2_0, i8 %src_kernel_win_0_val_2_0
  %src_kernel_win_0_val_0_0 = select i1 %sel_tmp3, i8 %right_border_buf_0_val_1_0, i8 %sel_tmp9
  %sel_tmp6 = select i1 %sel_tmp4, i8 %right_border_buf_0_val_2_0, i8 %src_kernel_win_0_val_2_0
  %src_kernel_win_0_val_1_0 = select i1 %sel_tmp7, i8 %right_border_buf_0_val_1_0, i8 %sel_tmp6
  switch i2 %locy_2_t, label %branch8 [
    i2 0, label %branch6
    i2 1, label %.loopexit222.i.i.pre69
  ]

.loopexit222.i.i.pre:                             ; preds = %._crit_edge231.i.i
  store i8 %right_border_buf_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

.loopexit222.i.i.pre69:                           ; preds = %._crit_edge236.i.i.0
  store i8 %src_kernel_win_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %right_border_buf_0_val_1_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %src_kernel_win_0_val_0_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

.loopexit222.i.i:                                 ; preds = %._crit_edge228.i.i, %.loopexit222.i.i.pre69, %.loopexit222.i.i.pre, %branch11, %branch10, %branch9, %branch8, %branch6, %4, %._crit_edge234.i.i.1
  br i1 %or_cond219_i_i, label %._crit_edge2.i285.i.i.0.0, label %._crit_edge238.i.i

._crit_edge2.i285.i.i.0.0:                        ; preds = %.loopexit222.i.i
  %src_kernel_win_0_val_0_1_lo = load i8* %src_kernel_win_0_val_0_1, align 1
  %src_kernel_win_0_val_0_2_lo = load i8* %src_kernel_win_0_val_0_2, align 1
  %src_kernel_win_0_val_2_1_lo = load i8* %src_kernel_win_0_val_2_1, align 1
  %src_kernel_win_0_val_1_1_lo = load i8* %src_kernel_win_0_val_1_1, align 1
  %src_kernel_win_0_val_1_2_lo = load i8* %src_kernel_win_0_val_1_2, align 1
  %src_kernel_win_0_val_2_2_lo = load i8* %src_kernel_win_0_val_2_2, align 1
  %tmp_128_0_1 = icmp ugt i8 %src_kernel_win_0_val_2_1_9, %src_kernel_win_0_val_2_2_lo
  %temp_0_i_i_i_057_i_i_1_0_1 = select i1 %tmp_128_0_1, i8 %src_kernel_win_0_val_2_1_9, i8 %src_kernel_win_0_val_2_2_lo
  %tmp_128_0_2 = icmp ugt i8 %src_kernel_win_0_val_2_1_lo, %temp_0_i_i_i_057_i_i_1_0_1
  %temp_0_i_i_i_057_i_i_1_0_2 = select i1 %tmp_128_0_2, i8 %src_kernel_win_0_val_2_1_lo, i8 %temp_0_i_i_i_057_i_i_1_0_1
  %tmp_128_1 = icmp ugt i8 %src_kernel_win_0_val_1_2_lo, %temp_0_i_i_i_057_i_i_1_0_2
  %temp_0_i_i_i_057_i_i_1_1 = select i1 %tmp_128_1, i8 %src_kernel_win_0_val_1_2_lo, i8 %temp_0_i_i_i_057_i_i_1_0_2
  %tmp_128_1_1 = icmp ugt i8 %src_kernel_win_0_val_1_1_6, %temp_0_i_i_i_057_i_i_1_1
  %temp_0_i_i_i_057_i_i_1_1_1 = select i1 %tmp_128_1_1, i8 %src_kernel_win_0_val_1_1_6, i8 %temp_0_i_i_i_057_i_i_1_1
  %tmp_128_1_2 = icmp ugt i8 %src_kernel_win_0_val_1_1_lo, %temp_0_i_i_i_057_i_i_1_1_1
  %temp_0_i_i_i_057_i_i_1_1_2 = select i1 %tmp_128_1_2, i8 %src_kernel_win_0_val_1_1_lo, i8 %temp_0_i_i_i_057_i_i_1_1_1
  %tmp_128_2 = icmp ugt i8 %src_kernel_win_0_val_0_2_lo, %temp_0_i_i_i_057_i_i_1_1_2
  %temp_0_i_i_i_057_i_i_1_2 = select i1 %tmp_128_2, i8 %src_kernel_win_0_val_0_2_lo, i8 %temp_0_i_i_i_057_i_i_1_1_2
  %tmp_128_2_1 = icmp ugt i8 %src_kernel_win_0_val_0_1_6, %temp_0_i_i_i_057_i_i_1_2
  %temp_0_i_i_i_057_i_i_1_2_1 = select i1 %tmp_128_2_1, i8 %src_kernel_win_0_val_0_1_6, i8 %temp_0_i_i_i_057_i_i_1_2
  %tmp_128_2_2 = icmp ugt i8 %src_kernel_win_0_val_0_1_lo, %temp_0_i_i_i_057_i_i_1_2_1
  %tmp_34 = select i1 %tmp_128_2_2, i8 %src_kernel_win_0_val_0_1_lo, i8 %temp_0_i_i_i_057_i_i_1_2_1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_V, i8 %tmp_34)
  br label %._crit_edge238.i.i

._crit_edge238.i.i:                               ; preds = %._crit_edge2.i285.i.i.0.0, %.loopexit222.i.i
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_45)
  store i8 %src_kernel_win_0_val_2_1_9, i8* %src_kernel_win_0_val_2_2, align 1
  store i8 %src_kernel_win_0_val_1_1_6, i8* %src_kernel_win_0_val_1_2, align 1
  store i8 %src_kernel_win_0_val_0_1_6, i8* %src_kernel_win_0_val_0_2, align 1
  br label %2

; <label>:5                                       ; preds = %2
  %empty_59 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_44)
  br label %0

"morp_opr<dilate_kernel, BORDER_REPLICATE, 0, 0, 1080, 1920>.exit": ; preds = %0
  ret void

branch6:                                          ; preds = %._crit_edge236.i.i.0
  store i8 %src_kernel_win_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %src_kernel_win_0_val_0_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

branch8:                                          ; preds = %._crit_edge236.i.i.0
  store i8 %src_kernel_win_0_val_1_0, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_0, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %src_kernel_win_0_val_0_0, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

branch9:                                          ; preds = %.preheader.preheader.i.i
  %src_kernel_win_0_val_2_1_6 = load i8* %right_border_buf_0_val_0_0, align 1
  store i8 %right_border_buf_0_val_1_2_11, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_1_6, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %col_buf_0_val_0_0_9, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

branch10:                                         ; preds = %.preheader.preheader.i.i
  %src_kernel_win_0_val_2_1_7 = load i8* %right_border_buf_0_val_0_1, align 1
  store i8 %right_border_buf_0_val_1_2_11, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_1_7, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %col_buf_0_val_0_0_9, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

branch11:                                         ; preds = %.preheader.preheader.i.i
  %src_kernel_win_0_val_2_1_5 = load i8* %right_border_buf_0_val_0_2, align 1
  store i8 %right_border_buf_0_val_1_2_11, i8* %src_kernel_win_0_val_1_1, align 1
  store i8 %src_kernel_win_0_val_2_1_5, i8* %src_kernel_win_0_val_2_1, align 1
  store i8 %col_buf_0_val_0_0_9, i8* %src_kernel_win_0_val_0_1, align 1
  br label %.loopexit222.i.i

branch12:                                         ; preds = %"operator().exit283.i.i"
  store i8 %src_kernel_win_0_val_2_0, i8* %right_border_buf_0_val_0_0, align 1
  br label %"operator().exit283.i.i250"

branch13:                                         ; preds = %"operator().exit283.i.i"
  store i8 %src_kernel_win_0_val_2_0, i8* %right_border_buf_0_val_0_1, align 1
  br label %"operator().exit283.i.i250"

branch14:                                         ; preds = %"operator().exit283.i.i"
  store i8 %src_kernel_win_0_val_2_0, i8* %right_border_buf_0_val_0_2, align 1
  br label %"operator().exit283.i.i250"

branch25:                                         ; preds = %"operator().exit283.i.i250"
  store i8 %right_border_buf_0_val_1_2_4, i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_2_6, i8* %right_border_buf_0_val_1_2_2, align 1
  store i8 %right_border_buf_0_val_1_2_8, i8* %right_border_buf_0_val_1_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0_5, align 1
  br label %._crit_edge234.i.i.1

branch26:                                         ; preds = %"operator().exit283.i.i250"
  store i8 %right_border_buf_0_val_1_2_4, i8* %right_border_buf_0_val_1_2_7, align 1
  store i8 %right_border_buf_0_val_1_2_6, i8* %right_border_buf_0_val_1_2_2, align 1
  store i8 %right_border_buf_0_val_1_2_8, i8* %right_border_buf_0_val_1_2_1, align 1
  store i8 %right_border_buf_0_val_2_0, i8* %col_buf_0_val_0_0_3, align 1
  br label %._crit_edge234.i.i.1
}

define internal fastcc void @"image_filter_PaintMask<32, 0, 1080, 1920>"(i12 %p_src_rows_V_read, i12 %p_src_cols_V_read, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i12 %p_mask_rows_V_read, i12 %p_mask_cols_V_read, i8* %p_mask_data_stream_V, i12 %p_dst_rows_V_read, i12 %p_dst_cols_V_read, i8* %p_dst_data_stream_0_V, i8* %p_dst_data_stream_1_V, i8* %p_dst_data_stream_2_V) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_mask_data_stream_V, [8 x i8]* @str160, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str161, [1 x i8]* @str161, [8 x i8]* @str160)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str153, [1 x i8]* @str153, [8 x i8]* @str152)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @str148, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str149, [1 x i8]* @str149, [8 x i8]* @str148)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @str144, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str145, [1 x i8]* @str145, [8 x i8]* @str144)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_2_V, [8 x i8]* @str128, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str129, [1 x i8]* @str129, [8 x i8]* @str128)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_1_V, [8 x i8]* @str124, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str125, [1 x i8]* @str125, [8 x i8]* @str124)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_dst_data_stream_0_V, [8 x i8]* @str120, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str121, [1 x i8]* @str121, [8 x i8]* @str120)
  %p_dst_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_dst_cols_V_read)
  %p_dst_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_dst_rows_V_read)
  %p_mask_cols_V_read4 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_mask_cols_V_read)
  %p_mask_rows_V_read3 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_mask_rows_V_read)
  %p_src_cols_V_read2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_cols_V_read)
  %p_src_rows_V_read1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_src_rows_V_read)
  br label %.preheader

.preheader:                                       ; preds = %0, %3
  %p_s = phi i11 [ %i_V, %3 ], [ 0, %0 ]
  %p_cast = zext i11 %p_s to i12
  %exitcond4 = icmp eq i12 %p_cast, %p_dst_rows_V_read_1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1080, i64 0)
  %i_V = add i11 %p_s, 1
  br i1 %exitcond4, label %4, label %1

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_62 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  br label %2

; <label>:2                                       ; preds = %"operator>>.exit", %1
  %p_4 = phi i11 [ 0, %1 ], [ %j_V, %"operator>>.exit" ]
  %p_4_cast = zext i11 %p_4 to i12
  %exitcond = icmp eq i12 %p_4_cast, %p_dst_cols_V_read_1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1920, i64 0)
  %j_V = add i11 %p_4, 1
  br i1 %exitcond, label %3, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_63 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_64 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_125 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_0_V)
  %tmp_126 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_64)
  %tmp_69 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_124 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_mask_data_stream_V)
  %empty_60 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_69)
  %tmp_37 = icmp eq i8 %tmp_124, 0
  %tmp_39 = select i1 %tmp_37, i8 %tmp_125, i8 -1
  %tmp_40 = select i1 %tmp_37, i8 %tmp_126, i8 0
  %tmp_41 = select i1 %tmp_37, i8 %tmp, i8 0
  %tmp_72 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_0_V, i8 %tmp_39)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_1_V, i8 %tmp_40)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_dst_data_stream_2_V, i8 %tmp_41)
  %empty_61 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_72)
  %empty_62 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_63)
  br label %2

; <label>:3                                       ; preds = %2
  %empty_63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_62)
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @image_filter_Mat2AXIvideo(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
  %tmp_user_V = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str128, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str129, [1 x i8]* @str129, [8 x i8]* @str128)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str124, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str125, [1 x i8]* @str125, [8 x i8]* @str124)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str120, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str121, [1 x i8]* @str121, [8 x i8]* @str120)
  %img_cols_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  %tmp_cast = zext i12 %img_cols_V_read_2 to i13
  %op2_assign = add i13 %tmp_cast, -1
  store i1 true, i1* %tmp_user_V, align 1
  br label %1

; <label>:1                                       ; preds = %4, %0
  %p_1 = phi i12 [ 0, %0 ], [ %i_V, %4 ]
  %exitcond5 = icmp eq i12 %p_1, %img_rows_V_read_2
  %i_V = add i12 %p_1, 1
  br i1 %exitcond5, label %5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1813) nounwind
  %tmp_80 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1813)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1806) nounwind
  br label %3

; <label>:3                                       ; preds = %"operator>>.exit", %2
  %p_s = phi i12 [ 0, %2 ], [ %j_V, %"operator>>.exit" ]
  %exitcond6 = icmp eq i12 %p_s, %img_cols_V_read_2
  %j_V = add i12 %p_s, 1
  br i1 %exitcond6, label %4, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %3
  %tmp_user_V_load = load i1* %tmp_user_V, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1814) nounwind
  %tmp_81 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_cast_64 = zext i12 %p_s to i13
  %axi_last_V = icmp eq i13 %tmp_cast_64, %op2_assign
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_127 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_128 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1818, i32 %tmp_s)
  %tmp_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp, i8 %tmp_128, i8 %tmp_127)
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %tmp_data_V, i4 -1, i4 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_65 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1814, i32 %tmp_81)
  store i1 false, i1* %tmp_user_V, align 1
  br label %3

; <label>:4                                       ; preds = %3
  %empty_66 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1813, i32 %tmp_80)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } @image_filter_Block__proc(i32 %rows, i32 %cols) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  %cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rows)
  %p_src_rows_V = trunc i32 %rows_read to i12
  %p_src_cols_V = trunc i32 %cols_read to i12
  %mrv_s = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } undef, i12 %p_src_rows_V, 0
  %mrv_1 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_s, i12 %p_src_cols_V, 1
  %mrv_2 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_1, i12 %p_src_rows_V, 2
  %mrv_3 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_2, i12 %p_src_rows_V, 3
  %mrv_4 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_3, i12 %p_src_cols_V, 4
  %mrv_5 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_4, i12 %p_src_cols_V, 5
  %mrv_6 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_5, i12 %p_src_rows_V, 6
  %mrv_7 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_6, i12 %p_src_rows_V, 7
  %mrv_8 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_7, i12 %p_src_cols_V, 8
  %mrv_9 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_8, i12 %p_src_cols_V, 9
  %mrv_10 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_9, i12 %p_src_rows_V, 10
  %mrv_11 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_10, i12 %p_src_cols_V, 11
  ret { i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_11
}

define internal fastcc { i12, i12, i12, i12, i12, i12, i12, i12 } @image_filter_Block_Mat.exit1220_proc1(i12 %p_read, i12 %p_read2, i12 %p_read16, i12 %p_read17, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i8* %src0_data_stream_0_V, i8* %src0_data_stream_1_V, i8* %src0_data_stream_2_V, i8* %src1_data_stream_0_V, i8* %src1_data_stream_1_V, i8* %src1_data_stream_2_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %src1_data_stream_2_V, [8 x i8]* @str152, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str153, [1 x i8]* @str153, [8 x i8]* @str152)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src1_data_stream_1_V, [8 x i8]* @str148, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str149, [1 x i8]* @str149, [8 x i8]* @str148)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src1_data_stream_0_V, [8 x i8]* @str144, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str145, [1 x i8]* @str145, [8 x i8]* @str144)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_2_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str141, [1 x i8]* @str141, [8 x i8]* @str140)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_1_V, [8 x i8]* @str136, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str137, [1 x i8]* @str137, [8 x i8]* @str136)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_0_V, [8 x i8]* @str132, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str133, [1 x i8]* @str133, [8 x i8]* @str132)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_2_V, [8 x i8]* @str116, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str117, [1 x i8]* @str117, [8 x i8]* @str116)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_1_V, [8 x i8]* @str112, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str113, [1 x i8]* @str113, [8 x i8]* @str112)
  call void (...)* @_ssdm_op_SpecInterface(i8* %p_src_data_stream_0_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str109, [1 x i8]* @str109, [8 x i8]* @str108)
  %p_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read17)
  %p_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read16)
  %p_read22 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read2)
  %p_read_3 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read)
  call fastcc void @"image_filter_Duplicate<1080, 1920, 32, 32>"(i12 %p_read_2, i12 %p_read_1, i8* %p_src_data_stream_0_V, i8* %p_src_data_stream_1_V, i8* %p_src_data_stream_2_V, i12 %p_read_3, i12 %p_read22, i8* %src0_data_stream_0_V, i8* %src0_data_stream_1_V, i8* %src0_data_stream_2_V, i12 %p_read_3, i12 %p_read22, i8* %src1_data_stream_0_V, i8* %src1_data_stream_1_V, i8* %src1_data_stream_2_V)
  %mrv = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } undef, i12 %p_read_3, 0
  %mrv_1 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv, i12 %p_read22, 1
  %mrv_2 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_1, i12 %p_read_3, 2
  %mrv_3 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_2, i12 %p_read22, 3
  %mrv_4 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_3, i12 %p_read_3, 4
  %mrv_5 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_4, i12 %p_read22, 5
  %mrv_6 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_5, i12 %p_read_3, 6
  %mrv_7 = insertvalue { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_6, i12 %p_read22, 7
  ret { i12, i12, i12, i12, i12, i12, i12, i12 } %mrv_7
}

define internal fastcc { i12, i12 } @image_filter_Block_Mat.exit1222_proc1(i12 %p_read, i12 %p_read2, i12 %p_read6, i12 %p_read7, i8* %src0_data_stream_0_V, i8* %src0_data_stream_1_V, i8* %src0_data_stream_2_V, i8* %gray_data_stream_0_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i8* %gray_data_stream_0_V, [8 x i8]* @str164, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str165, [1 x i8]* @str165, [8 x i8]* @str164)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_2_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str141, [1 x i8]* @str141, [8 x i8]* @str140)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_1_V, [8 x i8]* @str136, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str137, [1 x i8]* @str137, [8 x i8]* @str136)
  call void (...)* @_ssdm_op_SpecInterface(i8* %src0_data_stream_0_V, [8 x i8]* @str132, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str133, [1 x i8]* @str133, [8 x i8]* @str132)
  %p_read_4 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read7)
  %p_read63 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read6)
  %p_read22 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read2)
  %p_read_5 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %p_read)
  call fastcc void @image_filter_CvtColor(i12 %p_read63, i12 %p_read_4, i8* %src0_data_stream_0_V, i8* %src0_data_stream_1_V, i8* %src0_data_stream_2_V, i8* %gray_data_stream_0_V)
  %mrv = insertvalue { i12, i12 } undef, i12 %p_read_5, 0
  %mrv_1 = insertvalue { i12, i12 } %mrv, i12 %p_read22, 1
  ret { i12, i12 } %mrv_1
}

define weak i11 @_ssdm_op_PartSelect.i11.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_67 = trunc i12 %empty to i11
  ret i11 %empty_67
}

define weak i32 @_ssdm_op_Read.ap_stable.i32(i32) {
entry:
  ret i32 %0
}

define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0
  %empty_68 = load i4* %1
  %empty_69 = load i4* %2
  %empty_70 = load i1* %3
  %empty_71 = load i1* %4
  %empty_72 = load i1* %5
  %empty_73 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_68, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_69, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_70, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_71, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_72, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_73, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_74 = and i32 %0, %empty
  %empty_75 = icmp ne i32 %empty_74, 0
  ret i1 %empty_75
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_76 = shl i8 1, %empty
  %empty_77 = and i8 %0, %empty_76
  %empty_78 = icmp ne i8 %empty_77, 0
  ret i1 %empty_78
}

define weak i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_79 = trunc i11 %empty to i9
  ret i9 %empty_79
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_80 = shl i12 1, %empty
  %empty_81 = and i12 %0, %empty_80
  %empty_82 = icmp ne i12 %empty_81, 0
  ret i1 %empty_82
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_83 = trunc i11 %empty to i10
  ret i10 %empty_83
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"INPUT_STREAM.V.data.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 3, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"INPUT_STREAM.V.keep.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 3, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"INPUT_STREAM.V.strb.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"INPUT_STREAM.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"INPUT_STREAM.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"INPUT_STREAM.V.id.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"INPUT_STREAM.V.dest.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"OUTPUT_STREAM.V.data.V", metadata !5, metadata !"uint32", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 3, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"OUTPUT_STREAM.V.keep.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 3, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"OUTPUT_STREAM.V.strb.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"OUTPUT_STREAM.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"OUTPUT_STREAM.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"OUTPUT_STREAM.V.id.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"OUTPUT_STREAM.V.dest.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"rows", metadata !67, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"cols", metadata !67, metadata !"int", i32 0, i32 31}
