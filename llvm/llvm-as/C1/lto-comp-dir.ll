









































define void @_Z4funcv() #0 {
entry:
  ret void, !dbg !19
}


define i32 @main() #1 {
entry:
  call void @_Z4funcv(), !dbg !20
  ret i32 0, !dbg !21
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "a.cpp", directory: "/tmp/dbginfo/a")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "func", linkageName: "_Z4funcv", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: void ()* @_Z4funcv, variables: !2)
!5 = !DIFile(filename: "a.cpp", directory: "/tmp/dbginfo/a")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5.0 ", isOptimized: false, emissionKind: 1, file: !9, enums: !2, retainedTypes: !2, subprograms: !10, globals: !2, imports: !2)
!9 = !DIFile(filename: "b.cpp", directory: "/tmp/dbginfo/b")
!10 = !{!11}
!11 = distinct !DISubprogram(name: "main", line: 2, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 2, file: !9, scope: !12, type: !13, function: i32 ()* @main, variables: !2)
!12 = !DIFile(filename: "b.cpp", directory: "/tmp/dbginfo/b")
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 1, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.5.0 "}
!19 = !DILocation(line: 2, scope: !4)
!20 = !DILocation(line: 3, scope: !11)
!21 = !DILocation(line: 4, scope: !11)

