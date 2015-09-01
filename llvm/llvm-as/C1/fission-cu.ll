




@a = common global i32 0, align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.3 (trunk 169021) (llvm/trunk 169020)", isOptimized: false, splitDebugFilename: "baz.dwo", emissionKind: 0, file: !8, enums: !1, retainedTypes: !1, subprograms: !1, globals: !3, imports:  !1)
!1 = !{}
!3 = !{!5}
!5 = !DIGlobalVariable(name: "a", line: 1, isLocal: false, isDefinition: true, scope: null, file: !6, type: !7, variable: i32* @a)
!6 = !DIFile(filename: "baz.c", directory: "/usr/local/google/home/echristo/tmp")
!7 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIFile(filename: "baz.c", directory: "/usr/local/google/home/echristo/tmp")
































































































!9 = !{i32 1, !"Debug Info Version", i32 3}
