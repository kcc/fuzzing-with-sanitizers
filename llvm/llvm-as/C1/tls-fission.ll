


















@tls = thread_local global i32 0, align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.4 ", isOptimized: false, splitDebugFilename: "tls.dwo", emissionKind: 0, file: !1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "tls.cpp", directory: "/tmp")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "tls", line: 1, isLocal: false, isDefinition: true, scope: null, file: !5, type: !6, variable: i32* @tls)
!5 = !DIFile(filename: "tls.cpp", directory: "/tmp")
!6 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 3}
!8 = !{i32 1, !"Debug Info Version", i32 3}
