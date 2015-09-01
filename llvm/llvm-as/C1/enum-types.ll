






















define void @_Z4topA2EA(i32 %sa) #0 {
entry:
  %sa.addr = alloca i32, align 4
  store i32 %sa, i32* %sa.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sa.addr, metadata !22, metadata !DIExpression()), !dbg !23
  ret void, !dbg !24
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1


define void @_Z4topB2EA(i32 %sa) #0 {
entry:
  %sa.addr = alloca i32, align 4
  store i32 %sa, i32* %sa.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sa.addr, metadata !25, metadata !DIExpression()), !dbg !26
  ret void, !dbg !27
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 (trunk 214102:214133) (llvm/trunk 214102:214132)", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !6, globals: !11, imports: !11)
!1 = !DIFile(filename: "a.cpp", directory: "")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EA", line: 1, size: 32, align: 32, file: !1, elements: !4, identifier: "_ZTS2EA")
!4 = !{!5}
!5 = !DIEnumerator(name: "EA_0", value: 0) 
!6 = !{!7}
!7 = distinct !DISubprogram(name: "topA", linkageName: "_Z4topA2EA", line: 5, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !1, scope: !8, type: !9, function: void (i32)* @_Z4topA2EA, variables: !11)
!8 = !DIFile(filename: "a.cpp", directory: "")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !"_ZTS2EA"}
!11 = !{}
!12 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 (trunk 214102:214133) (llvm/trunk 214102:214132)", isOptimized: false, emissionKind: 1, file: !13, enums: !14, retainedTypes: !14, subprograms: !16, globals: !11, imports: !11)
!13 = !DIFile(filename: "b.cpp", directory: "")
!14 = !{!15}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EA", line: 1, size: 32, align: 32, file: !13, elements: !4, identifier: "_ZTS2EA")
!16 = !{!17}
!17 = distinct !DISubprogram(name: "topB", linkageName: "_Z4topB2EA", line: 5, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 5, file: !13, scope: !18, type: !9, function: void (i32)* @_Z4topB2EA, variables: !11)
!18 = !DIFile(filename: "b.cpp", directory: "")
!19 = !{i32 2, !"Dwarf Version", i32 2}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{!"clang version 3.5.0 (trunk 214102:214133) (llvm/trunk 214102:214132)"}
!22 = !DILocalVariable(name: "sa", line: 5, arg: 1, scope: !7, file: !8, type: !"_ZTS2EA")
!23 = !DILocation(line: 5, column: 14, scope: !7)
!24 = !DILocation(line: 6, column: 1, scope: !7)
!25 = !DILocalVariable(name: "sa", line: 5, arg: 1, scope: !17, file: !18, type: !"_ZTS2EA")
!26 = !DILocation(line: 5, column: 14, scope: !17)
!27 = !DILocation(line: 6, column: 1, scope: !17)
