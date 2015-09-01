












@bar = weak_odr global i32 42

define weak_odr i32*  @foo() {
  ret i32* @bar
}

define void @g() {
  %c = call i32* @foo()
  ret void
}
