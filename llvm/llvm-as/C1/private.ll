



define private void @foo() {

  ret void
}

@baz = private global i32 4

define i32 @bar() {




  call void @foo()
  %1 = load i32, i32* @baz, align 4
  ret i32 %1
}
