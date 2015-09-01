



























%struct.foo = type { i8, i32 }

@f = global %struct.foo zeroinitializer, align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !15}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.4 ", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !3, subprograms: !2, globals: !10, imports: !2)
!1 = !DIFile(filename: "data_member_location.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "foo", line: 1, size: 64, align: 32, file: !1, elements: !5, identifier: "_ZTS3foo")
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "c", line: 2, size: 8, align: 8, file: !1, scope: !"_ZTS3foo", baseType: !7)
!7 = !DIBasicType(tag: DW_TAG_base_type, name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "i", line: 3, size: 32, align: 32, offset: 32, file: !1, scope: !"_ZTS3foo", baseType: !9)
!9 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DIGlobalVariable(name: "f", line: 6, isLocal: false, isDefinition: true, scope: null, file: !12, type: !4, variable: %struct.foo* @f)
!12 = !DIFile(filename: "data_member_location.cpp", directory: "/tmp/dbginfo")
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{!"clang version 3.4 "}

!15 = !{i32 1, !"Debug Info Version", i32 3}
