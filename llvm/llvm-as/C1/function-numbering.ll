









target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"












define void @foo() {
  ret void, !dbg !12
}

define void @bar() {
  
  ret void
}

define void @baz() {
  ret void, !dbg !13
}

!llvm.gcov = !{!14}
!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.6.0 ", isOptimized: false, emissionKind: 2, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: ".../llvm/test/Transforms/GCOVProfiling/function-numbering.ll", directory: "")
!2 = !{}
!3 = !{!4, !7, !8}
!4 = distinct !DISubprogram(name: "foo", line: 1, isLocal: false, isDefinition: true, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: void ()* @foo, variables: !2)
!5 = !DIFile(filename: ".../llvm/test/Transforms/GCOVProfiling/function-numbering.ll", directory: "")
!6 = !DISubroutineType(types: !2)
!7 = distinct !DISubprogram(name: "bar", line: 2, isLocal: false, isDefinition: true, isOptimized: false, scopeLine: 2, file: !1, scope: !5, type: !6, function: void ()* @bar, variables: !2)
!8 = distinct !DISubprogram(name: "baz", line: 3, isLocal: false, isDefinition: true, isOptimized: false, scopeLine: 3, file: !1, scope: !5, type: !6, function: void ()* @baz, variables: !2)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{!"clang version 3.6.0 "}
!12 = !DILocation(line: 1, column: 13, scope: !4)
!13 = !DILocation(line: 3, column: 13, scope: !8)
