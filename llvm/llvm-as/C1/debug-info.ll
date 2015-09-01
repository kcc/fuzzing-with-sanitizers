



!named = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}




!0 = !DISubrange(count: 3)
!1 = !DISubrange(count: 3, lowerBound: 0)

!2 = !DISubrange(count: 3, lowerBound: 4)
!3 = !DISubrange(count: 3, lowerBound: -5)




!4 = !DIEnumerator(name: "seven", value: 7)
!5 = !DIEnumerator(name: "negeight", value: -8)
!6 = !DIEnumerator(name: "", value: 0)




!7 = !DIBasicType(tag: DW_TAG_base_type, name: "name", size: 1, align: 2, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!9 = !DIBasicType()
!10 = !DIBasicType(tag: DW_TAG_base_type, name: "", size: 0, align: 0, encoding: 0)





!11 = !DITemplateTypeParameter(type: !7)
!12 = !DIFile(filename: "path/to/file", directory: "/path/to/dir")
!13 = distinct !{}
!14 = !DIFile(filename: "", directory: "")


!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, align: 32)












!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "MyType", file: !12, line: 2, size: 32, align: 32, identifier: "MangledMyType")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "Base", scope: !16, file: !12, line: 3, size: 128, align: 32, offset: 64, flags: DIFlagPublic, elements: !18, runtimeLang: DW_LANG_C_plus_plus_11, vtableHolder: !17, templateParams: !20, identifier: "MangledBase")
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !17, file: !12, line: 4, baseType: !7, size: 32, align: 32, offset: 32, flags: DIFlagPublic)
!20 = !{!11}
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "Derived", scope: !16, file: !12, line: 3, baseType: !17, size: 128, align: 32, offset: 64, flags: DIFlagPublic, elements: !22, runtimeLang: DW_LANG_C_plus_plus_11, vtableHolder: !17, templateParams: !20, identifier: "MangledBase")
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !21, baseType: !17)
!24 = !DIDerivedType(tag: DW_TAG_ptr_to_member_type, baseType: !7, size: 32, align: 32, extraData: !17)
!25 = !DICompositeType(tag: DW_TAG_structure_type)
!26 = !DICompositeType(tag: DW_TAG_structure_type, runtimeLang: 6)




!27 = !{!7, !7}
!28 = !DISubroutineType(flags: DIFlagPublic | DIFlagStaticMember, types: !27)
!29 = !DISubroutineType(flags: 0, types: !27)
!30 = !DISubroutineType(types: !27)
