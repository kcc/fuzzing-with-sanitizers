
target triple = "arm64-apple-macosx10"








define void @g() nounwind ssp {
entry:
  tail call void (i32, ...) @f(i32 0, i32 0) nounwind
  ret void
}

declare void @f(i32, ...)
