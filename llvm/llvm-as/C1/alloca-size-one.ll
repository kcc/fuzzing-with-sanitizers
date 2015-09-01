


define void @foo() {
entry:


  %alloc32 = alloca i1, i32 1, align 8
  %alloc64 = alloca i1, i64 1, align 8
  unreachable
}
