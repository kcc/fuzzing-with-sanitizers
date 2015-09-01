


declare void @_Z3foov()


!named = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9}

!0 = !{null}
!1 = distinct !DICompositeType(tag: DW_TAG_structure_type)
!2 = !DIFile(filename: "path/to/file", directory: "/path/to/dir")
!3 = !DISubroutineType(types: !0)
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type)
!5 = distinct !{}
!6 = distinct !{}


!7 = distinct !DISubprogram()


!8 = !DISubprogram(isDefinition: false)


!9 = distinct !DISubprogram(name: "foo", linkageName: "_Zfoov", scope: !1,
                            file: !2, line: 7, type: !3, isLocal: true,
                            isDefinition: true, scopeLine: 8, containingType: !4,
                            virtuality: DW_VIRTUALITY_pure_virtual, virtualIndex: 10,
                            flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_Z3foov,
                            templateParams: !5, declaration: !8, variables: !6)
