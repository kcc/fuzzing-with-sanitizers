









define void @test() {
  ret void, !dbg !8
}

!llvm.gcov = !{!9}
!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.3 (trunk 176994)", isOptimized: false, emissionKind: 0, file: !11, enums: !3, retainedTypes: !3, subprograms: !4, globals: !3)
!2 = !DIFile(filename: "version", directory: "/usr/local/google/home/nlewycky")
!3 = !{}
!4 = !{!5}
!5 = distinct !DISubprogram(name: "test", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !10, scope: !6, type: !7, function: void ()* @test, variables: !3)
!6 = !DIFile(filename: "<stdin>", directory: ".")
!7 = !DISubroutineType(types: !{null})
!8 = !DILocation(line: 1, scope: !5)

!10 = !DIFile(filename: "<stdin>", directory: ".")
!11 = !DIFile(filename: "version", directory: "/usr/local/google/home/nlewycky")
!12 = !{i32 1, !"Debug Info Version", i32 3}
