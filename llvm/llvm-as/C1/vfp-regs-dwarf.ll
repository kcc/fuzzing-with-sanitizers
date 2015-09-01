











define void @stack_offsets() {













  call void asm sideeffect "", "~{d8},~{d9},~{d11},~{d13}"() #1
  ret void
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "tmp.c", directory: "/Users/tim/llvm/build")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "bar", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: void ()* @stack_offsets, variables: !2)
!5 = !DIFile(filename: "tmp.c", directory: "/Users/tim/llvm/build")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 1, !"Debug Info Version", i32 3}

