; ModuleID = '/home/alok/githum/Zedboard/Learning/opencv_hls/xapp1167_vivado/sw/median/prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1805 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1807 = private unnamed_addr constant [10 x i8] c"AXI_SLAVE\00", align 1
@p_str1808 = private unnamed_addr constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1
@p_str1809 = private unnamed_addr constant [10 x i8] c"ap_stable\00", align 1
@p_str1813 = private unnamed_addr constant [13 x i8] c"hls_label_37\00", align 1
@p_str1814 = private unnamed_addr constant [13 x i8] c"hls_label_38\00", align 1
@p_str1818 = private unnamed_addr constant [12 x i8] c"loop_height\00", align 1
@p_str1819 = private unnamed_addr constant [11 x i8] c"loop_width\00", align 1
@p_str1823 = private unnamed_addr constant [13 x i8] c"hls_label_20\00", align 1
@p_str1825 = private unnamed_addr constant [13 x i8] c"hls_label_18\00", align 1
@p_str1828 = private unnamed_addr constant [20 x i8] c"loop_wait_for_start\00", align 1
@p_str1829 = private unnamed_addr constant [18 x i8] c"loop_wait_for_eol\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [13 x i8] c"image_filter\00"
@str38 = internal constant [23 x i8] c"img_0.data_stream[0].V\00"
@str39 = internal constant [1 x i8] zeroinitializer
@str40 = internal constant [8 x i8] c"ap_fifo\00"
@str41 = internal constant [1 x i8] zeroinitializer
@str42 = internal constant [23 x i8] c"img_0.data_stream[1].V\00"
@str43 = internal constant [1 x i8] zeroinitializer
@str44 = internal constant [8 x i8] c"ap_fifo\00"
@str45 = internal constant [1 x i8] zeroinitializer
@str46 = internal constant [23 x i8] c"img_0.data_stream[2].V\00"
@str47 = internal constant [1 x i8] zeroinitializer
@str48 = internal constant [8 x i8] c"ap_fifo\00"
@str49 = internal constant [1 x i8] zeroinitializer
@str50 = internal constant [23 x i8] c"img_1.data_stream[0].V\00"
@str51 = internal constant [1 x i8] zeroinitializer
@str52 = internal constant [8 x i8] c"ap_fifo\00"
@str53 = internal constant [1 x i8] zeroinitializer
@str54 = internal constant [23 x i8] c"img_1.data_stream[1].V\00"
@str55 = internal constant [1 x i8] zeroinitializer
@str56 = internal constant [8 x i8] c"ap_fifo\00"
@str57 = internal constant [1 x i8] zeroinitializer
@str58 = internal constant [23 x i8] c"img_1.data_stream[2].V\00"
@str59 = internal constant [1 x i8] zeroinitializer
@str60 = internal constant [8 x i8] c"ap_fifo\00"
@str61 = internal constant [1 x i8] zeroinitializer

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
  %img_0_data_stream_0_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str38, i32 1, [1 x i8]* @str39, [1 x i8]* @str39, i32 1, i32 1, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @str40, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str41, [1 x i8]* @str41, [8 x i8]* @str40)
  %img_0_data_stream_1_V = alloca i8, align 1
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str42, i32 1, [1 x i8]* @str43, [1 x i8]* @str43, i32 1, i32 1, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_1_V, [8 x i8]* @str44, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str45, [1 x i8]* @str45, [8 x i8]* @str44)
  %img_0_data_stream_2_V = alloca i8, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str46, i32 1, [1 x i8]* @str47, [1 x i8]* @str47, i32 1, i32 1, i8* %img_0_data_stream_2_V, i8* %img_0_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_2_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str49, [1 x i8]* @str49, [8 x i8]* @str48)
  %img_1_data_stream_0_V = alloca i8, align 1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str50, i32 1, [1 x i8]* @str51, [1 x i8]* @str51, i32 1, i32 1, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_0_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @str52, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str53, [1 x i8]* @str53, [8 x i8]* @str52)
  %img_1_data_stream_1_V = alloca i8, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str54, i32 1, [1 x i8]* @str55, [1 x i8]* @str55, i32 1, i32 1, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_1_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V, [8 x i8]* @str56, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str57, [1 x i8]* @str57, [8 x i8]* @str56)
  %img_1_data_stream_2_V = alloca i8, align 1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str58, i32 1, [1 x i8]* @str59, [1 x i8]* @str59, i32 1, i32 1, i8* %img_1_data_stream_2_V, i8* %img_1_data_stream_2_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_2_V, [8 x i8]* @str60, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str61, [1 x i8]* @str61, [8 x i8]* @str60)
  %buffer_val_0 = alloca [3 x i8], align 1
  %buffer_val_1 = alloca [3 x i8], align 1
  %buffer_val_2 = alloca [3 x i8], align 1
  call void (...)* @_ssdm_op_SpecInterface(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecInterface(i32 %rows, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %cols, [10 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  %call_ret = call fastcc { i12, i12, i12, i12 } @image_filter_Block__proc(i32 %rows_read, i32 %cols_read)
  %img_0_rows_V_channel = extractvalue { i12, i12, i12, i12 } %call_ret, 0
  %img_0_cols_V_channel = extractvalue { i12, i12, i12, i12 } %call_ret, 1
  %img_1_rows_V = extractvalue { i12, i12, i12, i12 } %call_ret, 2
  %img_1_cols_V = extractvalue { i12, i12, i12, i12 } %call_ret, 3
  call fastcc void @image_filter_AXIvideo2Mat(i32* %INPUT_STREAM_V_data_V, i4* %INPUT_STREAM_V_keep_V, i4* %INPUT_STREAM_V_strb_V, i1* %INPUT_STREAM_V_user_V, i1* %INPUT_STREAM_V_last_V, i1* %INPUT_STREAM_V_id_V, i1* %INPUT_STREAM_V_dest_V, i12 %img_0_rows_V_channel, i12 %img_0_cols_V_channel, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V)
  call fastcc void @image_filter_Loop_1_proc(i32 %rows_read, i32 %cols_read, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, [3 x i8]* %buffer_val_0, [3 x i8]* %buffer_val_1, [3 x i8]* %buffer_val_2)
  call fastcc void @image_filter_Mat2AXIvideo(i12 %img_1_rows_V, i12 %img_1_cols_V, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i32* %OUTPUT_STREAM_V_data_V, i4* %OUTPUT_STREAM_V_keep_V, i4* %OUTPUT_STREAM_V_strb_V, i1* %OUTPUT_STREAM_V_user_V, i1* %OUTPUT_STREAM_V_last_V, i1* %OUTPUT_STREAM_V_id_V, i1* %OUTPUT_STREAM_V_dest_V)
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

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
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
  %empty_13 = trunc i32 %empty to i8
  ret i8 %empty_13
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_14 = zext i8 %3 to i16
  %empty_15 = shl i16 %empty, 8
  %empty_16 = or i16 %empty_15, %empty_14
  %empty_17 = zext i8 %1 to i24
  %empty_18 = zext i16 %empty_16 to i24
  %empty_19 = shl i24 %empty_17, 16
  %empty_20 = or i24 %empty_19, %empty_18
  %empty_21 = zext i8 %0 to i32
  %empty_22 = zext i24 %empty_20 to i32
  %empty_23 = shl i32 %empty_21, 24
  %empty_24 = or i32 %empty_23, %empty_22
  ret i32 %empty_24
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @image_filter_Loop_1_proc(i32 %rows, i32 %cols, i8* %img_1_data_stream_0_V, i8* %img_1_data_stream_1_V, i8* %img_1_data_stream_2_V, i8* %img_0_data_stream_0_V, i8* %img_0_data_stream_1_V, i8* %img_0_data_stream_2_V, [3 x i8]* nocapture %buffer_val_0, [3 x i8]* nocapture %buffer_val_1, [3 x i8]* nocapture %buffer_val_2) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_2_V, [8 x i8]* @str60, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str61, [1 x i8]* @str61, [8 x i8]* @str60)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_1_V, [8 x i8]* @str56, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str57, [1 x i8]* @str57, [8 x i8]* @str56)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_1_data_stream_0_V, [8 x i8]* @str52, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str53, [1 x i8]* @str53, [8 x i8]* @str52)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_2_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str49, [1 x i8]* @str49, [8 x i8]* @str48)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_1_V, [8 x i8]* @str44, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str45, [1 x i8]* @str45, [8 x i8]* @str44)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_0_data_stream_0_V, [8 x i8]* @str40, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str41, [1 x i8]* @str41, [8 x i8]* @str40)
  %cols_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %cols)
  %rows_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %rows)
  %tmp = trunc i32 %rows_read to i12
  %tmp_2 = trunc i32 %cols_read to i12
  %buffer_val_0_addr = getelementptr [3 x i8]* %buffer_val_0, i64 0, i64 1
  %buffer_val_0_addr_1 = getelementptr [3 x i8]* %buffer_val_0, i64 0, i64 2
  %buffer_val_1_addr = getelementptr [3 x i8]* %buffer_val_1, i64 0, i64 1
  %buffer_val_1_addr_1 = getelementptr [3 x i8]* %buffer_val_1, i64 0, i64 2
  %buffer_val_2_addr = getelementptr [3 x i8]* %buffer_val_2, i64 0, i64 1
  %buffer_val_2_addr_1 = getelementptr [3 x i8]* %buffer_val_2, i64 0, i64 2
  %buffer_val_0_addr_2 = getelementptr [3 x i8]* %buffer_val_0, i64 0, i64 0
  %buffer_val_1_addr_2 = getelementptr [3 x i8]* %buffer_val_1, i64 0, i64 0
  %buffer_val_2_addr_2 = getelementptr [3 x i8]* %buffer_val_2, i64 0, i64 0
  br label %.preheader2

.exitStub:                                        ; preds = %.preheader2
  ret void

.preheader2:                                      ; preds = %0, %newFuncRoot
  %row = phi i11 [ %row_1, %0 ], [ 0, %newFuncRoot ]
  %row_cast = zext i11 %row to i12
  %exitcond2 = icmp eq i12 %row_cast, %tmp
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1080, i64 0)
  %row_1 = add i11 %row, 1
  br i1 %exitcond2, label %.exitStub, label %2

; <label>:0                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1813, i32 %tmp_4)
  br label %.preheader2

; <label>:1                                       ; preds = %"operator>>.exit_ifconv", %2
  %col = phi i11 [ 0, %2 ], [ %col_1, %"operator>>.exit_ifconv" ]
  %col_cast = zext i11 %col to i12
  %exitcond1 = icmp eq i12 %col_cast, %tmp_2
  %col_1 = add i11 %col, 1
  br i1 %exitcond1, label %0, label %"operator>>.exit_ifconv"

; <label>:2                                       ; preds = %.preheader2
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1813)
  br label %1

"operator>>.exit_ifconv":                         ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1920, i64 0)
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1814)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1825)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %scl_val_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_0_data_stream_0_V)
  %scl_val_1 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_0_data_stream_1_V)
  %p_val_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_0_data_stream_2_V)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1825, i32 %tmp_8)
  %buffer_val_0_load = load i8* %buffer_val_0_addr, align 1
  store i8 %buffer_val_0_load, i8* %buffer_val_0_addr_1, align 1
  %buffer_val_1_load = load i8* %buffer_val_1_addr, align 1
  store i8 %buffer_val_1_load, i8* %buffer_val_1_addr_1, align 1
  %buffer_val_2_load = load i8* %buffer_val_2_addr, align 1
  store i8 %buffer_val_2_load, i8* %buffer_val_2_addr_1, align 1
  %buffer_val_0_load_1 = load i8* %buffer_val_0_addr_2, align 1
  store i8 %buffer_val_0_load_1, i8* %buffer_val_0_addr, align 1
  %buffer_val_1_load_1 = load i8* %buffer_val_1_addr_2, align 1
  store i8 %buffer_val_1_load_1, i8* %buffer_val_1_addr, align 1
  %buffer_val_2_load_1 = load i8* %buffer_val_2_addr_2, align 1
  store i8 %buffer_val_2_load_1, i8* %buffer_val_2_addr, align 1
  store i8 %scl_val_0, i8* %buffer_val_0_addr_2, align 1
  store i8 %scl_val_1, i8* %buffer_val_1_addr_2, align 1
  store i8 %p_val_2, i8* %buffer_val_2_addr_2, align 1
  %tmp_3 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %col, i32 1, i32 10)
  %icmp = icmp ne i10 %tmp_3, 0
  %c = icmp ugt i8 %buffer_val_0_load_1, %scl_val_0
  %ult = icmp ult i8 %buffer_val_0_load_1, %buffer_val_0_load
  %rev = xor i1 %ult, true
  %c_0_not = xor i1 %c, true
  %brmerge = or i1 %rev, %c_0_not
  %ult1 = icmp ult i8 %scl_val_0, %buffer_val_0_load
  %rev1 = xor i1 %ult1, true
  %brmerge1 = or i1 %rev1, %c
  %buffer_val_0_load_scl_val_0 = select i1 %brmerge1, i8 %buffer_val_0_load, i8 %scl_val_0
  %p_val_0_1 = select i1 %brmerge, i8 %buffer_val_0_load_scl_val_0, i8 %buffer_val_0_load_1
  %c_1 = icmp ugt i8 %buffer_val_1_load_1, %scl_val_1
  %ult2 = icmp ult i8 %buffer_val_1_load_1, %buffer_val_1_load
  %rev2 = xor i1 %ult2, true
  %c_0_not_1 = xor i1 %c_1, true
  %brmerge_1 = or i1 %rev2, %c_0_not_1
  %ult3 = icmp ult i8 %scl_val_1, %buffer_val_1_load
  %rev3 = xor i1 %ult3, true
  %brmerge1_1 = or i1 %rev3, %c_1
  %buffer_val_1_load_scl_val_1 = select i1 %brmerge1_1, i8 %buffer_val_1_load, i8 %scl_val_1
  %p_val_1_1 = select i1 %brmerge_1, i8 %buffer_val_1_load_scl_val_1, i8 %buffer_val_1_load_1
  %c_2 = icmp ugt i8 %buffer_val_2_load_1, %p_val_2
  %ult4 = icmp ult i8 %buffer_val_2_load_1, %buffer_val_2_load
  %rev4 = xor i1 %ult4, true
  %c_0_not_2 = xor i1 %c_2, true
  %brmerge_2 = or i1 %rev4, %c_0_not_2
  %ult5 = icmp ult i8 %p_val_2, %buffer_val_2_load
  %rev5 = xor i1 %ult5, true
  %brmerge1_2 = or i1 %rev5, %c_2
  %buffer_val_2_load_p_val_2 = select i1 %brmerge1_2, i8 %buffer_val_2_load, i8 %p_val_2
  %p_val_0_2 = select i1 %icmp, i8 %p_val_0_1, i8 %scl_val_0
  %sel_tmp2 = and i1 %icmp, %brmerge_2
  %p_val_0 = select i1 %sel_tmp2, i8 %p_val_0_1, i8 %p_val_0_2
  %p_val_1_2 = select i1 %icmp, i8 %p_val_1_1, i8 %scl_val_1
  %p_val_1 = select i1 %sel_tmp2, i8 %p_val_1_1, i8 %p_val_1_2
  %sel_tmp9 = select i1 %icmp, i8 %buffer_val_2_load_1, i8 %p_val_2
  %tmp_6 = select i1 %sel_tmp2, i8 %buffer_val_2_load_p_val_2, i8 %sel_tmp9
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1823)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_1_data_stream_0_V, i8 %p_val_0)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_1_data_stream_1_V, i8 %p_val_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_1_data_stream_2_V, i8 %tmp_6)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1823, i32 %tmp_1)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1814, i32 %tmp_5)
  br label %1
}

define internal fastcc void @image_filter_AXIvideo2Mat(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str48, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str49, [1 x i8]* @str49, [8 x i8]* @str48)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str44, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str45, [1 x i8]* @str45, [8 x i8]* @str44)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str40, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str41, [1 x i8]* @str41, [8 x i8]* @str40)
  %img_cols_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_cols_V_read)
  %img_rows_V_read_1 = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %img_rows_V_read)
  br label %0

; <label>:0                                       ; preds = %0, %.critedge
  call void (...)* @_ssdm_op_SpecLoopName([20 x i8]* @p_str1828) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([20 x i8]* @p_str1828)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 0
  %tmp_user_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty, 4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([20 x i8]* @p_str1828, i32 %tmp)
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
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1818) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1818)
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
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1819) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1819)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %brmerge = or i1 %sof_1_load, %eol
  %not_sof_2 = xor i1 %sof_1_load, true
  %axi_last_V_1_mux = or i1 %eol_1, %not_sof_2
  br i1 %brmerge, label %._crit_edge, label %4

; <label>:4                                       ; preds = %3
  %empty_29 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_29, 0
  %tmp_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_29, 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %3
  %axi_last_V_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %eol_1, %3 ]
  %p_Val2_s = phi i32 [ %tmp_data_V_1, %4 ], [ %axi_data_V_1, %3 ]
  %eol_2 = phi i1 [ %tmp_last_V_1, %4 ], [ %axi_last_V_1_mux, %3 ]
  %tmp_10 = trunc i32 %p_Val2_s to i8
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 8, i32 15)
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 16, i32 23)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1823)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V, i8 %tmp_10)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V, i8 %tmp_5)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V, i8 %tmp_6)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1823, i32 %tmp_7)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1819, i32 %tmp_2)
  store i1 false, i1* %sof_1, align 1
  br label %2

.preheader:                                       ; preds = %2, %5
  %axi_last_V_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol_1, %2 ]
  %axi_data_V_3 = phi i32 [ %tmp_data_V_2, %5 ], [ %axi_data_V_1, %2 ]
  %eol_3 = phi i1 [ %tmp_last_V_2, %5 ], [ %eol, %2 ]
  br i1 %eol_3, label %6, label %5

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1829) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1829)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_32 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V)
  %tmp_data_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_32, 0
  %tmp_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_32, 4
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1829, i32 %tmp_3)
  br label %.preheader

; <label>:6                                       ; preds = %.preheader
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1818, i32 %tmp_s)
  br label %.preheader150

; <label>:7                                       ; preds = %.preheader150
  ret void
}

define internal fastcc void @image_filter_Mat2AXIvideo(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
  %tmp_user_V = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecInterface(i1* %AXI_video_strm_V_dest_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_user_V, i4* %AXI_video_strm_V_strb_V, i4* %AXI_video_strm_V_keep_V, i32* %AXI_video_strm_V_data_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_2_V, [8 x i8]* @str60, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str61, [1 x i8]* @str61, [8 x i8]* @str60)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_1_V, [8 x i8]* @str56, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str57, [1 x i8]* @str57, [8 x i8]* @str56)
  call void (...)* @_ssdm_op_SpecInterface(i8* %img_data_stream_0_V, [8 x i8]* @str52, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str53, [1 x i8]* @str53, [8 x i8]* @str52)
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
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str1818) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1818)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str1806) nounwind
  br label %3

; <label>:3                                       ; preds = %"operator>>.exit", %2
  %p_3 = phi i12 [ 0, %2 ], [ %j_V, %"operator>>.exit" ]
  %exitcond4 = icmp eq i12 %p_3, %img_cols_V_read_2
  %j_V = add i12 %p_3, 1
  br i1 %exitcond4, label %4, label %"operator>>.exit"

"operator>>.exit":                                ; preds = %3
  %tmp_user_V_load = load i1* %tmp_user_V, align 1
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1819) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1819)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_cast_35 = zext i12 %p_3 to i13
  %axi_last_V = icmp eq i13 %tmp_cast_35, %op2_assign
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1825)
  call void (...)* @_ssdm_op_SpecProtocol(i32 0, [1 x i8]* @p_str1806) nounwind
  %tmp_11 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_0_V)
  %tmp_12 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_1_V)
  %tmp = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %img_data_stream_2_V)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1825, i32 %tmp_9)
  %tmp_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp, i8 %tmp_12, i8 %tmp_11)
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %tmp_data_V, i4 -1, i4 undef, i1 %tmp_user_V_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1819, i32 %tmp_8)
  store i1 false, i1* %tmp_user_V, align 1
  br label %3

; <label>:4                                       ; preds = %3
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1818, i32 %tmp_s)
  br label %1

; <label>:5                                       ; preds = %1
  ret void
}

define internal fastcc { i12, i12, i12, i12 } @image_filter_Block__proc(i32 %rows, i32 %cols) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str1806, [10 x i8]* @p_str1807, [1 x i8]* @p_str1806, i32 -1, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [24 x i8]* @p_str1808)
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
  %empty_38 = load i4* %1
  %empty_39 = load i4* %2
  %empty_40 = load i1* %3
  %empty_41 = load i1* %4
  %empty_42 = load i1* %5
  %empty_43 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_38, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_39, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_40, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_41, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_42, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_43, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_44 = trunc i11 %empty to i10
  ret i10 %empty_44
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

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
