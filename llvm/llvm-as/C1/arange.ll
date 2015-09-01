





















%struct.foo = type { i8 }

@f = global %struct.foo zeroinitializer, align 1
@i = external global i32

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5 ", isOptimized: false, emissionKind: 0, file: !1, enums: !2, retainedTypes: !3, subprograms: !2, globals: !9, imports: !2)
!1 = !DIFile(filename: "simple.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "foo<&i>", line: 3, size: 8, align: 8, file: !1, elements: !2, templateParams: !5, identifier: "_ZTS3fooIXadL_Z1iEEE")
!5 = !{!6}
!6 = !DITemplateValueParameter(tag: DW_TAG_template_value_parameter, name: "x", type: !7, value: i32* @i)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, baseType: !8)
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DIGlobalVariable(name: "f", line: 6, isLocal: false, isDefinition: true, scope: null, file: !11, type: !4, variable: %struct.foo* @f)
!11 = !DIFile(filename: "simple.cpp", directory: "/tmp/dbginfo")
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 1, !"Debug Info Version", i32 3}
!14 = !{!"clang version 3.5 "}
