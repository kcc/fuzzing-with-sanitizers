





















































$_Z2f4v = comdat any

$_Z2f3v = comdat any

$_Z2f2v = comdat any


define void @_Z1fv() #0 {
entry:
  call void @_Z2f4v(), !dbg !13
  call void @_Z2f4v(), !dbg !13
  ret void, !dbg !14
}


define linkonce_odr void @_Z2f4v() #1 comdat {
entry:
  call void @_Z2f3v(), !dbg !15
  ret void, !dbg !16
}


define linkonce_odr void @_Z2f3v() #1 comdat {
entry:
  call void @_Z2f2v(), !dbg !17
  call void @_Z2f2v(), !dbg !17
  ret void, !dbg !18
}


define linkonce_odr void @_Z2f2v() #1 comdat {
entry:
  call void @_Z2f1v(), !dbg !19
  ret void, !dbg !20
}

declare void @_Z2f1v() #2

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline inlinehint uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.7.0 (trunk 226474) (llvm/trunk 226478)", isOptimized: false, emissionKind: 2, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "debug-info-duplicate-calls.cpp", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = distinct !DISubprogram(name: "f", line: 13, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 13, file: !1, scope: !5, type: !6, function: void ()* @_Z1fv, variables: !2)
!5 = !DIFile(filename: "debug-info-duplicate-calls.cpp", directory: "/tmp/dbginfo")
!6 = !DISubroutineType(types: !2)
!7 = distinct !DISubprogram(name: "f4", line: 10, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 10, file: !1, scope: !5, type: !6, function: void ()* @_Z2f4v, variables: !2)
!8 = distinct !DISubprogram(name: "f3", line: 7, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 7, file: !1, scope: !5, type: !6, function: void ()* @_Z2f3v, variables: !2)
!9 = distinct !DISubprogram(name: "f2", line: 4, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: false, scopeLine: 4, file: !1, scope: !5, type: !6, function: void ()* @_Z2f2v, variables: !2)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{!"clang version 3.7.0 (trunk 226474) (llvm/trunk 226478)"}
!13 = !DILocation(line: 14, column: 3, scope: !4)
!14 = !DILocation(line: 15, column: 1, scope: !4)
!15 = !DILocation(line: 11, column: 3, scope: !7)
!16 = !DILocation(line: 12, column: 1, scope: !7)
!17 = !DILocation(line: 8, column: 3, scope: !8)
!18 = !DILocation(line: 9, column: 1, scope: !8)
!19 = !DILocation(line: 5, column: 3, scope: !9)
!20 = !DILocation(line: 6, column: 1, scope: !9)
