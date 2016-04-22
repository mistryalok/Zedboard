; ModuleID = '/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [9 x i8] c"AXI_CTRL\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str = internal constant [6 x i8] c"adder\00"

define void @adder(i32* %a, i32* %b, i32* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %a) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %c) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %c, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %b, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %a, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %a_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %a) nounwind
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32P(i32* %b) nounwind
  %c_assign = add nsw i32 %b_read, %a_read
  call void @_ssdm_op_Write.s_axilite.i32P(i32* %c, i32 %c_assign) nounwind
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak void @_ssdm_op_Write.s_axilite.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"a", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"b", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"c", metadata !4, metadata !"int", i32 0, i32 31}
