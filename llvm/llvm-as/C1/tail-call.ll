




declare i32 @callee(i32 %i)
declare extern_weak fastcc void @callee_weak()

define i32 @caller(i32 %i) {
entry:
  %r = tail call i32 @callee(i32 %i)
  ret i32 %r
}













define fastcc void @caller_weak() {


  tail call void @callee_weak()
  ret void
}
