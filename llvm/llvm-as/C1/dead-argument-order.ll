


































%struct.S = type { i32 }


define i32 @_Z8function1Si(i32 %s.coerce, i32 %i) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata %struct.S* undef, metadata !14, metadata !DIExpression()), !dbg !20
  tail call void @llvm.dbg.value(metadata i32 %i, i64 0, metadata !15, metadata !DIExpression()), !dbg !20
  %add = add nsw i32 %i, %s.coerce, !dbg !20
  ret i32 %add, !dbg !20
}


declare void @llvm.dbg.declare(metadata, metadata, metadata) #1


declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: true, emissionKind: 1, file: !1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "dead-argument-order.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4}
!4 = !DICompositeType(tag: DW_TAG_structure_type, name: "S", line: 1, size: 32, align: 32, file: !1, elements: !5, identifier: "_ZTS1S")
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_member, name: "i", line: 1, size: 32, align: 32, file: !1, scope: !"_ZTS1S", baseType: !7)
!7 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = distinct !DISubprogram(name: "function", linkageName: "_Z8function1Si", line: 2, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: true, scopeLine: 2, file: !1, scope: !10, type: !11, function: i32 (i32, i32)* @_Z8function1Si, variables: !13)
!10 = !DIFile(filename: "dead-argument-order.cpp", directory: "/tmp/dbginfo")
!11 = !DISubroutineType(types: !12)
!12 = !{!7, !4, !7}
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "s", line: 2, arg: 1, scope: !9, file: !10, type: !"_ZTS1S")
!15 = !DILocalVariable(name: "i", line: 2, arg: 2, scope: !9, file: !10, type: !7)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.5.0 "}
!19 = !{%struct.S* undef}
!20 = !DILocation(line: 2, scope: !9)

