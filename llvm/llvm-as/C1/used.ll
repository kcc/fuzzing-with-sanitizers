

@llvm.used = appending global [1 x void ()*] [void ()* @f], section "llvm.metadata"

@llvm.compiler.used = appending global [1 x void ()*] [void ()* @g], section "llvm.metadata"


define void @f() {
  ret void
}


define void @g() {
  ret void
}


define void @h() {
  ret void
}
