











define void @foo() {
entry:
  %a = add i32 0, 0, !dbg !3
  %b = add i32 0, 1, !dbg !3
  %c = add i32 0, 2, !dbg !4
  ret void, !dbg !4
}









!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C99, file: !DIFile(filename: "f", directory: "/d"),
                             subprograms: !{!2})
!2 = distinct !DISubprogram(name: "foo")
!3 = !DILocation(line: 1, scope: !2)
!4 = !DILocation(line: 2, scope: !2)
