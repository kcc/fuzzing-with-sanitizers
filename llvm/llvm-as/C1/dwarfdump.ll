



















define i32 @main() nounwind {
  ret i32 0, !dbg !8
}

attributes #0 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.3 ", isOptimized: false, emissionKind: 0, file: !9, enums: !1, retainedTypes: !1, subprograms: !2, globals: !1, imports:  !1)
!1 = !{}
!2 = !{!3}
!3 = distinct !DISubprogram(name: "main", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 1, file: !9, scope: !4, type: !5, function: i32 ()* @main, variables: !1)
!4 = !DIFile(filename: "tmp.c", directory: "/home/tim/llvm/build")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DILocation(line: 2, scope: !3)
!9 = !DIFile(filename: "tmp.c", directory: "/home/tim/llvm/build")
!10 = !{i32 1, !"Debug Info Version", i32 3}
