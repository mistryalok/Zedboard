; ModuleID = '/home/alok/githum/Zedboard/Learning/opencv_hls/xapp1167_vivado/sw/acme/prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1807 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1808 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str1810 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str1811 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str1816 = private unnamed_addr constant [13 x i8] c"hls_label_37\00", align 1
@p_str1817 = private unnamed_addr constant [13 x i8] c"hls_label_38\00", align 1
@p_str1821 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1822 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1826 = private unnamed_addr constant [13 x i8] c"hls_label_20\00", align 1
@p_str1828 = private unnamed_addr constant [13 x i8] c"hls_label_18\00", align 1
@p_str1830 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1831 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [13 x i8] c"image_filter\00"
@str55 = internal constant [23 x i8] c"img_0.data_stream[0].V\00"
@str56 = internal constant [1 x i8] zeroinitializer
@str57 = internal constant [8 x i8] c"ap_fifo\00"
@str58 = internal constant [1 x i8] zeroinitializer
@str59 = internal constant [23 x i8] c"img_0.data_stream[1].V\00"
@str60 = internal constant [1 x i8] zeroinitializer
@str61 = internal constant [8 x i8] c"ap_fifo\00"
@str62 = internal constant [1 x i8] zeroinitializer
@str63 = internal constant [23 x i8] c"img_0.data_stream[2].V\00"
@str64 = internal constant [1 x i8] zeroinitializer
@str65 = internal constant [8 x i8] c"ap_fifo\00"
@str66 = internal constant [1 x i8] zeroinitializer
@str67 = internal constant [23 x i8] c"img_1.data_stream[0].V\00"
@str68 = internal constant [1 x i8] zeroinitializer
@str69 = internal constant [8 x i8] c"ap_fifo\00"
@str70 = internal constant [1 x i8] zeroinitializer
@str71 = internal constant [23 x i8] c"img_1.data_stream[1].V\00"
@str72 = internal constant [1 x i8] zeroinitializer
@str73 = internal constant [8 x i8] c"ap_fifo\00"
@str74 = internal constant [1 x i8] zeroinitializer
@str75 = internal constant [23 x i8] c"img_1.data_stream[2].V\00"
@str76 = internal constant [1 x i8] zeroinitializer
@str77 = internal constant [8 x i8] c"ap_fifo\00"
@str78 = internal constant [1 x i8] zeroinitializer

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define void @image_filter(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, i32 %rows, i32 %cols) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1808) nounwind
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
  %img_0_data_stream_0_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str55, i32 1, [1 x i8]* @str56, [1 x i8]* @str56, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @str57, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str58, [1 x i8]* @str58, [8 x i8]* @str57)
  %img_0_data_stream_1_V = alloca i8, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str59, i32 1, [1 x i8]* @str60, [1 x i8]* @str60, i32 1, i32 1, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_1_V, [8 x i8]* @str61, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str62, [1 x i8]* @str62, [8 x i8]* @str61)
  %img_0_data_stream_2_V = alloca i8, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str63, i32 1, [1 x i8]* @str64, [1 x i8]* @str64, i32 1, i32 1, i8* %img_0_data_stream_2_V, i8* %img_0_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_2_V, [8 x i8]* @str65, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str66, [1 x i8]* @str66, [8 x i8]* @str65)
  %img_1_data_stream_0_V = alloca i8, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str67, i32 1, [1 x i8]* @str68, [1 x i8]* @str68, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @str69, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str70, [1 x i8]* @str70, [8 x i8]* @str69)
  %img_1_data_stream_1_V = alloca i8, align 1
  %empty_13 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str71, i32 1, [1 x i8]* @str72, [1 x i8]* @str72, i32 1, i32 1, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V, [8 x i8]* @str73, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str74, [1 x i8]* @str74, [8 x i8]* @str73)
  %img_1_data_stream_2_V = alloca i8, align 1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str75, i32 1, [1 x i8]* @str76, [1 x i8]* @str76, i32 1, i32 1, i8* %img_1_data_stream_2_V, i8* %img_1_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_2_V, [8 x i8]* @str77, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str78, [1 x i8]* @str78, [8 x i8]* @str77)
  call void (...)* @_ssdm_op_SpecInterface(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, [5 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, [5 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecInterface(i32 %rows, [10 x i8]* @p_str1811, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %cols, [10 x i8]* @p_str1811, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808) nounwind
  %call_ret = call fastcc { i12, i12, i12, i12 } @image_filter_Block__proc(i32 %rows_read, i32 %cols_read)
  %img_0_rows_V_channel = extractvalue { i12, i12, i12, i12 } %call_ret, 0
  %img_0_cols_V_channel = extractvalue { i12, i12, i12, i12 } %call_ret, 1
  %img_1_rows_V = extractvalue { i12, i12, i12, i12 } %call_ret, 2
  %img_1_cols_V = extractvalue { i12, i12, i12, i12 } %call_ret, 3
  call fastcc void @image_filter_AXIvideo2Mat(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i12 %img_0_rows_V_channel, i12 %img_0_cols_V_channel, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V)
  call fastcc void @image_filter_Loop_1_proc(i32 %rows_read, i32 %cols_read, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V)
  call fastcc void @image_filter_Mat2AXIvideo(i12 %img_1_rows_V, i12 %img_1_cols_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V)
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
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
  %empty_15 = trunc i32 %empty to i8
  ret i8 %empty_15
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_16 = zext i8 %3 to i16
  %empty_17 = shl i16 %empty, 8
  %empty_18 = or i16 %empty_17, %empty_16
  %empty_19 = zext i8 %1 to i24
  %empty_20 = zext i16 %empty_18 to i24
  %empty_21 = shl i24 %empty_19, 16
  %empty_22 = or i24 %empty_21, %empty_20
  %empty_23 = zext i8 %0 to i32
  %empty_24 = zext i24 %empty_22 to i32
  %empty_25 = shl i32 %empty_23, 24
  %empty_26 = or i32 %empty_25, %empty_24
  ret i32 %empty_26
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @image_filter_Loop_1_proc(i32 %rows, i32 %cols, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V) {
newFuncRoot:
  %B_2 = alloca i8, align 1
  %G_2 = alloca i8, align 1
  %y_window_0_1 = alloca i8, align 1
  %y_window_0_2 = alloca i8, align 1
  %R_2 = alloca i8, align 1
  %y_window_1_1 = alloca i8, align 1
  %y_window_1_2 = alloca i8, align 1
  %y_window_2_2 = alloca i8, align 1
  %y_window_2_1 = alloca i8, align 1
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_2_V, [8 x i8]* @str77, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str78, [1 x i8]* @str78, [8 x i8]* @str77)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V, [8 x i8]* @str73, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str74, [1 x i8]* @str74, [8 x i8]* @str73)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @str69, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str70, [1 x i8]* @str70, [8 x i8]* @str69)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_2_V, [8 x i8]* @str65, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str66, [1 x i8]* @str66, [8 x i8]* @str65)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_1_V, [8 x i8]* @str61, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str62, [1 x i8]* @str62, [8 x i8]* @str61)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @str57, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str58, [1 x i8]* @str58, [8 x i8]* @str57)
  %cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rows)
  %line_buffer_0_0_val = alloca [1921 x i8], align 1
  %line_buffer_0_1_val = alloca [1921 x i8], align 1
  %line_buffer_0_2_val = alloca [1921 x i8], align 1
  %line_buffer_1_0_val = alloca [1921 x i8], align 1
  %line_buffer_1_1_val = alloca [1921 x i8], align 1
  %line_buffer_1_2_val = alloca [1921 x i8], align 1
  %tmp = trunc i32 %rows_read to i11
  %tmp_7 = add i11 %tmp, -1
  %tmp_15_cast = zext i11 %tmp_7 to i12
  %tmp_2 = trunc i32 %cols_read to i11
  %tmp_8 = add i11 %tmp_2, -1
  %tmp_16_cast = zext i11 %tmp_8 to i12
  %tmp_9 = add i11 %tmp_2, 1
  %tmp_10 = add i11 %tmp, 1
  %tmp_21 = trunc i32 %rows_read to i12
  %tmp_24 = trunc i32 %cols_read to i12
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %0, %newFuncRoot
  %row = phi i11 [ 0, %newFuncRoot ], [ %row_1, %0 ]
  %row_cast = zext i11 %row to i12
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 1081, i64 0)
  %exitcond1 = icmp eq i11 %row, %tmp_10
  %row_1 = add i11 %row, 1
  br i1 %exitcond1, label %.exitStub, label %2

; <label>:0                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1816, i32 %tmp_5)
  br label %.preheader

; <label>:1                                       ; preds = %._crit_edge5, %2
  %col = phi i11 [ 0, %2 ], [ %col_1, %._crit_edge5 ]
  %y_window_2_2_1 = load i8* %y_window_2_1, align 1
  %exitcond = icmp eq i11 %col, %tmp_9
  %col_1 = add i11 %col, 1
  br i1 %exitcond, label %0, label %3

; <label>:2                                       ; preds = %.preheader
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1816)
  %tmp_11 = icmp slt i12 %row_cast, %tmp_21
  %output_row = add i12 %row_cast, -1
  %tmp_12 = icmp eq i12 %output_row, 0
  %tmp_13 = icmp ne i11 %row, 0
  %tmp_s = icmp eq i12 %output_row, %tmp_15_cast
  br label %1

._crit_edge5:                                     ; preds = %._crit_edge4240, %"operator<<.exit"
  %y_window_0_2_1 = load i8* %y_window_0_1, align 1
  %y_window_1_2_1 = load i8* %y_window_1_1, align 1
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1817, i32 %tmp_6)
  store i8 %y_window_2_1_2, i8* %y_window_2_1, align 1
  store i8 %y_window_2_2_1, i8* %y_window_2_2, align 1
  store i8 %y_window_1_2_1, i8* %y_window_1_2, align 1
  store i8 %y_window_1_1_1, i8* %y_window_1_1, align 1
  store i8 %y_window_0_2_1, i8* %y_window_0_2, align 1
  store i8 %y_window_0_1_1, i8* %y_window_0_1, align 1
  br label %1

._crit_edge:                                      ; preds = %"operator>>.exit", %3
  %B_4 = load i8* %B_2, align 1
  %G_5 = load i8* %G_2, align 1
  %R_5 = load i8* %R_2, align 1
  %tmp_16 = zext i11 %col to i64
  %line_buffer_1_0_val_addr = getelementptr [1921 x i8]* %line_buffer_1_0_val, i64 0, i64 %tmp_16
  %R = load i8* %line_buffer_1_0_val_addr, align 1
  %line_buffer_1_1_val_addr = getelementptr [1921 x i8]* %line_buffer_1_1_val, i64 0, i64 %tmp_16
  %G = load i8* %line_buffer_1_1_val_addr, align 1
  %line_buffer_1_2_val_addr = getelementptr [1921 x i8]* %line_buffer_1_2_val, i64 0, i64 %tmp_16
  %B = load i8* %line_buffer_1_2_val_addr, align 1
  %p_shl1_i = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R, i6 0)
  %p_shl1_cast_i = zext i14 %p_shl1_i to i15
  %p_shl2_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R, i1 false)
  %p_shl2_cast_i_cast = zext i9 %p_shl2_i to i10
  %tmp_2_cast3_i_cast = zext i8 %G to i13
  %p_shl_i = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G, i7 0)
  %p_shl_cast_i = zext i15 %p_shl_i to i16
  %tmp_4_cast_i = zext i8 %B to i13
  %tmp_5_i = mul i13 %tmp_4_cast_i, 25
  %tmp1 = add i10 %p_shl2_cast_i_cast, 128
  %tmp55_cast = zext i10 %tmp1 to i15
  %tmp_6_i = add i15 %tmp55_cast, %p_shl1_cast_i
  %tmp_6_cast_i = zext i15 %tmp_6_i to i16
  %tmp2 = add i16 %p_shl_cast_i, %tmp_6_cast_i
  %tmp3 = add i13 %tmp_5_i, %tmp_2_cast3_i_cast
  %tmp57_cast = zext i13 %tmp3 to i16
  %tmp_8_i = add i16 %tmp57_cast, %tmp2
  %tmp_i = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i, i32 8, i32 15)
  %y_window_2_1_2 = add i8 %tmp_i, 16
  %line_buffer_0_0_val_addr = getelementptr [1921 x i8]* %line_buffer_0_0_val, i64 0, i64 %tmp_16
  %pix_val_0 = load i8* %line_buffer_0_0_val_addr, align 1
  store i8 %pix_val_0, i8* %line_buffer_1_0_val_addr, align 1
  %line_buffer_0_1_val_addr = getelementptr [1921 x i8]* %line_buffer_0_1_val, i64 0, i64 %tmp_16
  %pix_val_1 = load i8* %line_buffer_0_1_val_addr, align 1
  store i8 %pix_val_1, i8* %line_buffer_1_1_val_addr, align 1
  %line_buffer_0_2_val_addr = getelementptr [1921 x i8]* %line_buffer_0_2_val, i64 0, i64 %tmp_16
  %pix_val_2 = load i8* %line_buffer_0_2_val_addr, align 1
  store i8 %pix_val_2, i8* %line_buffer_1_2_val_addr, align 1
  %p_shl1_i4 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %pix_val_0, i6 0)
  %p_shl1_cast_i5 = zext i14 %p_shl1_i4 to i15
  %p_shl2_i6 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %pix_val_0, i1 false)
  %p_shl2_cast_i7_cast = zext i9 %p_shl2_i6 to i10
  %tmp_2_cast3_i9_cast = zext i8 %pix_val_1 to i13
  %p_shl_i1 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %pix_val_1, i7 0)
  %p_shl_cast_i1 = zext i15 %p_shl_i1 to i16
  %tmp_4_cast_i1 = zext i8 %pix_val_2 to i13
  %tmp_5_i1 = mul i13 %tmp_4_cast_i1, 25
  %tmp4 = add i10 %p_shl2_cast_i7_cast, 128
  %tmp58_cast = zext i10 %tmp4 to i15
  %tmp_6_i1 = add i15 %tmp58_cast, %p_shl1_cast_i5
  %tmp_6_cast_i1 = zext i15 %tmp_6_i1 to i16
  %tmp5 = add i16 %p_shl_cast_i1, %tmp_6_cast_i1
  %tmp6 = add i13 %tmp_5_i1, %tmp_2_cast3_i9_cast
  %tmp60_cast = zext i13 %tmp6 to i16
  %tmp_8_i1 = add i16 %tmp60_cast, %tmp5
  %tmp_i1 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i1, i32 8, i32 15)
  %y_window_1_1_1 = add i8 %tmp_i1, 16
  store i8 %R_5, i8* %line_buffer_0_0_val_addr, align 1
  store i8 %G_5, i8* %line_buffer_0_1_val_addr, align 1
  store i8 %B_4, i8* %line_buffer_0_2_val_addr, align 1
  %p_shl1_i1 = call i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8 %R_5, i6 0)
  %p_shl1_cast_i1 = zext i14 %p_shl1_i1 to i15
  %p_shl2_i1 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %R_5, i1 false)
  %p_shl2_cast_i29_cast = zext i9 %p_shl2_i1 to i10
  %tmp_2_cast3_i31_cast = zext i8 %G_5 to i13
  %p_shl_i2 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %G_5, i7 0)
  %p_shl_cast_i2 = zext i15 %p_shl_i2 to i16
  %tmp_4_cast_i2 = zext i8 %B_4 to i13
  %tmp_5_i2 = mul i13 %tmp_4_cast_i2, 25
  %tmp7 = add i10 %p_shl2_cast_i29_cast, 128
  %tmp61_cast = zext i10 %tmp7 to i15
  %tmp_6_i2 = add i15 %tmp61_cast, %p_shl1_cast_i1
  %tmp_6_cast_i2 = zext i15 %tmp_6_i2 to i16
  %tmp8 = add i16 %p_shl_cast_i2, %tmp_6_cast_i2
  %tmp9 = add i13 %tmp_5_i2, %tmp_2_cast3_i31_cast
  %tmp63_cast = zext i13 %tmp9 to i16
  %tmp_8_i2 = add i16 %tmp63_cast, %tmp8
  %tmp_i2 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_8_i2, i32 8, i32 15)
  %y_window_0_1_1 = add i8 %tmp_i2, 16
  %output_col = add i12 %col_cast, -1
  %tmp_17 = icmp eq i12 %output_col, 0
  %tmp_18 = icmp eq i12 %output_col, %tmp_16_cast
  %tmp10 = or i1 %tmp_12, %tmp_17
  %tmp11 = or i1 %tmp_s, %tmp_18
  %or_cond3 = or i1 %tmp11, %tmp10
  br i1 %or_cond3, label %._crit_edge4240, label %4

; <label>:3                                       ; preds = %1
  %col_cast = zext i11 %col to i12
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 1921, i64 0)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1817)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1808) nounwind
  %tmp_14 = icmp slt i12 %col_cast, %tmp_24
  %or_cond = and i1 %tmp_11, %tmp_14
  br i1 %or_cond, label %"operator>>.exit", label %._crit_edge

"operator>>.exit":                                ; preds = %3
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1808) nounwind
  %scl_val_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_0_data_stream_0_V)
  %scl_val_1 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_0_data_stream_1_V)
  %p_val_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_0_data_stream_2_V)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_15)
  store i8 %scl_val_0, i8* %R_2, align 1
  store i8 %scl_val_1, i8* %G_2, align 1
  store i8 %p_val_2, i8* %B_2, align 1
  br label %._crit_edge

; <label>:4                                       ; preds = %._crit_edge
  %y_window_0_1_load = load i8* %y_window_0_1, align 1
  %y_window_0_2_load = load i8* %y_window_0_2, align 1
  %y_window_1_2_load = load i8* %y_window_1_2, align 1
  %y_window_2_2_load = load i8* %y_window_2_2, align 1
  %tmp_19_0_cast9_i_cast = zext i8 %y_window_0_1_1 to i9
  %tmp_23_0_1_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %y_window_0_1_load, i1 false)
  %tmp_23_0_1_cast_i = zext i9 %tmp_23_0_1_i to i10
  %tmp_19_0_2_cast8_i_cast = zext i8 %y_window_0_2_load to i9
  %x_weight_2_0_2_i = sub i9 %tmp_19_0_2_cast8_i_cast, %tmp_19_0_cast9_i_cast
  %x_weight_2_0_2_cast_i = sext i9 %x_weight_2_0_2_i to i11
  %p_shl8_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %y_window_1_1_1, i1 false)
  %p_shl8_cast_i = zext i9 %p_shl8_i to i11
  %x_weight_2_1_1_i = sub i11 %x_weight_2_0_2_cast_i, %p_shl8_cast_i
  %tmp_21_1_2_i = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %y_window_1_2_load, i1 false)
  %tmp_21_1_2_cast_i = zext i9 %tmp_21_1_2_i to i11
  %x_weight_2_1_2_i = add i11 %x_weight_2_1_1_i, %tmp_21_1_2_cast_i
  %tmp12 = add i9 %tmp_19_0_cast9_i_cast, %tmp_19_0_2_cast8_i_cast
  %tmp66_cast = zext i9 %tmp12 to i10
  %y_weight_2_1_2_i = add i10 %tmp66_cast, %tmp_23_0_1_cast_i
  %y_weight_2_1_2_cast_i = zext i10 %y_weight_2_1_2_i to i11
  %tmp_19_2_cast_i = zext i8 %y_window_2_1_2 to i11
  %x_weight_2_2_i = sub i11 %x_weight_2_1_2_i, %tmp_19_2_cast_i
  %y_weight_2_2_i = sub i11 %y_weight_2_1_2_cast_i, %tmp_19_2_cast_i
  %p_shl_i3 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %y_window_2_2_1, i1 false)
  %p_shl_cast_i3 = zext i9 %p_shl_i3 to i11
  %y_weight_2_2_1_i = sub i11 %y_weight_2_2_i, %p_shl_cast_i3
  %tmp_19_2_2_cast_i = zext i8 %y_window_2_2_load to i11
  %x_weight_2_2_2_i = add i11 %x_weight_2_2_i, %tmp_19_2_2_cast_i
  %y_weight_2_2_2_i = sub i11 %y_weight_2_2_1_i, %tmp_19_2_2_cast_i
  %tmp_i_29 = icmp sgt i11 %x_weight_2_2_2_i, 0
  %tmp_28 = trunc i11 %x_weight_2_2_2_i to i8
  %tmp_22 = sub i8 0, %tmp_28
  %tmp_23 = select i1 %tmp_i_29, i8 %tmp_28, i8 %tmp_22
  %tmp_11_i = icmp sgt i11 %y_weight_2_2_2_i, 0
  %tmp_29 = trunc i11 %y_weight_2_2_2_i to i8
  %tmp_25 = sub i8 0, %tmp_29
  %tmp_26 = select i1 %tmp_11_i, i8 %tmp_29, i8 %tmp_25
  %edge_weight_i = add i8 %tmp_26, %tmp_23
  %edge_val = xor i8 %edge_weight_i, -1
  %tmp_15_i = icmp ult i8 %edge_weight_i, 55
  %tmp_17_i = icmp ugt i8 %edge_weight_i, -51
  %not_tmp_15_i = xor i1 %tmp_15_i, true
  %p_i_cast = select i1 %not_tmp_15_i, i8 -1, i8 0
  %tmp_27 = or i1 %tmp_15_i, %tmp_17_i
  %edge_val_1 = select i1 %tmp_27, i8 %p_i_cast, i8 %edge_val
  br label %._crit_edge4240

"operator<<.exit":                                ; preds = %._crit_edge4240
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1826)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1808) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_1_data_stream_0_V, i8 %tmp_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_1_data_stream_1_V, i8 %tmp_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_1_data_stream_2_V, i8 %tmp_4)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1826, i32 %tmp_20)
  br label %._crit_edge5

._crit_edge4240:                                  ; preds = %4, %._crit_edge
  %edge_val1 = phi i8 [ %edge_val_1, %4 ], [ 0, %._crit_edge ]
  %tmp_cast_i2 = zext i8 %pix_val_2 to i9
  %tmp_cast_i = zext i8 %pix_val_1 to i9
  %tmp_1_cast_i = zext i8 %pix_val_0 to i10
  %tmp_2_i3 = add i9 %tmp_cast_i, %tmp_cast_i2
  %tmp_2_cast_i3 = zext i9 %tmp_2_i3 to i10
  %tmp_3_i = add i10 %tmp_2_cast_i3, %tmp_1_cast_i
  %zext_cast = zext i10 %tmp_3_i to i22
  %mul = mul i22 %zext_cast, 1366
  %B_cast_i = call i9 @_ssdm_op_PartSelect.i9.i22.i32.i32(i22 %mul, i32 12, i32 20)
  %R_3 = add i9 %B_cast_i, 60
  %G_3 = add i9 %B_cast_i, 34
  %sepia_val_0 = call i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22 %mul, i32 12, i32 19)
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %R_3, i32 8)
  %tmp_31 = trunc i9 %R_3 to i8
  %sepia_val_2 = select i1 %tmp_30, i8 -1, i8 %tmp_31
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %G_3, i32 8)
  %tmp_33 = trunc i9 %G_3 to i8
  %sepia_val_1 = select i1 %tmp_32, i8 -1, i8 %tmp_33
  %tmp_1 = add i8 %sepia_val_0, %edge_val1
  %tmp_3 = add i8 %sepia_val_1, %edge_val1
  %tmp_4 = add i8 %sepia_val_2, %edge_val1
  %tmp_19 = icmp ne i11 %col, 0
  %or_cond2 = and i1 %tmp_13, %tmp_19
  br i1 %or_cond2, label %"operator<<.exit", label %._crit_edge5
}

define internal fastcc void @image_filter_AXIvideo2Mat(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str65, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str66, [1 x i8]* @str66, [8 x i8]* @str65)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str61, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str62, [1 x i8]* @str62, [8 x i8]* @str61)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str57, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str58, [1 x i8]* @str58, [8 x i8]* @str57)
  %img_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  br label %0

; <label>:0                                       ; preds = %0, %.critedge
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1830) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1830)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1808) nounwind
  %empty = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 4
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1830, i32 %tmp)
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
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1821) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1821)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1808) nounwind
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
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1822) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1822)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1808) nounwind
  %brmerge = or i1 %sof_1_load, %eol
  %not_sof_2 = xor i1 %sof_1_load, true
  %axi_last_V_1_mux = or i1 %eol_1, %not_sof_2
  br i1 %brmerge, label %._crit_edge, label %4

; <label>:4                                       ; preds = %3
  %empty_32 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_32, 0
  %tmp_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_32, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  %axi_last_V_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %eol_1, %3 ]
  %p_Val2_s = phi i32 [ %tmp_data_V_1, %4 ], [ %axi_data_V_1, %3 ]
  %eol_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %axi_last_V_1_mux, %3 ]
  %tmp_34 = trunc i32 %p_Val2_s to i8
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 8, i32 15)
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 16, i32 23)
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1826)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1808) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp_34)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V, i8 %tmp_7)
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1826, i32 %tmp_23)
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1822, i32 %tmp_21)
  store i1 false, i1* %sof_1, align 1
  br label %2

.preheader:                                       ; preds = %2, %5
  %axi_last_V_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol_1, %2 ]
  %axi_data_V_3 = phi i32 [ %tmp_data_V_2, %5 ], [ %axi_data_V_1, %2 ]
  %eol_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol, %2 ]
  br i1 %eol_3, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1831) nounwind
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1831)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1808) nounwind
  %empty_35 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_35, 0
  %tmp_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_35, 4
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1831, i32 %tmp_22)
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1821, i32 %tmp_s)
  br label %.preheader150

; <label>:7                                       ; preds = %.preheader150
  ret void
}

define internal fastcc void @image_filter_Mat2AXIvideo(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
  %tmp_user_V = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str77, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str78, [1 x i8]* @str78, [8 x i8]* @str77)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str73, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str74, [1 x i8]* @str74, [8 x i8]* @str73)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str69, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str70, [1 x i8]* @str70, [8 x i8]* @str69)
  %img_cols_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_2 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  %tmp_cast = zext i12 %img_cols_V_read_2 to i13
  %op2_assign = add i13 %tmp_cast, -1
  store i1 true, i1* %tmp_user_V, align 1
  br label %1

; <label>:1                                       ; preds = %4, %0
  %p_s = phi i12 [ 0, %0 ], [ %i_V, %4 ]
  %exitcond3 = icmp eq i12 %p_s, %img_rows_V_read_2
  %i_V = add i12 %p_s, 1
  br i1 %exitcond3, label %5, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1821) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1821)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1808) nounwind
  br label %3

; <label>:3                                       ; preds = %"operator>>.exit", %2
  %p_3 = phi i12 [ 0, %2 ], [ %j_V, %"operator>>.exit" ]
  %exitcond4 = icmp eq i12 %p_3, %img_cols_V_read_2
  %j_V = add i12 %p_3, 1
  br i1 %exitcond4, label %4, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %3
  %tmp_user_V_load = load i1* %tmp_user_V, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1822) nounwind
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1822)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1808) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1808) nounwind
  %tmp_cast_38 = zext i12 %p_3 to i13
  %axi_last_V = icmp eq i13 %tmp_cast_38, %op2_assign
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1808) nounwind
  %tmp_35 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_36 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1828, i32 %tmp_25)
  %tmp_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp, i8 %tmp_36, i8 %tmp_35)
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %tmp_data_V, i4 -1, i4 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1822, i32 %tmp_24)
  store i1 false, i1* %tmp_user_V, align 1
  br label %3

; <label>:4                                       ; preds = %3
  %empty_40 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1821, i32 %tmp_s)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc { i12, i12, i12, i12 } @image_filter_Block__proc(i32 %rows, i32 %cols) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1808, [10 x i8]* @p_str1809, [1 x i8]* @p_str1808, i32 -1, [1 x i8]* @p_str1808, [1 x i8]* @p_str1808, [24 x i8]* @p_str1810)
  %cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rows)
  %img_0_rows_V = trunc i32 %rows_read to i12
  %img_0_cols_V = trunc i32 %cols_read to i12
  %mrv = insertvalue { i12, i12, i12, i12 } undef, i12 %img_0_rows_V, 0
  %mrv_1 = insertvalue { i12, i12, i12, i12 } %mrv, i12 %img_0_cols_V, 1
  %mrv_2 = insertvalue { i12, i12, i12, i12 } %mrv_1, i12 %img_0_rows_V, 2
  %mrv_3 = insertvalue { i12, i12, i12, i12 } %mrv_2, i12 %img_0_cols_V, 3
  ret { i12, i12, i12, i12 } %mrv_3
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_41 = trunc i16 %empty to i8
  ret i8 %empty_41
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15
  %empty_42 = zext i7 %1 to i15
  %empty_43 = shl i15 %empty, 7
  %empty_44 = or i15 %empty_43, %empty_42
  ret i15 %empty_44
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_45 = zext i1 %1 to i9
  %empty_46 = shl i9 %empty, 1
  %empty_47 = or i9 %empty_46, %empty_45
  ret i9 %empty_47
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i8.i6(i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %0 to i14
  %empty_48 = zext i6 %1 to i14
  %empty_49 = shl i14 %empty, 6
  %empty_50 = or i14 %empty_49, %empty_48
  ret i14 %empty_50
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

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0
  %empty_51 = load i4* %1
  %empty_52 = load i4* %2
  %empty_53 = load i1* %3
  %empty_54 = load i1* %4
  %empty_55 = load i1* %5
  %empty_56 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_51, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_52, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_53, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_54, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_55, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_56, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i8 @_ssdm_op_PartSelect.i8.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_57 = trunc i22 %empty to i8
  ret i8 %empty_57
}

define weak i9 @_ssdm_op_PartSelect.i9.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_58 = trunc i22 %empty to i9
  ret i9 %empty_58
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_59 = shl i9 1, %empty
  %empty_60 = and i9 %0, %empty_59
  %empty_61 = icmp ne i9 %empty_60, 0
  ret i1 %empty_61
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

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
