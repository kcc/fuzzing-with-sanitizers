












@x = global i64 -1, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.4", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !3, subprograms: !2, globals: !5, imports: !2)
!1 = !DIFile(filename: "foo.cpp", directory: ".")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "Foo", line: 1, flags: DIFlagFwdDecl, file: !1, identifier: "_ZTS3Foo")
!5 = !{!6}
!6 = !DIGlobalVariable(name: "x", line: 4, isLocal: false, isDefinition: true, scope: null, file: !7, type: !8, variable: i64* @x)
!7 = !DIFile(filename: "foo.cpp", directory: ".")
!8 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !9, extraData: !"_ZTS3Foo")
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{i32 2, !"Dwarf Version", i32 2}
!11 = !{i32 1, !"Debug Info Version", i32 3}
