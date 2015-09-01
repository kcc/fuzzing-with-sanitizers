



































































































define void @_Z2f1v() #0 {
entry:
  ret void, !dbg !13
}


define void @_Z2f2v() #0 section "__TEXT,__bar" {
entry:
  ret void, !dbg !14
}


define void @_Z2f3v() #1 {
entry:
  call void @_Z2f1v(), !dbg !15
  ret void, !dbg !16
}


define void @_Z2f4v() #0 {
entry:
  call void @_Z2f1v() #2, !dbg !17
  ret void, !dbg !19
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.6.0 ", isOptimized: false, emissionKind: 2, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "gmlt.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = distinct !DISubprogram(name: "f1", line: 1, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 1, file: !1, scope: !5, type: !6, function: void ()* @_Z2f1v, variables: !2)
!5 = !DIFile(filename: "gmlt.cpp", directory: "/tmp/dbginfo")
!6 = !DISubroutineType(types: !2)
!7 = distinct !DISubprogram(name: "f2", line: 2, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 2, file: !1, scope: !5, type: !6, function: void ()* @_Z2f2v, variables: !2)
!8 = distinct !DISubprogram(name: "f3", line: 3, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 3, file: !1, scope: !5, type: !6, function: void ()* @_Z2f3v, variables: !2)
!9 = distinct !DISubprogram(name: "f4", line: 4, isLocal: false, isDefinition: true, virtualIndex: 6, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 4, file: !1, scope: !5, type: !6, function: void ()* @_Z2f4v, variables: !2)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.6.0 "}
!13 = !DILocation(line: 1, column: 12, scope: !4)
!14 = !DILocation(line: 2, column: 53, scope: !7)
!15 = !DILocation(line: 3, column: 44, scope: !8)
!16 = !DILocation(line: 3, column: 50, scope: !8)
!17 = !DILocation(line: 3, column: 44, scope: !8, inlinedAt: !18)
!18 = !DILocation(line: 4, column: 13, scope: !9)
!19 = !DILocation(line: 4, column: 19, scope: !9)
