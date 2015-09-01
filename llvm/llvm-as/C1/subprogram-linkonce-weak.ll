

































define i32 @bar(i32 %a, i32 %b) {
entry:
  %sum = add i32 %a, %b, !dbg !DILocation(line: 2, scope: !4,
                                          inlinedAt: !DILocation(line: 12, scope: !3))
  ret i32 %sum, !dbg !DILocation(line: 13, scope: !3)
}

define linkonce i32 @foo(i32 %a, i32 %b) {
entry:
  %sum = add i32 %a, %b, !dbg !DILocation(line: 2, scope: !4)
  ret i32 %sum, !dbg !DILocation(line: 3, scope: !4)
}

!llvm.module.flags = !{!0}
!0 = !{i32 2, !"Debug Info Version", i32 3}




!llvm.dbg.cu = !{!1}




































!1 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, subprograms: !{!3, !4}, emissionKind: 1)
!2 = !DIFile(filename: "bar.c", directory: "/path/to/dir")
!3 = distinct !DISubprogram(file: !2, scope: !2, line: 11, name: "bar", function: i32 (i32, i32)* @bar, type: !5)
!4 = distinct !DISubprogram(file: !2, scope: !2, line: 1, name: "foo", function: i32 (i32, i32)* @foo, type: !5)
!5 = !DISubroutineType(types: !{})













































































