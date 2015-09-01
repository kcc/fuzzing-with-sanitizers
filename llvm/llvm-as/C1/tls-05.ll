






@x = thread_local global i32 0

define i32 @foo() {
  %val = load i32, i32* @x
  %inc = add nsw i32 %val, 1
  store i32 %inc, i32* @x
  ret i32 %val
}
