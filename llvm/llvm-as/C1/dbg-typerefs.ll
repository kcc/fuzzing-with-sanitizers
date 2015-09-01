


!llvm.module.flags = !{!0}
!0 = !{i32 2, !"Debug Info Version", i32 3}



!typerefs = !{!1, !2, !3, !4}
!1 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 32, align: 32, baseType: !"1.good")
!2 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 32, align: 32, baseType: !"2.bad")
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 32, align: 32, baseType: !"3.good")
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 32, align: 32, baseType: !"0.bad")


!llvm.dbg.cu = !{!5}
!5 = distinct !DICompileUnit(file: !6, language: DW_LANG_C99, retainedTypes: !7)
!6 = !DIFile(filename: "file.c", directory: "/path/to/dir")
!7 = !{!8, !9}
!8 = !DICompositeType(tag: DW_TAG_structure_type, identifier: "1.good")
!9 = !DICompositeType(tag: DW_TAG_structure_type, identifier: "3.good")











