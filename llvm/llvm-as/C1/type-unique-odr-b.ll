




















%class.A = type { i32 }


define void @_ZN1A6getFooEv(%class.A* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.A*, align 8
  store %class.A* %this, %class.A** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %class.A** %this.addr, metadata !24, metadata !DIExpression()), !dbg !26
  %this1 = load %class.A*, %class.A** %this.addr
  ret void, !dbg !27
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1


define void @_Z1fv() #0 {
entry:
  call void @_ZL3barv(), !dbg !28
  ret void, !dbg !28
}


define internal void @_ZL3barv() #0 {
entry:
  ret void, !dbg !29
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !3, subprograms: !14, globals: !2, imports: !2)
!1 = !DIFile(filename: "<unknown>", directory: "")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "A", line: 2, size: 32, align: 32, file: !5, elements: !6, identifier: "_ZTS1A")
!5 = !DIFile(filename: "type-unique-odr-b.cpp", directory: "")
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "data", line: 3, size: 32, align: 32, flags: DIFlagPrivate, file: !5, scope: !"_ZTS1A", baseType: !8)
!8 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DISubprogram(name: "getFoo", linkageName: "_ZN1A6getFooEv", line: 5, isLocal: false, isDefinition: false, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !5, scope: !"_ZTS1A", type: !10)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer, baseType: !"_ZTS1A")
!14 = !{!15, !16, !20}
!15 = distinct !DISubprogram(name: "getFoo", linkageName: "_ZN1A6getFooEv", line: 8, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 8, file: !5, scope: !"_ZTS1A", type: !10, function: void (%class.A*)* @_ZN1A6getFooEv, declaration: !9, variables: !2)
!16 = distinct !DISubprogram(name: "f", linkageName: "_Z1fv", line: 11, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 11, file: !5, scope: !17, type: !18, function: void ()* @_Z1fv, variables: !2)
!17 = !DIFile(filename: "type-unique-odr-b.cpp", directory: "")
!18 = !DISubroutineType(types: !19)
!19 = !{null}
!20 = distinct !DISubprogram(name: "bar", linkageName: "_ZL3barv", line: 10, isLocal: true, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 10, file: !5, scope: !17, type: !18, function: void ()* @_ZL3barv, variables: !2)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 1, !"Debug Info Version", i32 3}
!23 = !{!"clang version 3.5.0 "}
!24 = !DILocalVariable(name: "this", arg: 1, flags: DIFlagArtificial | DIFlagObjectPointer, scope: !15, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, size: 64, align: 64, baseType: !"_ZTS1A")
!26 = !DILocation(line: 0, scope: !15)
!27 = !DILocation(line: 8, scope: !15)
!28 = !DILocation(line: 11, scope: !16)
!29 = !DILocation(line: 10, scope: !20)
