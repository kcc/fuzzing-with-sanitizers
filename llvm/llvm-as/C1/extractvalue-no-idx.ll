



define void @f1() {
  extractvalue <{ i32, i32 }> undef, !dbg !0
  ret void
}
