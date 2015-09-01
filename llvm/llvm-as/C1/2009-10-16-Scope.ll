




define void @bar() nounwind ssp {
entry:
  %count_ = alloca i32, align 4                   
  br label %do.body, !dbg !0

do.body:                                          
  call void @llvm.dbg.declare(metadata i32* %count_, metadata !4, metadata !DIExpression()), !dbg !DILocation(scope: !5)
  %conv = ptrtoint i32* %count_ to i32, !dbg !0   
  %call = call i32 @foo(i32 %conv) ssp, !dbg !0   
  br label %do.end, !dbg !0

do.end:                                           
  ret void, !dbg !7
}

declare void @llvm.dbg.declare(metadata, metadata, metadata) nounwind readnone

declare i32 @foo(i32) ssp

!0 = !DILocation(line: 5, column: 2, scope: !1)
!1 = distinct !DILexicalBlock(line: 1, column: 1, file: null, scope: !2)
!2 = distinct !DISubprogram(name: "bar", linkageName: "bar", line: 4, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scope: !3)
!3 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang 1.1", isOptimized: true, emissionKind: 0, file: !8, retainedTypes: !9)
!4 = !DILocalVariable(name: "count_", line: 5, scope: !5, file: !3, type: !6)
!5 = distinct !DILexicalBlock(line: 1, column: 1, file: null, scope: !1)
!6 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !DILocation(line: 6, column: 1, scope: !2)
!8 = !DIFile(filename: "genmodes.i", directory: "/Users/yash/Downloads")
!9 = !{i32 0}
