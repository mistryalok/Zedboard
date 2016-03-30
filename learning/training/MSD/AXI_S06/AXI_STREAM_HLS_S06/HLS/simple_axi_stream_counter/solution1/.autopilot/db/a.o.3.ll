; ModuleID = '/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]
@counterValue = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@str = internal constant [19 x i8] c"axi_stream_counter\00" ; [#uses=1 type=[19 x i8]*]

; [#uses=0]
define i32 @axi_stream_counter(i32* %counter) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %counter) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %counter}, i64 0, metadata !12), !dbg !21 ; [debug line = 5:29] [debug variable = counter]
  call void (...)* @_ssdm_op_SpecInterface(i32* %counter, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !22 ; [debug line = 6:1]
  %counterValue_load = load i32* @counterValue, align 4, !dbg !24 ; [#uses=1 type=i32] [debug line = 8:2]
  %counterValue_assign = add nsw i32 %counterValue_load, 1, !dbg !24 ; [#uses=2 type=i32] [debug line = 8:2]
  store i32 %counterValue_assign, i32* @counterValue, align 4, !dbg !24 ; [debug line = 8:2]
  call void @_ssdm_op_Write.axis.i32P(i32* %counter, i32 %counterValue_assign) nounwind, !dbg !25 ; [debug line = 9:2]
  ret i32 0, !dbg !26                             ; [debug line = 10:2]
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
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
!12 = metadata !{i32 786689, metadata !13, metadata !"counter", metadata !14, i32 16777221, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"axi_stream_counter", metadata !"axi_stream_counter", metadata !"_Z18axi_stream_counterPi", metadata !14, i32 5, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*)* @axi_stream_counter, null, null, metadata !19, i32 5} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"simple_axi_stream_counter/.settings/axi_stream.cpp", metadata !"/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 5, i32 29, metadata !13, null}
!22 = metadata !{i32 6, i32 1, metadata !23, null}
!23 = metadata !{i32 786443, metadata !13, i32 5, i32 39, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 8, i32 2, metadata !23, null}
!25 = metadata !{i32 9, i32 2, metadata !23, null}
!26 = metadata !{i32 10, i32 2, metadata !23, null}
