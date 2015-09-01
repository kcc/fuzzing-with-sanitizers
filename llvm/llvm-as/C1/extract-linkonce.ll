













@bar = linkonce global i32 42

define linkonce i32* @foo() {
  ret i32* @bar
}

define void @g() {
  call i32* @foo()
  ret void
}
