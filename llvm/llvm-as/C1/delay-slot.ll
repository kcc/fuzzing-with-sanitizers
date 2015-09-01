























target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips--linux-gnu"


define i32 @foo(i32 %x) #0 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !12, metadata !DIExpression()), !dbg !13
  %tobool = icmp ne i32 %x, 0, !dbg !14
  br i1 %tobool, label %if.then, label %if.end, !dbg !14

if.then:                                          
  br label %return, !dbg !16

if.end:                                           
  br label %return, !dbg !17

return:                                           
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !18
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1


declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "test.c", directory: "/tmp")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "foo", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: i32 (i32)* @foo, variables: !2)
!5 = !DIFile(filename: "test.c", directory: "/tmp")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.5.0"}
!12 = !DILocalVariable(name: "x", line: 1, arg: 1, scope: !4, file: !5, type: !8)
!13 = !DILocation(line: 1, scope: !4)
!14 = !DILocation(line: 2, scope: !15)
!15 = distinct !DILexicalBlock(line: 2, column: 0, file: !1, scope: !4)
!16 = !DILocation(line: 3, scope: !15)
!17 = !DILocation(line: 4, scope: !4)
!18 = !DILocation(line: 5, scope: !4)
