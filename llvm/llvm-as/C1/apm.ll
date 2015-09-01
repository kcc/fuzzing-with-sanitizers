












define void @foo(i8* %P, i32 %E, i32 %H) nounwind {
entry:
  tail call void @llvm.x86.sse3.monitor(i8* %P, i32 %E, i32 %H)
  ret void
}

declare void @llvm.x86.sse3.monitor(i8*, i32, i32) nounwind








define void @bar(i32 %E, i32 %H) nounwind {
entry:
  tail call void @llvm.x86.sse3.mwait(i32 %E, i32 %H)
  ret void
}

declare void @llvm.x86.sse3.mwait(i32, i32) nounwind
