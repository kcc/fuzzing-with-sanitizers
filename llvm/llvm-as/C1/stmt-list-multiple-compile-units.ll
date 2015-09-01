



























































define i32 @test(i32 %a) nounwind uwtable ssp {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i32, i32* %a.addr, align 4, !dbg !17
  %call = call i32 @fn(i32 %0), !dbg !17
  ret i32 %call, !dbg !17
}

declare void @llvm.dbg.declare(metadata, metadata, metadata) nounwind readnone

define i32 @fn(i32 %a) nounwind uwtable ssp {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, i32* %a.addr, align 4, !dbg !21
  ret i32 %0, !dbg !21
}

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!25}
!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.3", isOptimized: false, emissionKind: 1, file: !23, enums: !1, retainedTypes: !1, subprograms: !3, globals: !1, imports:  !1)
!1 = !{}
!3 = !{!5}
!5 = distinct !DISubprogram(name: "test", line: 2, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 3, file: !23, scope: !6, type: !7, function: i32 (i32)* @test, variables: !1)
!6 = !DIFile(filename: "simple.c", directory: "/private/tmp")
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9}
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.3 (trunk 172862)", isOptimized: false, emissionKind: 1, file: !24, enums: !1, retainedTypes: !1, subprograms: !11, globals: !1, imports:  !1)
!11 = !{!13}
!13 = distinct !DISubprogram(name: "fn", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !24, scope: !14, type: !7, function: i32 (i32)* @fn, variables: !1)
!14 = !DIFile(filename: "simple2.c", directory: "/private/tmp")
!15 = !DILocalVariable(name: "a", line: 2, arg: 1, scope: !5, file: !6, type: !9)
!16 = !DILocation(line: 2, scope: !5)
!17 = !DILocation(line: 4, scope: !18)
!18 = distinct !DILexicalBlock(line: 3, column: 0, file: !23, scope: !5)
!19 = !DILocalVariable(name: "a", line: 1, arg: 1, scope: !13, file: !14, type: !9)
!20 = !DILocation(line: 1, scope: !13)
!21 = !DILocation(line: 2, scope: !22)
!22 = distinct !DILexicalBlock(line: 1, column: 0, file: !24, scope: !13)
!23 = !DIFile(filename: "simple.c", directory: "/private/tmp")
!24 = !DIFile(filename: "simple2.c", directory: "/private/tmp")
!25 = !{i32 1, !"Debug Info Version", i32 3}
