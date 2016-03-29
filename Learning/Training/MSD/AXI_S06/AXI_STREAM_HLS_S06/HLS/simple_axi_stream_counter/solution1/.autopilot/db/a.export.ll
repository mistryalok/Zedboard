; ModuleID = '/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@counterValue = internal unnamed_addr global i32 0, align 4
@str = internal constant [19 x i8] c"axi_stream_counter\00"

define i32 @axi_stream_counter(i32* %counter) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %counter) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %counter, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %counterValue_load = load i32* @counterValue, align 4
  %counterValue_assign = add nsw i32 %counterValue_load, 1
  store i32 %counterValue_assign, i32* @counterValue, align 4
  call void @_ssdm_op_Write.axis.i32P(i32* %counter, i32 %counterValue_assign) nounwind
  ret i32 0
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

define weak void @_ssdm_op_Write.axis.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"counter", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"return", metadata !10, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 1, i32 0}
