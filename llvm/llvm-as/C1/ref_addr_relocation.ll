



















































%struct.foo = type { i8 }

@f = global %struct.foo zeroinitializer, align 1
@g = global %struct.foo zeroinitializer, align 1

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!14, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.4 (trunk 191799)", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !3, subprograms: !2, globals: !6, imports: !2)
!1 = !DIFile(filename: "tu1.cpp", directory: "/Users/manmanren/test-Nov/type_unique_air/ref_addr")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "foo", line: 1, size: 8, align: 8, file: !5, elements: !2, identifier: "_ZTS3foo")
!5 = !DIFile(filename: "./hdr.h", directory: "/Users/manmanren/test-Nov/type_unique_air/ref_addr")
!6 = !{!7}
!7 = !DIGlobalVariable(name: "f", line: 2, isLocal: false, isDefinition: true, scope: null, file: !8, type: !4, variable: %struct.foo* @f)
!8 = !DIFile(filename: "tu1.cpp", directory: "/Users/manmanren/test-Nov/type_unique_air/ref_addr")
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.4 (trunk 191799)", isOptimized: false, emissionKind: 0, file: !10, enums: !2, retainedTypes: !3, subprograms: !2, globals: !11, imports: !2)
!10 = !DIFile(filename: "tu2.cpp", directory: "/Users/manmanren/test-Nov/type_unique_air/ref_addr")
!11 = !{!12}
!12 = !DIGlobalVariable(name: "g", line: 2, isLocal: false, isDefinition: true, scope: null, file: !13, type: !4, variable: %struct.foo* @g)
!13 = !DIFile(filename: "tu2.cpp", directory: "/Users/manmanren/test-Nov/type_unique_air/ref_addr")
!14 = !{i32 2, !"Dwarf Version", i32 2}
!15 = !{i32 1, !"Debug Info Version", i32 3}
