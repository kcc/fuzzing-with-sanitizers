

define void @foo(i32 %v) {
entry:

  call void @llvm.bar(metadata !{i32 %v})
  ret void
}

declare void @llvm.bar(metadata)
