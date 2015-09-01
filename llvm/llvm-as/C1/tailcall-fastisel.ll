



define i32 @foo1() {
entry:
  %call = tail call i32 @foo0()
  ret i32 %call
}

declare i32 @foo0()
