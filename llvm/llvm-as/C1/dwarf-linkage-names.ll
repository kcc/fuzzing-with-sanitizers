







































@_ZN4test10global_varE = global i32 0, align 4


define i32 @_ZN4test3barEv() #0 {
entry:
  %0 = load i32, i32* @_ZN4test10global_varE, align 4, !dbg !14
  ret i32 %0, !dbg !15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.8.0 (trunk 244662)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !9)
!1 = !DIFile(filename: "dwarf-linkage-names.cpp", directory: "/home/probinson/projects/scratch")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "bar", linkageName: "_ZN4test3barEv", scope: !5, file: !1, line: 3, type: !6, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, function: i32 ()* @_ZN4test3barEv, variables: !2)
!5 = !DINamespace(name: "test", scope: null, file: !1, line: 1)
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DIGlobalVariable(name: "global_var", linkageName: "_ZN4test10global_varE", scope: !5, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, variable: i32* @_ZN4test10global_varE)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{!"clang version 3.8.0 (trunk 244662)"}
!14 = !DILocation(line: 3, column: 21, scope: !4)
!15 = !DILocation(line: 3, column: 14, scope: !4)
