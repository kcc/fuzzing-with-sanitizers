






target triple = "aarch64--linux-android"
declare i32 @foo(i32)


define i32 @main() {
entry:
  %call = tail call i32 @foo(i32 1)
  %call1 = tail call i32 @foo(i32 1)
  ret i32 0
}
