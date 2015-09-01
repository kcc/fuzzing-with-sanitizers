




define void @foo(i32 *%s, i32 %x) {
  %y = add nsw i32 %x, 42
  store i32 %y, i32* %s, align 4
  ret void
}
