
define void @foo() {
entry:
  call void @llvm.dbg.value(
      metadata i8* undef,
      i64 0,
      metadata !DILocalVariable(scope: !1),
      metadata !DIExpression())





  call void @llvm.dbg.declare(
      metadata i8* undef,
      metadata !DILocalVariable(scope: !1),
      metadata !DIExpression())





  call void @llvm.dbg.value(
      metadata i8* undef,
      i64 0,
      metadata !DILocalVariable(scope: !1),
      metadata !DIExpression()),
    !dbg !DILocation(scope: !2)









  call void @llvm.dbg.declare(
      metadata i8* undef,
      metadata !DILocalVariable(scope: !1),
      metadata !DIExpression()),
    !dbg !DILocation(scope: !2)









  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata, metadata)
declare void @llvm.dbg.declare(metadata, metadata, metadata)

!llvm.module.flags = !{!0}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DISubprogram(name: "foo")
!2 = distinct !DISubprogram(name: "bar")
