





















































define void @f2() #0 {
entry:
  call void (...) @f1(), !dbg !11
  call void (...) @f1(), !dbg !12
  ret void, !dbg !13
}

declare void @f1(...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, producer: "clang version 3.7.0 (trunk 226641)", isOptimized: false, emissionKind: 1, file: !1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "fn-call-line.c", directory: "/tmp/dbginfo")
!2 = !{}
!3 = !{!4}
!4 = distinct !DISubprogram(name: "f2", line: 2, isLocal: false, isDefinition: true, isOptimized: false, scopeLine: 2, file: !1, scope: !5, type: !6, function: void ()* @f2, variables: !2)
!5 = !DIFile(filename: "fn-call-line.c", directory: "/tmp/dbginfo")
!6 = !DISubroutineType(types: !7)
!7 = !{null}
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{!"clang version 3.7.0 (trunk 226641)"}
!11 = !DILocation(line: 3, column: 3, scope: !4)
!12 = !DILocation(line: 4, column: 3, scope: !4)
!13 = !DILocation(line: 5, column: 1, scope: !4)
