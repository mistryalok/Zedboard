; ModuleID = '/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=4 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"AXI_CTRL\00", align 1 ; [#uses=4 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@str = internal constant [6 x i8] c"adder\00"     ; [#uses=1 type=[6 x i8]*]

; [#uses=0]
define void @adder(i32* %a, i32* %b, i32* %c) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %a) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %b) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %c) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !27), !dbg !28 ; [debug line = 3:17] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i32* %b}, i64 0, metadata !29), !dbg !30 ; [debug line = 3:24] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32* %c}, i64 0, metadata !31), !dbg !32 ; [debug line = 3:31] [debug variable = c]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !33 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %c, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !35 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %b, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !36 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %a, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @.str1, [1 x i8]* @.str2, [1 x i8]* @.str2) nounwind, !dbg !37 ; [debug line = 7:1]
  %a.load = load i32* %a, align 4, !dbg !38       ; [#uses=1 type=i32] [debug line = 9:2]
  %b.load = load i32* %b, align 4, !dbg !38       ; [#uses=1 type=i32] [debug line = 9:2]
  %c.assign = add nsw i32 %b.load, %a.load, !dbg !38 ; [#uses=1 type=i32] [debug line = 9:2]
  store i32 %c.assign, i32* %c, align 4, !dbg !38 ; [debug line = 9:2]
  ret void, !dbg !39                              ; [debug line = 11:1]
}

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/alok/githum/Zedboard/learning/training/my/adder/hls/adder/solution1/.autopilot/db/adder.pragma.2.cpp", metadata !"/home/alok/githum/Zedboard/learning/training/my/adder/hls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"adder", metadata !"adder", metadata !"_Z5adderPiS_S_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*, i32*)* @adder, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"adder/solution1/adder.cpp", metadata !"/home/alok/githum/Zedboard/learning/training/my/adder/hls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"a", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"b", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"c", metadata !17, metadata !"int", i32 0, i32 31}
!27 = metadata !{i32 786689, metadata !5, metadata !"a", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 3, i32 17, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 3, i32 24, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"c", metadata !6, i32 50331651, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 3, i32 31, metadata !5, null}
!33 = metadata !{i32 4, i32 1, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 3, i32 34, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 5, i32 1, metadata !34, null}
!36 = metadata !{i32 6, i32 1, metadata !34, null}
!37 = metadata !{i32 7, i32 1, metadata !34, null}
!38 = metadata !{i32 9, i32 2, metadata !34, null}
!39 = metadata !{i32 11, i32 1, metadata !34, null}
