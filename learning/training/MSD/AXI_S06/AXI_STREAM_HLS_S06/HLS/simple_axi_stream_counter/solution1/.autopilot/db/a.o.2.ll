; ModuleID = '/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=3 type=[1 x i8]*]
@counterValue = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@str = internal constant [19 x i8] c"axi_stream_counter\00" ; [#uses=1 type=[19 x i8]*]

; [#uses=0]
define i32 @axi_stream_counter(i32* %counter) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %counter) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %counter}, i64 0, metadata !24), !dbg !25 ; [debug line = 5:29] [debug variable = counter]
  call void (...)* @_ssdm_op_SpecInterface(i32* %counter, [5 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !26 ; [debug line = 6:1]
  %counterValue.load = load i32* @counterValue, align 4, !dbg !28 ; [#uses=1 type=i32] [debug line = 8:2]
  %counterValue.assign = add nsw i32 %counterValue.load, 1, !dbg !28 ; [#uses=2 type=i32] [debug line = 8:2]
  store i32 %counterValue.assign, i32* @counterValue, align 4, !dbg !28 ; [debug line = 8:2]
  store i32 %counterValue.assign, i32* %counter, align 4, !dbg !29 ; [debug line = 9:2]
  ret i32 0, !dbg !30                             ; [debug line = 10:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS/simple_axi_stream_counter/solution1/.autopilot/db/axi_stream.pragma.2.cpp", metadata !"/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"counterValue", metadata !"counterValue", metadata !"", metadata !5, i32 7, metadata !8, i32 1, i32 1, i32* @counterValue} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"axi_stream_counter", metadata !"axi_stream_counter", metadata !"_Z18axi_stream_counterPi", metadata !5, i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*)* @axi_stream_counter, null, null, metadata !10, i32 5} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"simple_axi_stream_counter/.settings/axi_stream.cpp", metadata !"/home/alok/Vivado_Projects/MSadri/AXI_STREAM_HLS_S06/HLS", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"counter", metadata !16, metadata !"int", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 1}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"return", metadata !22, metadata !"int", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 1, i32 0}
!24 = metadata !{i32 786689, metadata !4, metadata !"counter", metadata !5, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 5, i32 29, metadata !4, null}
!26 = metadata !{i32 6, i32 1, metadata !27, null}
!27 = metadata !{i32 786443, metadata !4, i32 5, i32 39, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 8, i32 2, metadata !27, null}
!29 = metadata !{i32 9, i32 2, metadata !27, null}
!30 = metadata !{i32 10, i32 2, metadata !27, null}
