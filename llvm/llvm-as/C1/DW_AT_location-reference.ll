

























































target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-n32"

@a = external global i32

define void @f() nounwind {
entry:
  %call = tail call i32 @g(i32 0, i32 0) nounwind, !dbg !8
  store i32 %call, i32* @a, align 4, !dbg !8
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5, metadata !DIExpression()), !dbg !13
  br label %while.body

while.body:                                       
  %x.017 = phi i32 [ 1, %entry ], [ %mul, %while.body ]
  %mul = mul nsw i32 %call, %x.017, !dbg !14
  %and = and i32 %mul, 1, !dbg !14
  %tobool = icmp eq i32 %and, 0, !dbg !14
  br i1 %tobool, label %while.end, label %while.body, !dbg !14

while.end:                                        
  tail call void @llvm.dbg.value(metadata i32 %mul, i64 0, metadata !5, metadata !DIExpression()), !dbg !14
  %call4 = tail call i32 @g(i32 %mul, i32 0) nounwind, !dbg !15
  store i32 %call4, i32* @a, align 4, !dbg !15
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5, metadata !DIExpression()), !dbg !17
  br label %while.body9

while.body9:                                      
  %x.116 = phi i32 [ 2, %while.end ], [ %mul12, %while.body9 ]
  %mul12 = mul nsw i32 %call4, %x.116, !dbg !18
  %and7 = and i32 %mul12, 2, !dbg !18
  %tobool8 = icmp eq i32 %and7, 0, !dbg !18
  br i1 %tobool8, label %while.end13, label %while.body9, !dbg !18

while.end13:                                      
  tail call void @llvm.dbg.value(metadata i32 %mul12, i64 0, metadata !5, metadata !DIExpression()), !dbg !18
  %call15 = tail call i32 @g(i32 0, i32 %mul12) nounwind, !dbg !19
  store i32 %call15, i32* @a, align 4, !dbg !19
  ret void, !dbg !20
}

declare i32 @g(i32, i32)

declare void @llvm.dbg.value(metadata, i64, metadata, metadata) nounwind readnone

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!24}

!0 = distinct !DISubprogram(name: "f", line: 4, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: true, scopeLine: 4, file: !23, scope: !1, type: !3, function: void ()* @f, variables: !22)
!1 = !DIFile(filename: "simple.c", directory: "/home/rengol01/temp/tests/dwarf/relocation")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.0 (trunk)", isOptimized: true, emissionKind: 1, file: !23, enums: !{}, retainedTypes: !{}, subprograms: !21, imports:  null)
!3 = !DISubroutineType(types: !4)
!4 = !{null}
!5 = !DILocalVariable(name: "x", line: 5, scope: !6, file: !1, type: !7)
!6 = distinct !DILexicalBlock(line: 4, column: 14, file: !23, scope: !0)
!7 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DILocation(line: 6, column: 3, scope: !6)
!12 = !{i32 1}
!13 = !DILocation(line: 7, column: 3, scope: !6)
!14 = !DILocation(line: 8, column: 3, scope: !6)
!15 = !DILocation(line: 9, column: 3, scope: !6)
!16 = !{i32 2}
!17 = !DILocation(line: 10, column: 3, scope: !6)
!18 = !DILocation(line: 11, column: 3, scope: !6)
!19 = !DILocation(line: 12, column: 3, scope: !6)
!20 = !DILocation(line: 13, column: 1, scope: !6)
!21 = !{!0}
!22 = !{!5}
!23 = !DIFile(filename: "simple.c", directory: "/home/rengol01/temp/tests/dwarf/relocation")
!24 = !{i32 1, !"Debug Info Version", i32 3}
